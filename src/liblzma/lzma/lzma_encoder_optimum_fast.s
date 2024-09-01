	.text
	.file	"lzma_encoder_optimum_fast.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/lzma/lzma_encoder_optimum_fast.c" md5 0x2f7decb644128e554449599785f4e3e7
	.file	1 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.file	2 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	3 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	4 "liblzma/rangecoder" "range_encoder.h" md5 0xe02ad9079871d268a82b8ebf2e7d385d
	.file	5 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.file	6 "liblzma/rangecoder" "range_common.h" md5 0x7d3e93a1bf35640522f499de026cfdad
	.file	7 "liblzma/lzma" "lzma_common.h" md5 0xce364754aa91e57f603599f25328df33
	.globl	lzma_lzma_optimum_fast          # -- Begin function lzma_lzma_optimum_fast
	.p2align	4, 0x90
	.type	lzma_lzma_optimum_fast,@function
lzma_lzma_optimum_fast:                 # @lzma_lzma_optimum_fast
.Lfunc_begin0:
	.loc	0 22 0                          # liblzma/lzma/lzma_encoder_optimum_fast.c:22:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rsi
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- $rdx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- $rcx
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
	movq	%rdx, %rbp
	movq	%rsi, %rbx
	movq	%rdi, %r13
.Ltmp0:
	#DEBUG_VALUE: lzma_lzma_optimum_fast:coder <- undef
	.loc	0 24 32 prologue_end            # liblzma/lzma/lzma_encoder_optimum_fast.c:24:32
	movl	96(%rsi), %r15d
.Ltmp1:
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- $r15d
	.loc	0 28 21                         # liblzma/lzma/lzma_encoder_optimum_fast.c:28:21
	cmpl	$0, 28(%rsi)
.Ltmp2:
	.loc	0 28 6 is_stmt 0                # liblzma/lzma/lzma_encoder_optimum_fast.c:28:6
	je	.LBB0_1
.Ltmp3:
# %bb.2:                                # %if.else
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- $rbp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- $r15d
	.loc	0 33 26 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:33:26
	movl	2948(%r13), %eax
	.loc	0 32 21                         # liblzma/lzma/lzma_encoder_optimum_fast.c:32:21
	movl	2952(%r13), %r12d
.Ltmp4:
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	.loc	0 33 17                         # liblzma/lzma/lzma_encoder_optimum_fast.c:33:17
	movl	%eax, 28(%rsp)
	jmp	.LBB0_3
.Ltmp5:
.LBB0_1:                                # %if.then
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- $rbp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- $r15d
	.loc	0 29 49                         # liblzma/lzma/lzma_encoder_optimum_fast.c:29:49
	leaq	756(%r13), %rdx
	leaq	28(%rsp), %rsi
	.loc	0 29 14 is_stmt 0               # liblzma/lzma/lzma_encoder_optimum_fast.c:29:14
	movq	%rbx, %rdi
	movq	%rcx, %r14
.Ltmp6:
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- $r14
	callq	lzma_mf_find@PLT
.Ltmp7:
	.loc	0 0 14                          # liblzma/lzma/lzma_encoder_optimum_fast.c:0:14
	movq	%r14, %rcx
	.loc	0 29 14                         # liblzma/lzma/lzma_encoder_optimum_fast.c:29:14
	movl	%eax, %r12d
.Ltmp8:
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
.LBB0_3:                                # %if.end
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- $rbp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- $r15d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	.loc	0 36 23 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:36:23
	movl	24(%rbx), %r14d
.Ltmp9:
	#DEBUG_VALUE: mf_ptr:mf <- undef
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- undef
	.loc	0 37 29                         # liblzma/lzma/lzma_encoder_optimum_fast.c:37:29
	movl	36(%rbx), %eax
.Ltmp10:
	#DEBUG_VALUE: mf_avail:mf <- undef
	.file	8 "liblzma/lz" "lz_encoder.h" md5 0x780f78e6e21a3ca52f57df68bfdc6f53
	.loc	8 232 23                        # liblzma/lz/lz_encoder.h:232:23
	subl	%r14d, %eax
.Ltmp11:
	.loc	0 37 29                         # liblzma/lzma/lzma_encoder_optimum_fast.c:37:29
	incl	%eax
	cmpl	$273, %eax                      # imm = 0x111
	movl	$273, %r11d                     # imm = 0x111
	cmovbl	%eax, %r11d
.Ltmp12:
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf_avail <- $r11d
	.loc	0 39 16                         # liblzma/lzma/lzma_encoder_optimum_fast.c:39:16
	cmpl	$2, %eax
.Ltmp13:
	.loc	0 39 6 is_stmt 0                # liblzma/lzma/lzma_encoder_optimum_fast.c:39:6
	jae	.LBB0_4
.Ltmp14:
# %bb.53:                               # %if.then9
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- $rbp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- $r15d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf_avail <- $r11d
	.loc	0 41 13 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:41:13
	movl	$-1, (%rbp)
	.loc	0 42 12                         # liblzma/lzma/lzma_encoder_optimum_fast.c:42:12
	movl	$1, (%rcx)
.Ltmp15:
	.loc	0 126 3                         # liblzma/lzma/lzma_encoder_optimum_fast.c:126:3
	jmp	.LBB0_119
.Ltmp16:
.LBB0_4:                                # %for.cond.preheader
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- $rbp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- $r15d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf_avail <- $r11d
	.loc	0 0 3 is_stmt 0                 # liblzma/lzma/lzma_encoder_optimum_fast.c:0:3
	movl	%r15d, 16(%rsp)                 # 4-byte Spill
.Ltmp17:
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	movq	(%rbx), %rdx
	leaq	(%rdx,%r14), %r15
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	addq	%r14, %rdx
	decq	%rdx
.Ltmp18:
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $rdx
	movzbl	(%rdx), %esi
.Ltmp19:
	#DEBUG_VALUE: i <- 0
	.loc	0 52 41 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:52:41
	movl	740(%r13), %r9d
	.loc	0 52 39 is_stmt 0               # liblzma/lzma/lzma_encoder_optimum_fast.c:52:39
	movq	%r9, %r8
	negq	%r8
.Ltmp20:
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- 0
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- 0
	.loc	0 52 56                         # liblzma/lzma/lzma_encoder_optimum_fast.c:52:56
	movq	%r9, %rdi
	notq	%rdi
.Ltmp21:
	#DEBUG_VALUE: buf_back <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $rdi, $rdx
	.loc	0 56 7 is_stmt 1                # liblzma/lzma/lzma_encoder_optimum_fast.c:56:7
	movzbl	(%rdi,%rdx), %r10d
	cmpl	$2, %eax
	movq	%r14, 40(%rsp)                  # 8-byte Spill
	jne	.LBB0_5
.Ltmp22:
# %bb.39:                               # %for.cond.preheader.split
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- $rbp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $rdx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf_avail <- $r11d
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- 0
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- 0
	#DEBUG_VALUE: buf_back <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $rdi, $rdx
	.loc	0 0 7 is_stmt 0                 # liblzma/lzma/lzma_encoder_optimum_fast.c:0:7
	cmpl	$2, 16(%rsp)                    # 4-byte Folded Reload
	#DEBUG_VALUE: i <- 0
.Ltmp23:
	#DEBUG_VALUE: buf_back <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] undef
	jbe	.LBB0_40
.Ltmp24:
# %bb.43:                               # %for.body.us445.preheader
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- $rbp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $rdx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf_avail <- $r11d
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- 0
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- 0
	xorl	%r11d, %r11d
.Ltmp25:
	movl	$1, %edi
	movl	$0, %r14d
	.loc	0 56 7                          # liblzma/lzma/lzma_encoder_optimum_fast.c:56:7
	cmpb	%r10b, %sil
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- 0
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- 0
	jne	.LBB0_45
.Ltmp26:
# %bb.44:                               # %lor.lhs.false.us456
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- $rbp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $rdx
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- 0
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- 0
	movzbl	(%r15), %r9d
	xorl	%r14d, %r14d
	xorl	%edi, %edi
	cmpb	-1(%r15,%r8), %r9b
	sete	%r14b
	setne	%dil
.Ltmp27:
	.loc	0 56 7                          # liblzma/lzma/lzma_encoder_optimum_fast.c:56:7
	addl	%r14d, %r14d
.Ltmp28:
.LBB0_45:                               # %for.inc48.us462
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- $rbp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $rdx
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- 0
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- 0
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- $r14d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- 0
	#DEBUG_VALUE: i <- 1
	.loc	0 52 41 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:52:41
	movl	744(%r13), %r8d
	.loc	0 52 56 is_stmt 0               # liblzma/lzma/lzma_encoder_optimum_fast.c:52:56
	movq	%r8, %r9
	notq	%r9
.Ltmp29:
	#DEBUG_VALUE: buf_back <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $r9, $rdx
	.loc	0 56 7 is_stmt 1                # liblzma/lzma/lzma_encoder_optimum_fast.c:56:7
	cmpb	(%r9,%rdx), %sil
	jne	.LBB0_47
.Ltmp30:
# %bb.46:                               # %lor.lhs.false.us456.1
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- $rbp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $rdx
	#DEBUG_VALUE: i <- 1
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- $r14d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- 0
	#DEBUG_VALUE: buf_back <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $r9, $rdx
	.loc	0 0 0 is_stmt 0                 # liblzma/lzma/lzma_encoder_optimum_fast.c:0:0
	negq	%r8
.Ltmp31:
	.loc	0 56 7                          # liblzma/lzma/lzma_encoder_optimum_fast.c:56:7
	movzbl	(%r15), %r9d
.Ltmp32:
	.loc	0 0 7                           # liblzma/lzma/lzma_encoder_optimum_fast.c:0:7
	xorl	%r11d, %r11d
	.loc	0 56 7                          # liblzma/lzma/lzma_encoder_optimum_fast.c:56:7
	cmpb	-1(%r15,%r8), %r9b
.Ltmp33:
	.loc	0 56 7                          # liblzma/lzma/lzma_encoder_optimum_fast.c:56:7
	cmovel	%edi, %r11d
	movl	$2, %edi
	cmovel	%edi, %r14d
.Ltmp34:
.LBB0_47:                               # %for.inc48.us462.1
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- $rbp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $rdx
	#DEBUG_VALUE: i <- 1
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- 0
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- $r14d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- $r11d
	#DEBUG_VALUE: i <- 2
	.loc	0 52 41 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:52:41
	movl	748(%r13), %edi
	.loc	0 52 56 is_stmt 0               # liblzma/lzma/lzma_encoder_optimum_fast.c:52:56
	movq	%rdi, %r8
	notq	%r8
.Ltmp35:
	#DEBUG_VALUE: buf_back <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $r8, $rdx
	.loc	0 56 7 is_stmt 1                # liblzma/lzma/lzma_encoder_optimum_fast.c:56:7
	cmpb	(%r8,%rdx), %sil
	jne	.LBB0_50
.Ltmp36:
# %bb.48:                               # %lor.lhs.false.us456.2
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- $rbp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $rdx
	#DEBUG_VALUE: i <- 2
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- $r14d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- $r11d
	#DEBUG_VALUE: buf_back <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $r8, $rdx
	.loc	0 0 0 is_stmt 0                 # liblzma/lzma/lzma_encoder_optimum_fast.c:0:0
	negq	%rdi
.Ltmp37:
	.loc	0 56 7                          # liblzma/lzma/lzma_encoder_optimum_fast.c:56:7
	movzbl	(%r15), %r8d
.Ltmp38:
	cmpb	-1(%r15,%rdi), %r8b
.Ltmp39:
	.loc	0 56 7                          # liblzma/lzma/lzma_encoder_optimum_fast.c:56:7
	jne	.LBB0_50
.Ltmp40:
# %bb.49:                               # %for.cond27.preheader.us467.2
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- $rbp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $rdx
	#DEBUG_VALUE: i <- 2
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- $r14d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- $r11d
	#DEBUG_VALUE: len <- 2
	.loc	0 74 11 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:74:11
	cmpl	$2, %r14d
	movl	$2, %r14d
.Ltmp41:
	.loc	0 74 7 is_stmt 0                # liblzma/lzma/lzma_encoder_optimum_fast.c:74:7
	cmovbl	%r14d, %r11d
.Ltmp42:
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- $r11d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- 2
.LBB0_50:                               # %for.inc48.us462.2
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- $rbp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $rdx
	#DEBUG_VALUE: i <- 2
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- $r11d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- $r14d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- $r11d
	#DEBUG_VALUE: i <- 3
	.loc	0 52 41 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:52:41
	movl	752(%r13), %edi
	.loc	0 52 56 is_stmt 0               # liblzma/lzma/lzma_encoder_optimum_fast.c:52:56
	movq	%rdi, %r8
	notq	%r8
.Ltmp43:
	#DEBUG_VALUE: buf_back <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $r8, $rdx
	.loc	0 56 7 is_stmt 1                # liblzma/lzma/lzma_encoder_optimum_fast.c:56:7
	cmpb	(%r8,%rdx), %sil
	jne	.LBB0_61
.Ltmp44:
# %bb.51:                               # %lor.lhs.false.us456.3
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- $rbp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $rdx
	#DEBUG_VALUE: i <- 3
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- $r14d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- $r11d
	#DEBUG_VALUE: buf_back <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $r8, $rdx
	.loc	0 0 0 is_stmt 0                 # liblzma/lzma/lzma_encoder_optimum_fast.c:0:0
	negq	%rdi
.Ltmp45:
	.loc	0 56 7                          # liblzma/lzma/lzma_encoder_optimum_fast.c:56:7
	movzbl	(%r15), %edx
.Ltmp46:
	cmpb	-1(%r15,%rdi), %dl
.Ltmp47:
	.loc	0 56 7                          # liblzma/lzma/lzma_encoder_optimum_fast.c:56:7
	jne	.LBB0_61
.Ltmp48:
# %bb.52:                               # %for.cond27.preheader.us467.3
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- $rbp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: i <- 3
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- $r14d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- $r11d
	#DEBUG_VALUE: len <- 2
	.loc	0 74 11 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:74:11
	cmpl	$2, %r14d
	movl	$3, %edx
.Ltmp49:
	.loc	0 74 7 is_stmt 0                # liblzma/lzma/lzma_encoder_optimum_fast.c:74:7
	cmovbl	%edx, %r11d
.Ltmp50:
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- $r11d
	.loc	0 0 7                           # liblzma/lzma/lzma_encoder_optimum_fast.c:0:7
	movl	$2, %r14d
.Ltmp51:
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- 2
	.loc	0 78 2 is_stmt 1                # liblzma/lzma/lzma_encoder_optimum_fast.c:78:2
	jmp	.LBB0_61
.Ltmp52:
.LBB0_5:                                # %for.body.us.preheader
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- $rbp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $rdx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf_avail <- $r11d
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- 0
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- 0
	#DEBUG_VALUE: buf_back <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $rdi, $rdx
	.loc	0 0 2 is_stmt 0                 # liblzma/lzma/lzma_encoder_optimum_fast.c:0:2
	movq	%rbp, 8(%rsp)                   # 8-byte Spill
.Ltmp53:
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	.loc	0 50 2 is_stmt 1                # liblzma/lzma/lzma_encoder_optimum_fast.c:50:2
	cmpl	$4, %r11d
	movl	$3, %edi
	cmovael	%r11d, %edi
	xorl	%r11d, %r11d
.Ltmp54:
	.loc	0 0 2 is_stmt 0                 # liblzma/lzma/lzma_encoder_optimum_fast.c:0:2
	movl	$0, %r14d
.Ltmp55:
	.loc	0 56 7 is_stmt 1                # liblzma/lzma/lzma_encoder_optimum_fast.c:56:7
	cmpb	%r10b, %sil
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- 0
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- 0
	jne	.LBB0_10
.Ltmp56:
# %bb.6:                                # %lor.lhs.false.us
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $rdx
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- 0
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- 0
	movzbl	(%r15), %r10d
	movl	$0, %r14d
	cmpb	-1(%r15,%r8), %r10b
.Ltmp57:
	.loc	0 56 7 is_stmt 0                # liblzma/lzma/lzma_encoder_optimum_fast.c:56:7
	jne	.LBB0_10
.Ltmp58:
# %bb.7:                                # %land.rhs.us.preheader
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $rdx
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- 0
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- 0
	.loc	0 62 21 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:62:21
	movl	%edi, %r8d
	movq	40(%rsp), %r10                  # 8-byte Reload
.Ltmp59:
	.loc	0 62 3 is_stmt 0                # liblzma/lzma/lzma_encoder_optimum_fast.c:62:3
	subq	%r9, %r10
	addq	32(%rsp), %r10                  # 8-byte Folded Reload
	movl	$2, %r14d
.Ltmp60:
	.p2align	4, 0x90
.LBB0_8:                                # %land.rhs.us
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $rdx
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- 0
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- 0
	#DEBUG_VALUE: len <- $r14
	.loc	0 63 8 is_stmt 1                # liblzma/lzma/lzma_encoder_optimum_fast.c:63:8
	movzbl	-1(%r15,%r14), %r9d
	.loc	0 63 17 is_stmt 0               # liblzma/lzma/lzma_encoder_optimum_fast.c:63:17
	cmpb	-2(%r10,%r14), %r9b
.Ltmp61:
	.loc	0 62 3 is_stmt 1                # liblzma/lzma/lzma_encoder_optimum_fast.c:62:3
	jne	.LBB0_9
.Ltmp62:
# %bb.37:                               # %for.inc.us
                                        #   in Loop: Header=BB0_8 Depth=1
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $rdx
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- 0
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- 0
	#DEBUG_VALUE: len <- $r14
	.loc	0 63 35                         # liblzma/lzma/lzma_encoder_optimum_fast.c:63:35
	incq	%r14
.Ltmp63:
	#DEBUG_VALUE: len <- $r14
	.loc	0 62 21                         # liblzma/lzma/lzma_encoder_optimum_fast.c:62:21
	cmpq	%r14, %r8
	.loc	0 63 5                          # liblzma/lzma/lzma_encoder_optimum_fast.c:63:5
	jne	.LBB0_8
.Ltmp64:
# %bb.38:
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $rdx
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- 0
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- 0
	#DEBUG_VALUE: len <- $r14
	.loc	0 0 5 is_stmt 0                 # liblzma/lzma/lzma_encoder_optimum_fast.c:0:5
	movl	%edi, %r14d
.Ltmp65:
.LBB0_9:                                # %for.end.us
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $rdx
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- 0
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- 0
	xorl	%r8d, %r8d
	movl	%r14d, %ebp
.Ltmp66:
	.loc	0 67 11 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:67:11
	cmpl	16(%rsp), %r14d                 # 4-byte Folded Reload
.Ltmp67:
	.loc	0 67 7 is_stmt 0                # liblzma/lzma/lzma_encoder_optimum_fast.c:67:7
	jae	.LBB0_34
.Ltmp68:
.LBB0_10:                               # %for.inc48.us
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $rdx
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- 0
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- 0
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- $r14d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- 0
	#DEBUG_VALUE: i <- 1
	.loc	0 52 41 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:52:41
	movl	744(%r13), %r9d
	.loc	0 52 56 is_stmt 0               # liblzma/lzma/lzma_encoder_optimum_fast.c:52:56
	movq	%r9, %r8
	notq	%r8
.Ltmp69:
	#DEBUG_VALUE: buf_back <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $r8, $rdx
	.loc	0 56 7 is_stmt 1                # liblzma/lzma/lzma_encoder_optimum_fast.c:56:7
	cmpb	(%r8,%rdx), %sil
	jne	.LBB0_18
.Ltmp70:
# %bb.11:                               # %lor.lhs.false.us.1
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $rdx
	#DEBUG_VALUE: i <- 1
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- $r14d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- 0
	#DEBUG_VALUE: buf_back <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $r8, $rdx
	.loc	0 0 0 is_stmt 0                 # liblzma/lzma/lzma_encoder_optimum_fast.c:0:0
	movq	%r9, %r8
.Ltmp71:
	negq	%r8
.Ltmp72:
	.loc	0 56 7                          # liblzma/lzma/lzma_encoder_optimum_fast.c:56:7
	movzbl	(%r15), %r10d
	cmpb	-1(%r15,%r8), %r10b
.Ltmp73:
	.loc	0 56 7                          # liblzma/lzma/lzma_encoder_optimum_fast.c:56:7
	jne	.LBB0_18
.Ltmp74:
# %bb.12:                               # %land.rhs.us.preheader.1
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $rdx
	#DEBUG_VALUE: i <- 1
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- $r14d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- 0
	.loc	0 62 21 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:62:21
	movl	%edi, %r10d
	movq	40(%rsp), %r8                   # 8-byte Reload
.Ltmp75:
	.loc	0 62 3 is_stmt 0                # liblzma/lzma/lzma_encoder_optimum_fast.c:62:3
	subq	%r9, %r8
	addq	32(%rsp), %r8                   # 8-byte Folded Reload
	movl	$2, %ebp
.Ltmp76:
	.p2align	4, 0x90
.LBB0_13:                               # %land.rhs.us.1
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $rdx
	#DEBUG_VALUE: i <- 1
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- $r14d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- 0
	#DEBUG_VALUE: len <- $rbp
	.loc	0 63 8 is_stmt 1                # liblzma/lzma/lzma_encoder_optimum_fast.c:63:8
	movzbl	-1(%r15,%rbp), %r9d
	.loc	0 63 17 is_stmt 0               # liblzma/lzma/lzma_encoder_optimum_fast.c:63:17
	cmpb	-2(%r8,%rbp), %r9b
.Ltmp77:
	.loc	0 62 3 is_stmt 1                # liblzma/lzma/lzma_encoder_optimum_fast.c:62:3
	jne	.LBB0_16
.Ltmp78:
# %bb.14:                               # %for.inc.us.1
                                        #   in Loop: Header=BB0_13 Depth=1
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $rdx
	#DEBUG_VALUE: i <- 1
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- $r14d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- 0
	#DEBUG_VALUE: len <- $rbp
	.loc	0 63 35                         # liblzma/lzma/lzma_encoder_optimum_fast.c:63:35
	incq	%rbp
.Ltmp79:
	#DEBUG_VALUE: len <- $rbp
	.loc	0 62 21                         # liblzma/lzma/lzma_encoder_optimum_fast.c:62:21
	cmpq	%rbp, %r10
	.loc	0 63 5                          # liblzma/lzma/lzma_encoder_optimum_fast.c:63:5
	jne	.LBB0_13
.Ltmp80:
# %bb.15:
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $rdx
	#DEBUG_VALUE: i <- 1
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- $r14d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- 0
	#DEBUG_VALUE: len <- $rbp
	.loc	0 0 5 is_stmt 0                 # liblzma/lzma/lzma_encoder_optimum_fast.c:0:5
	movl	%edi, %ebp
.Ltmp81:
.LBB0_16:                               # %for.end.us.1
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $rdx
	#DEBUG_VALUE: i <- 1
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- $r14d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- 0
	movl	$1, %r8d
.Ltmp82:
	.loc	0 67 11 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:67:11
	cmpl	16(%rsp), %ebp                  # 4-byte Folded Reload
.Ltmp83:
	.loc	0 67 7 is_stmt 0                # liblzma/lzma/lzma_encoder_optimum_fast.c:67:7
	jae	.LBB0_34
.Ltmp84:
# %bb.17:                               # %if.end42.us.1
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $rdx
	#DEBUG_VALUE: i <- 1
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- $r14d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- 0
	.loc	0 74 11 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:74:11
	xorl	%r11d, %r11d
	cmpl	%r14d, %ebp
	seta	%r11b
.Ltmp85:
	.loc	0 74 7 is_stmt 0                # liblzma/lzma/lzma_encoder_optimum_fast.c:74:7
	cmoval	%ebp, %r14d
.Ltmp86:
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- $r14d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- undef
.LBB0_18:                               # %for.inc48.us.1
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $rdx
	#DEBUG_VALUE: i <- 1
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- $r14d
	.loc	0 0 7                           # liblzma/lzma/lzma_encoder_optimum_fast.c:0:7
	movq	8(%rsp), %rbp                   # 8-byte Reload
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- $r14d
.Ltmp87:
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- $r11d
	#DEBUG_VALUE: i <- 2
	.loc	0 52 41 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:52:41
	movl	748(%r13), %r10d
	.loc	0 52 56 is_stmt 0               # liblzma/lzma/lzma_encoder_optimum_fast.c:52:56
	movq	%r10, %r8
	notq	%r8
.Ltmp88:
	#DEBUG_VALUE: buf_back <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $r8, $rdx
	.loc	0 56 7 is_stmt 1                # liblzma/lzma/lzma_encoder_optimum_fast.c:56:7
	cmpb	(%r8,%rdx), %sil
	jne	.LBB0_26
.Ltmp89:
# %bb.19:                               # %lor.lhs.false.us.2
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $rdx
	#DEBUG_VALUE: i <- 2
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- $r14d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- $r11d
	#DEBUG_VALUE: buf_back <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $r8, $rdx
	.loc	0 0 0 is_stmt 0                 # liblzma/lzma/lzma_encoder_optimum_fast.c:0:0
	movq	%r10, %r8
.Ltmp90:
	negq	%r8
.Ltmp91:
	.loc	0 56 7                          # liblzma/lzma/lzma_encoder_optimum_fast.c:56:7
	movzbl	(%r15), %r9d
	cmpb	-1(%r15,%r8), %r9b
.Ltmp92:
	.loc	0 56 7                          # liblzma/lzma/lzma_encoder_optimum_fast.c:56:7
	jne	.LBB0_26
.Ltmp93:
# %bb.20:                               # %land.rhs.us.preheader.2
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $rdx
	#DEBUG_VALUE: i <- 2
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- $r14d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- $r11d
	.loc	0 62 21 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:62:21
	movl	%edi, %r8d
	movq	40(%rsp), %r9                   # 8-byte Reload
.Ltmp94:
	.loc	0 62 3 is_stmt 0                # liblzma/lzma/lzma_encoder_optimum_fast.c:62:3
	subq	%r10, %r9
	addq	32(%rsp), %r9                   # 8-byte Folded Reload
	movl	$2, %ebp
.Ltmp95:
	.p2align	4, 0x90
.LBB0_21:                               # %land.rhs.us.2
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $rdx
	#DEBUG_VALUE: i <- 2
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- $r14d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- $r11d
	#DEBUG_VALUE: len <- $rbp
	.loc	0 63 8 is_stmt 1                # liblzma/lzma/lzma_encoder_optimum_fast.c:63:8
	movzbl	-1(%r15,%rbp), %r10d
	.loc	0 63 17 is_stmt 0               # liblzma/lzma/lzma_encoder_optimum_fast.c:63:17
	cmpb	-2(%r9,%rbp), %r10b
.Ltmp96:
	.loc	0 62 3 is_stmt 1                # liblzma/lzma/lzma_encoder_optimum_fast.c:62:3
	jne	.LBB0_24
.Ltmp97:
# %bb.22:                               # %for.inc.us.2
                                        #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $rdx
	#DEBUG_VALUE: i <- 2
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- $r14d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- $r11d
	#DEBUG_VALUE: len <- $rbp
	.loc	0 63 35                         # liblzma/lzma/lzma_encoder_optimum_fast.c:63:35
	incq	%rbp
.Ltmp98:
	#DEBUG_VALUE: len <- $rbp
	.loc	0 62 21                         # liblzma/lzma/lzma_encoder_optimum_fast.c:62:21
	cmpq	%rbp, %r8
	.loc	0 63 5                          # liblzma/lzma/lzma_encoder_optimum_fast.c:63:5
	jne	.LBB0_21
.Ltmp99:
# %bb.23:
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $rdx
	#DEBUG_VALUE: i <- 2
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- $r14d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- $r11d
	#DEBUG_VALUE: len <- $rbp
	.loc	0 0 5 is_stmt 0                 # liblzma/lzma/lzma_encoder_optimum_fast.c:0:5
	movl	%edi, %ebp
.Ltmp100:
.LBB0_24:                               # %for.end.us.2
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $rdx
	#DEBUG_VALUE: i <- 2
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- $r14d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- $r11d
	movl	$2, %r8d
.Ltmp101:
	.loc	0 67 11 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:67:11
	cmpl	16(%rsp), %ebp                  # 4-byte Folded Reload
.Ltmp102:
	.loc	0 67 7 is_stmt 0                # liblzma/lzma/lzma_encoder_optimum_fast.c:67:7
	jae	.LBB0_34
.Ltmp103:
# %bb.25:                               # %if.end42.us.2
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $rdx
	#DEBUG_VALUE: i <- 2
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- $r14d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- $r11d
	.loc	0 74 11 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:74:11
	cmpl	%r14d, %ebp
.Ltmp104:
	.loc	0 74 7 is_stmt 0                # liblzma/lzma/lzma_encoder_optimum_fast.c:74:7
	cmoval	%r8d, %r11d
.Ltmp105:
	cmoval	%ebp, %r14d
.Ltmp106:
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- $r14d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- $r11d
	.loc	0 0 7                           # liblzma/lzma/lzma_encoder_optimum_fast.c:0:7
	movq	8(%rsp), %rbp                   # 8-byte Reload
.Ltmp107:
.LBB0_26:                               # %for.inc48.us.2
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $rdx
	#DEBUG_VALUE: i <- 2
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- $r14d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- $r11d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- $r14d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- $r11d
	#DEBUG_VALUE: i <- 3
	.loc	0 52 41 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:52:41
	movl	752(%r13), %r8d
	.loc	0 52 56 is_stmt 0               # liblzma/lzma/lzma_encoder_optimum_fast.c:52:56
	movq	%r8, %r9
	notq	%r9
.Ltmp108:
	#DEBUG_VALUE: buf_back <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $r9, $rdx
	.loc	0 56 7 is_stmt 1                # liblzma/lzma/lzma_encoder_optimum_fast.c:56:7
	cmpb	(%r9,%rdx), %sil
	jne	.LBB0_61
.Ltmp109:
# %bb.27:                               # %lor.lhs.false.us.3
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $rdx
	#DEBUG_VALUE: i <- 3
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- $r14d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- $r11d
	#DEBUG_VALUE: buf_back <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $r9, $rdx
	.loc	0 0 0 is_stmt 0                 # liblzma/lzma/lzma_encoder_optimum_fast.c:0:0
	movq	%r8, %rdx
.Ltmp110:
	negq	%rdx
.Ltmp111:
	.loc	0 56 7                          # liblzma/lzma/lzma_encoder_optimum_fast.c:56:7
	movzbl	(%r15), %esi
	cmpb	-1(%r15,%rdx), %sil
.Ltmp112:
	.loc	0 56 7                          # liblzma/lzma/lzma_encoder_optimum_fast.c:56:7
	jne	.LBB0_61
.Ltmp113:
# %bb.28:                               # %land.rhs.us.preheader.3
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: i <- 3
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- $r14d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- $r11d
	.loc	0 62 21 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:62:21
	movl	%edi, %edx
	movq	40(%rsp), %rsi                  # 8-byte Reload
.Ltmp114:
	.loc	0 62 3 is_stmt 0                # liblzma/lzma/lzma_encoder_optimum_fast.c:62:3
	subq	%r8, %rsi
	addq	32(%rsp), %rsi                  # 8-byte Folded Reload
	movl	$2, %r8d
.Ltmp115:
	.p2align	4, 0x90
.LBB0_29:                               # %land.rhs.us.3
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: i <- 3
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- $r14d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- $r11d
	#DEBUG_VALUE: len <- $r8
	.loc	0 63 8 is_stmt 1                # liblzma/lzma/lzma_encoder_optimum_fast.c:63:8
	movzbl	-1(%r15,%r8), %r9d
	.loc	0 63 17 is_stmt 0               # liblzma/lzma/lzma_encoder_optimum_fast.c:63:17
	cmpb	-2(%rsi,%r8), %r9b
.Ltmp116:
	.loc	0 62 3 is_stmt 1                # liblzma/lzma/lzma_encoder_optimum_fast.c:62:3
	jne	.LBB0_31
.Ltmp117:
# %bb.30:                               # %for.inc.us.3
                                        #   in Loop: Header=BB0_29 Depth=1
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: i <- 3
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- $r14d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- $r11d
	#DEBUG_VALUE: len <- $r8
	.loc	0 63 35                         # liblzma/lzma/lzma_encoder_optimum_fast.c:63:35
	incq	%r8
.Ltmp118:
	#DEBUG_VALUE: len <- $r8
	.loc	0 62 21                         # liblzma/lzma/lzma_encoder_optimum_fast.c:62:21
	cmpq	%r8, %rdx
	.loc	0 63 5                          # liblzma/lzma/lzma_encoder_optimum_fast.c:63:5
	jne	.LBB0_29
.Ltmp119:
# %bb.32:                               # %for.end.us.3
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: i <- 3
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- $r14d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- $r11d
	#DEBUG_VALUE: len <- $r8
	.loc	0 0 5 is_stmt 0                 # liblzma/lzma/lzma_encoder_optimum_fast.c:0:5
	movl	$3, %r8d
.Ltmp120:
	.loc	0 67 11 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:67:11
	cmpl	16(%rsp), %edi                  # 4-byte Folded Reload
.Ltmp121:
	.loc	0 67 7 is_stmt 0                # liblzma/lzma/lzma_encoder_optimum_fast.c:67:7
	jae	.LBB0_33
.Ltmp122:
.LBB0_36:                               # %if.end42.us.3
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: i <- 3
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- $r14d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- $r11d
	.loc	0 74 11 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:74:11
	cmpl	%r14d, %edi
	movl	$3, %edx
.Ltmp123:
	.loc	0 74 7 is_stmt 0                # liblzma/lzma/lzma_encoder_optimum_fast.c:74:7
	cmoval	%edx, %r11d
.Ltmp124:
	cmoval	%edi, %r14d
.Ltmp125:
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- $r14d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- $r11d
	.loc	0 78 2 is_stmt 1                # liblzma/lzma/lzma_encoder_optimum_fast.c:78:2
	jmp	.LBB0_61
.Ltmp126:
.LBB0_40:                               # %for.body.preheader
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- $rbp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $rdx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf_avail <- $r11d
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- 0
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- 0
	.loc	0 56 7                          # liblzma/lzma/lzma_encoder_optimum_fast.c:56:7
	cmpb	%r10b, %sil
.Ltmp127:
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- undef
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- undef
	jne	.LBB0_54
.Ltmp128:
# %bb.41:                               # %lor.lhs.false
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- $rbp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $rdx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf_avail <- $r11d
	#DEBUG_VALUE: i <- 0
	movzbl	(%r15), %r9d
	xorl	%edi, %edi
	cmpb	-1(%r15,%r8), %r9b
.Ltmp129:
	.loc	0 56 7 is_stmt 0                # liblzma/lzma/lzma_encoder_optimum_fast.c:56:7
	je	.LBB0_42
.Ltmp130:
.LBB0_54:                               # %for.inc48
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- $rbp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $rdx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf_avail <- $r11d
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- undef
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- undef
	#DEBUG_VALUE: i <- 1
	.loc	0 52 41 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:52:41
	movl	744(%r13), %r9d
	.loc	0 52 56 is_stmt 0               # liblzma/lzma/lzma_encoder_optimum_fast.c:52:56
	movq	%r9, %rdi
	notq	%rdi
.Ltmp131:
	#DEBUG_VALUE: buf_back <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $rdi, $rdx
	.loc	0 56 7 is_stmt 1                # liblzma/lzma/lzma_encoder_optimum_fast.c:56:7
	cmpb	(%rdi,%rdx), %sil
	jne	.LBB0_56
.Ltmp132:
# %bb.55:                               # %lor.lhs.false.1
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- $rbp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $rdx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf_avail <- $r11d
	#DEBUG_VALUE: i <- 1
	#DEBUG_VALUE: buf_back <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $rdi, $rdx
	.loc	0 0 0 is_stmt 0                 # liblzma/lzma/lzma_encoder_optimum_fast.c:0:0
	negq	%r9
.Ltmp133:
	.loc	0 56 7                          # liblzma/lzma/lzma_encoder_optimum_fast.c:56:7
	movzbl	(%r15), %r8d
	movl	$1, %edi
.Ltmp134:
	cmpb	-1(%r15,%r9), %r8b
.Ltmp135:
	.loc	0 56 7                          # liblzma/lzma/lzma_encoder_optimum_fast.c:56:7
	je	.LBB0_42
.Ltmp136:
.LBB0_56:                               # %for.inc48.1
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- $rbp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $rdx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf_avail <- $r11d
	#DEBUG_VALUE: i <- 1
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- undef
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- undef
	#DEBUG_VALUE: i <- 2
	.loc	0 52 41 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:52:41
	movl	748(%r13), %r9d
	.loc	0 52 56 is_stmt 0               # liblzma/lzma/lzma_encoder_optimum_fast.c:52:56
	movq	%r9, %rdi
	notq	%rdi
.Ltmp137:
	#DEBUG_VALUE: buf_back <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $rdi, $rdx
	.loc	0 56 7 is_stmt 1                # liblzma/lzma/lzma_encoder_optimum_fast.c:56:7
	cmpb	(%rdi,%rdx), %sil
	jne	.LBB0_58
.Ltmp138:
# %bb.57:                               # %lor.lhs.false.2
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- $rbp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $rdx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf_avail <- $r11d
	#DEBUG_VALUE: i <- 2
	#DEBUG_VALUE: buf_back <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $rdi, $rdx
	.loc	0 0 0 is_stmt 0                 # liblzma/lzma/lzma_encoder_optimum_fast.c:0:0
	negq	%r9
.Ltmp139:
	.loc	0 56 7                          # liblzma/lzma/lzma_encoder_optimum_fast.c:56:7
	movzbl	(%r15), %r8d
	movl	$2, %edi
.Ltmp140:
	cmpb	-1(%r15,%r9), %r8b
.Ltmp141:
	.loc	0 56 7                          # liblzma/lzma/lzma_encoder_optimum_fast.c:56:7
	je	.LBB0_42
.Ltmp142:
.LBB0_58:                               # %for.inc48.2
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- $rbp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $rdx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf_avail <- $r11d
	#DEBUG_VALUE: i <- 2
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- undef
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- undef
	#DEBUG_VALUE: i <- 3
	.loc	0 52 41 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:52:41
	movl	752(%r13), %r8d
	.loc	0 52 56 is_stmt 0               # liblzma/lzma/lzma_encoder_optimum_fast.c:52:56
	movq	%r8, %rdi
	notq	%rdi
.Ltmp143:
	#DEBUG_VALUE: buf_back <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $rdi, $rdx
	.loc	0 0 56                          # liblzma/lzma/lzma_encoder_optimum_fast.c:0:56
	xorl	%r11d, %r11d
.Ltmp144:
	.loc	0 56 7 is_stmt 1                # liblzma/lzma/lzma_encoder_optimum_fast.c:56:7
	cmpb	(%rdi,%rdx), %sil
	jne	.LBB0_59
.Ltmp145:
# %bb.60:                               # %lor.lhs.false.3
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- $rbp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $rdx
	#DEBUG_VALUE: i <- 3
	#DEBUG_VALUE: buf_back <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $rdi, $rdx
	.loc	0 0 0 is_stmt 0                 # liblzma/lzma/lzma_encoder_optimum_fast.c:0:0
	negq	%r8
.Ltmp146:
	.loc	0 56 7                          # liblzma/lzma/lzma_encoder_optimum_fast.c:56:7
	movzbl	(%r15), %edx
.Ltmp147:
	.loc	0 0 7                           # liblzma/lzma/lzma_encoder_optimum_fast.c:0:7
	movl	$3, %edi
	movl	$0, %r14d
	.loc	0 56 7                          # liblzma/lzma/lzma_encoder_optimum_fast.c:56:7
	cmpb	-1(%r15,%r8), %dl
.Ltmp148:
	.loc	0 56 7                          # liblzma/lzma/lzma_encoder_optimum_fast.c:56:7
	jne	.LBB0_61
.Ltmp149:
.LBB0_42:                               # %if.then41.thread
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- $rbp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	.loc	0 68 14 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:68:14
	movl	%edi, (%rbp)
	.loc	0 69 13                         # liblzma/lzma/lzma_encoder_optimum_fast.c:69:13
	movl	$2, (%rcx)
	movl	$1, %ebp
.Ltmp150:
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: mf_skip:mf <- $rbx
	#DEBUG_VALUE: mf_skip:amount <- 1
	.loc	8 270 6                         # liblzma/lz/lz_encoder.h:270:6
	jmp	.LBB0_35
.Ltmp151:
.LBB0_59:
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- $rbp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $rdx
	#DEBUG_VALUE: i <- 3
	#DEBUG_VALUE: buf_back <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $rdi, $rdx
	.loc	8 0 6 is_stmt 0                 # liblzma/lz/lz_encoder.h:0:6
	xorl	%r14d, %r14d
.Ltmp152:
.LBB0_61:                               # %for.end52
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- $rbp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	.loc	0 82 15 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:82:15
	cmpl	16(%rsp), %r12d                 # 4-byte Folded Reload
.Ltmp153:
	.loc	0 82 6 is_stmt 0                # liblzma/lzma/lzma_encoder_optimum_fast.c:82:6
	jae	.LBB0_62
.Ltmp154:
# %bb.63:                               # %if.end62
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- $rbp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- 0
	.loc	0 0 6                           # liblzma/lzma/lzma_encoder_optimum_fast.c:0:6
	movq	%rbp, 8(%rsp)                   # 8-byte Spill
.Ltmp155:
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	xorl	%ebp, %ebp
.Ltmp156:
	.loc	0 91 15 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:91:15
	cmpl	$2, %r12d
.Ltmp157:
	.loc	0 91 6 is_stmt 0                # liblzma/lzma/lzma_encoder_optimum_fast.c:91:6
	jb	.LBB0_70
.Ltmp158:
# %bb.64:                               # %if.then65
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- 0
	.loc	0 92 30 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:92:30
	movl	28(%rsp), %edx
	.loc	0 92 44 is_stmt 0               # liblzma/lzma/lzma_encoder_optimum_fast.c:92:44
	leal	-1(%rdx), %esi
	.loc	0 0 0                           # liblzma/lzma/lzma_encoder_optimum_fast.c:0:0
	movl	760(%r13,%rsi,8), %ebp
	.loc	0 92 30                         # liblzma/lzma/lzma_encoder_optimum_fast.c:92:30
	cmpq	$2, %rdx
.Ltmp159:
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- undef
	.loc	0 94 28 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:94:28
	jb	.LBB0_69
.Ltmp160:
# %bb.65:                               # %land.rhs73.preheader
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	.loc	0 94 3 is_stmt 0                # liblzma/lzma/lzma_encoder_optimum_fast.c:94:3
	leaq	744(,%rdx,8), %rsi
	addq	%r13, %rsi
.Ltmp161:
	.p2align	4, 0x90
.LBB0_66:                               # %land.rhs73
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	.loc	0 95 39 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:95:39
	movl	-4(%rsi), %edi
	.loc	0 95 43 is_stmt 0               # liblzma/lzma/lzma_encoder_optimum_fast.c:95:43
	leal	1(%rdi), %r8d
	.loc	0 94 40 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:94:40
	cmpl	%r8d, %r12d
	.loc	0 94 3 is_stmt 0                # liblzma/lzma/lzma_encoder_optimum_fast.c:94:3
	jne	.LBB0_69
.Ltmp162:
# %bb.67:                               # %while.body
                                        #   in Loop: Header=BB0_66 Depth=1
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	.loc	0 96 9 is_stmt 1                # liblzma/lzma/lzma_encoder_optimum_fast.c:96:9
	movl	%ebp, %r9d
	shrl	$7, %r9d
	movl	(%rsi), %r8d
	cmpl	%r8d, %r9d
.Ltmp163:
	.loc	0 96 8 is_stmt 0                # liblzma/lzma/lzma_encoder_optimum_fast.c:96:8
	jbe	.LBB0_69
.Ltmp164:
# %bb.68:                               # %if.end91
                                        #   in Loop: Header=BB0_66 Depth=1
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	.loc	0 101 4 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:101:4
	decl	%edx
	movl	%edx, 28(%rsp)
.Ltmp165:
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $edi
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $r8d
	.loc	0 94 24                         # liblzma/lzma/lzma_encoder_optimum_fast.c:94:24
	addq	$-8, %rsi
	movl	%r8d, %ebp
.Ltmp166:
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	.loc	0 0 24 is_stmt 0                # liblzma/lzma/lzma_encoder_optimum_fast.c:0:24
	movl	%edi, %r12d
	.loc	0 94 24                         # liblzma/lzma/lzma_encoder_optimum_fast.c:94:24
	cmpl	$1, %edx
	.loc	0 94 28                         # liblzma/lzma/lzma_encoder_optimum_fast.c:94:28
	ja	.LBB0_66
.Ltmp167:
.LBB0_69:                               # %while.end
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	.loc	0 0 28                          # liblzma/lzma/lzma_encoder_optimum_fast.c:0:28
	cmpl	$127, %ebp
	movl	$1, %edx
.Ltmp168:
	.loc	0 106 21 is_stmt 1              # liblzma/lzma/lzma_encoder_optimum_fast.c:106:21
	cmovbel	%r12d, %edx
	.loc	0 106 16 is_stmt 0              # liblzma/lzma/lzma_encoder_optimum_fast.c:106:16
	cmpl	$2, %r12d
	.loc	0 106 21                        # liblzma/lzma/lzma_encoder_optimum_fast.c:106:21
	cmovnel	%r12d, %edx
.Ltmp169:
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $edx
	.loc	0 0 21                          # liblzma/lzma/lzma_encoder_optimum_fast.c:0:21
	movl	%edx, %r12d
.Ltmp170:
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
.LBB0_70:                               # %if.end108
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	.loc	0 110 14 is_stmt 1              # liblzma/lzma/lzma_encoder_optimum_fast.c:110:14
	cmpl	$2, %r14d
.Ltmp171:
	.loc	0 110 6 is_stmt 0               # liblzma/lzma/lzma_encoder_optimum_fast.c:110:6
	jb	.LBB0_77
.Ltmp172:
# %bb.71:                               # %if.then111
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	.loc	0 111 15 is_stmt 1              # liblzma/lzma/lzma_encoder_optimum_fast.c:111:15
	leal	1(%r14), %edx
	.loc	0 111 19 is_stmt 0              # liblzma/lzma/lzma_encoder_optimum_fast.c:111:19
	cmpl	%r12d, %edx
	.loc	0 112 5 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:112:5
	jae	.LBB0_76
.Ltmp173:
# %bb.72:                               # %lor.lhs.false115
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	.loc	0 112 17 is_stmt 0              # liblzma/lzma/lzma_encoder_optimum_fast.c:112:17
	leal	2(%r14), %edx
	.loc	0 112 21                        # liblzma/lzma/lzma_encoder_optimum_fast.c:112:21
	cmpl	%r12d, %edx
	.loc	0 113 6 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:113:6
	jb	.LBB0_74
.Ltmp174:
# %bb.73:                               # %lor.lhs.false115
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	cmpl	$512, %ebp                      # imm = 0x200
	ja	.LBB0_76
.Ltmp175:
.LBB0_74:                               # %lor.lhs.false122
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	.loc	0 114 17                        # liblzma/lzma/lzma_encoder_optimum_fast.c:114:17
	leal	3(%r14), %edx
	.loc	0 114 21 is_stmt 0              # liblzma/lzma/lzma_encoder_optimum_fast.c:114:21
	cmpl	%r12d, %edx
	.loc	0 115 6 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:115:6
	jb	.LBB0_77
.Ltmp176:
# %bb.75:                               # %lor.lhs.false122
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	cmpl	$32769, %ebp                    # imm = 0x8001
	jb	.LBB0_77
.Ltmp177:
.LBB0_76:                               # %mf_skip.exit409
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	.loc	0 0 6 is_stmt 0                 # liblzma/lzma/lzma_encoder_optimum_fast.c:0:6
	movq	8(%rsp), %rax                   # 8-byte Reload
.Ltmp178:
	.loc	0 116 14 is_stmt 1              # liblzma/lzma/lzma_encoder_optimum_fast.c:116:14
	movl	%r11d, (%rax)
	.loc	0 117 13                        # liblzma/lzma/lzma_encoder_optimum_fast.c:117:13
	movl	%r14d, (%rcx)
	.loc	0 118 24                        # liblzma/lzma/lzma_encoder_optimum_fast.c:118:24
	decl	%r14d
.Ltmp179:
	#DEBUG_VALUE: mf_skip:amount <- $r14d
	#DEBUG_VALUE: mf_skip:mf <- $rbx
	.loc	8 271 3                         # liblzma/lz/lz_encoder.h:271:3
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	*56(%rbx)
.Ltmp180:
	.loc	8 272 18                        # liblzma/lz/lz_encoder.h:272:18
	addl	%r14d, 28(%rbx)
.Ltmp181:
	.loc	0 119 4                         # liblzma/lzma/lzma_encoder_optimum_fast.c:119:4
	jmp	.LBB0_119
.Ltmp182:
.LBB0_62:                               # %if.then55
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- $rbp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	.loc	0 83 30                         # liblzma/lzma/lzma_encoder_optimum_fast.c:83:30
	movl	28(%rsp), %eax
	.loc	0 83 44 is_stmt 0               # liblzma/lzma/lzma_encoder_optimum_fast.c:83:44
	decl	%eax
	.loc	0 83 49                         # liblzma/lzma/lzma_encoder_optimum_fast.c:83:49
	movl	760(%r13,%rax,8), %eax
	.loc	0 84 5 is_stmt 1                # liblzma/lzma/lzma_encoder_optimum_fast.c:84:5
	addl	$4, %eax
	.loc	0 83 13                         # liblzma/lzma/lzma_encoder_optimum_fast.c:83:13
	movl	%eax, (%rbp)
	.loc	0 85 12                         # liblzma/lzma/lzma_encoder_optimum_fast.c:85:12
	movl	%r12d, (%rcx)
.Ltmp183:
	#DEBUG_VALUE: mf_skip:mf <- $rbx
	.loc	8 270 13                        # liblzma/lz/lz_encoder.h:270:13
	decl	%r12d
.Ltmp184:
	#DEBUG_VALUE: mf_skip:amount <- $r12d
	.loc	8 270 6 is_stmt 0               # liblzma/lz/lz_encoder.h:270:6
	je	.LBB0_119
.Ltmp185:
.LBB0_99:                               # %if.then.i411
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	.loc	8 271 3 is_stmt 1               # liblzma/lz/lz_encoder.h:271:3
	movq	%rbx, %rdi
	movl	%r12d, %esi
	callq	*56(%rbx)
.Ltmp186:
	.loc	8 272 18                        # liblzma/lz/lz_encoder.h:272:18
	addl	%r12d, 28(%rbx)
	jmp	.LBB0_119
.Ltmp187:
.LBB0_77:                               # %if.end132
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	.loc	8 0 18 is_stmt 0                # liblzma/lz/lz_encoder.h:0:18
	cmpl	$2, %eax
.Ltmp188:
	.loc	0 123 19 is_stmt 1              # liblzma/lzma/lzma_encoder_optimum_fast.c:123:19
	je	.LBB0_79
.Ltmp189:
# %bb.78:                               # %if.end132
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	cmpl	$1, %r12d
	jbe	.LBB0_79
.Ltmp190:
# %bb.80:                               # %if.end139
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	.loc	0 0 19 is_stmt 0                # liblzma/lzma/lzma_encoder_optimum_fast.c:0:19
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
.Ltmp191:
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- undef
	.loc	0 132 12 is_stmt 1              # liblzma/lzma/lzma_encoder_optimum_fast.c:132:12
	leaq	2948(%r13), %r14
	.loc	0 132 34 is_stmt 0              # liblzma/lzma/lzma_encoder_optimum_fast.c:132:34
	leaq	756(%r13), %rdx
	.loc	0 131 32 is_stmt 1              # liblzma/lzma/lzma_encoder_optimum_fast.c:131:32
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	callq	lzma_mf_find@PLT
.Ltmp192:
	.loc	0 131 30 is_stmt 0              # liblzma/lzma/lzma_encoder_optimum_fast.c:131:30
	movl	%eax, 2952(%r13)
.Ltmp193:
	.loc	0 134 34 is_stmt 1              # liblzma/lzma/lzma_encoder_optimum_fast.c:134:34
	cmpl	$2, %eax
.Ltmp194:
	.loc	0 134 6 is_stmt 0               # liblzma/lzma/lzma_encoder_optimum_fast.c:134:6
	jb	.LBB0_89
.Ltmp195:
# %bb.81:                               # %if.then148
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	.loc	0 136 12 is_stmt 1              # liblzma/lzma/lzma_encoder_optimum_fast.c:136:12
	movl	(%r14), %ecx
	.loc	0 136 26 is_stmt 0              # liblzma/lzma/lzma_encoder_optimum_fast.c:136:26
	decl	%ecx
	movq	48(%rsp), %rdx                  # 8-byte Reload
	.loc	0 136 31                        # liblzma/lzma/lzma_encoder_optimum_fast.c:136:31
	movl	4(%rdx,%rcx,8), %ecx
.Ltmp196:
	#DEBUG_VALUE: new_dist <- $ecx
	.loc	0 138 36 is_stmt 1              # liblzma/lzma/lzma_encoder_optimum_fast.c:138:36
	cmpl	%r12d, %eax
	.loc	0 139 6                         # liblzma/lzma/lzma_encoder_optimum_fast.c:139:6
	jb	.LBB0_83
.Ltmp197:
# %bb.82:                               # %if.then148
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	#DEBUG_VALUE: new_dist <- $ecx
	cmpl	%ebp, %ecx
	jae	.LBB0_83
.Ltmp198:
.LBB0_88:                               # %if.then187
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	#DEBUG_VALUE: new_dist <- $ecx
	.loc	0 0 6 is_stmt 0                 # liblzma/lzma/lzma_encoder_optimum_fast.c:0:6
	movq	8(%rsp), %rax                   # 8-byte Reload
.Ltmp199:
	.loc	0 146 14 is_stmt 1              # liblzma/lzma/lzma_encoder_optimum_fast.c:146:14
	movl	$-1, (%rax)
	movq	16(%rsp), %rax                  # 8-byte Reload
	.loc	0 147 13                        # liblzma/lzma/lzma_encoder_optimum_fast.c:147:13
	movl	$1, (%rax)
	jmp	.LBB0_119
.Ltmp200:
.LBB0_79:                               # %if.then138
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	.loc	0 0 13 is_stmt 0                # liblzma/lzma/lzma_encoder_optimum_fast.c:0:13
	movq	8(%rsp), %rax                   # 8-byte Reload
.Ltmp201:
	.loc	0 124 13 is_stmt 1              # liblzma/lzma/lzma_encoder_optimum_fast.c:124:13
	movl	$-1, (%rax)
	.loc	0 125 12                        # liblzma/lzma/lzma_encoder_optimum_fast.c:125:12
	movl	$1, (%rcx)
	.loc	0 126 3                         # liblzma/lzma/lzma_encoder_optimum_fast.c:126:3
	jmp	.LBB0_119
.Ltmp202:
.LBB0_31:                               # %for.end.us.3.split.loop.exit544
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: i <- 3
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- $r14d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- $r11d
	#DEBUG_VALUE: len <- $r8
	.loc	0 0 3 is_stmt 0                 # liblzma/lzma/lzma_encoder_optimum_fast.c:0:3
	movl	%r8d, %edi
	movl	$3, %r8d
.Ltmp203:
	.loc	0 67 11 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:67:11
	cmpl	16(%rsp), %edi                  # 4-byte Folded Reload
.Ltmp204:
	.loc	0 67 7 is_stmt 0                # liblzma/lzma/lzma_encoder_optimum_fast.c:67:7
	jb	.LBB0_36
.Ltmp205:
.LBB0_33:
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: i <- 3
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_len <- $r14d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:rep_index <- $r11d
	.loc	0 0 7                           # liblzma/lzma/lzma_encoder_optimum_fast.c:0:7
	movl	%edi, %ebp
.Ltmp206:
.LBB0_34:                               # %if.then41
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	movq	8(%rsp), %rax                   # 8-byte Reload
.Ltmp207:
	.loc	0 68 14 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:68:14
	movl	%r8d, (%rax)
	.loc	0 69 13                         # liblzma/lzma/lzma_encoder_optimum_fast.c:69:13
	movl	%ebp, (%rcx)
.Ltmp208:
	#DEBUG_VALUE: mf_skip:mf <- $rbx
	.loc	8 270 13                        # liblzma/lz/lz_encoder.h:270:13
	decl	%ebp
.Ltmp209:
	#DEBUG_VALUE: mf_skip:amount <- $ebp
	.loc	8 270 6 is_stmt 0               # liblzma/lz/lz_encoder.h:270:6
	je	.LBB0_119
.Ltmp210:
.LBB0_35:                               # %if.then.i
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:nice_len <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: mf_skip:mf <- $rbx
	.loc	8 271 3 is_stmt 1               # liblzma/lz/lz_encoder.h:271:3
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	*56(%rbx)
.Ltmp211:
	.loc	8 272 18                        # liblzma/lz/lz_encoder.h:272:18
	addl	%ebp, 28(%rbx)
.Ltmp212:
.LBB0_119:                              # %cleanup260
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	.loc	0 180 1 epilogue_begin          # liblzma/lzma/lzma_encoder_optimum_fast.c:180:1
	addq	$56, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
.Ltmp213:
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
.Ltmp214:
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Ltmp215:
.LBB0_83:                               # %lor.lhs.false161
	.cfi_def_cfa_offset 112
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	#DEBUG_VALUE: new_dist <- $ecx
	.loc	0 140 49                        # liblzma/lzma/lzma_encoder_optimum_fast.c:140:49
	leal	1(%r12), %edi
	.loc	0 140 37 is_stmt 0              # liblzma/lzma/lzma_encoder_optimum_fast.c:140:37
	cmpl	%edi, %eax
	sete	%dl
	movl	%ecx, %esi
	shrl	$7, %esi
	cmpl	%ebp, %esi
	setbe	%sil
	cmpl	%edi, %eax
	.loc	0 141 6 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:141:6
	ja	.LBB0_88
.Ltmp216:
# %bb.84:                               # %lor.lhs.false161
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	#DEBUG_VALUE: new_dist <- $ecx
	andb	%sil, %dl
	jne	.LBB0_88
.Ltmp217:
# %bb.85:                               # %lor.lhs.false175
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	#DEBUG_VALUE: new_dist <- $ecx
	.loc	0 0 6 is_stmt 0                 # liblzma/lzma/lzma_encoder_optimum_fast.c:0:6
	cmpl	$3, %r12d
	.loc	0 144 6 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:144:6
	jb	.LBB0_89
.Ltmp218:
# %bb.86:                               # %lor.lhs.false175
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	#DEBUG_VALUE: new_dist <- $ecx
	.loc	0 0 6 is_stmt 0                 # liblzma/lzma/lzma_encoder_optimum_fast.c:0:6
	incl	%eax
	.loc	0 144 6                         # liblzma/lzma/lzma_encoder_optimum_fast.c:144:6
	cmpl	%r12d, %eax
	jb	.LBB0_89
.Ltmp219:
# %bb.87:                               # %lor.lhs.false175
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	#DEBUG_VALUE: new_dist <- $ecx
	.loc	0 0 6                           # liblzma/lzma/lzma_encoder_optimum_fast.c:0:6
	movl	%ebp, %eax
	shrl	$7, %eax
	.loc	0 144 6                         # liblzma/lzma/lzma_encoder_optimum_fast.c:144:6
	cmpl	%ecx, %eax
	ja	.LBB0_88
.Ltmp220:
.LBB0_89:                               # %if.end192
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $r15
	.loc	0 157 34 is_stmt 1              # liblzma/lzma/lzma_encoder_optimum_fast.c:157:34
	leal	-1(%r12), %ecx
.Ltmp221:
	#DEBUG_VALUE: lzma_lzma_optimum_fast:limit <- $ecx
	#DEBUG_VALUE: i <- 0
	.loc	0 0 34 is_stmt 0                # liblzma/lzma/lzma_encoder_optimum_fast.c:0:34
	movzbl	(%r15), %eax
	#DEBUG_VALUE: i <- 0
.Ltmp222:
	.loc	0 160 41 is_stmt 1              # liblzma/lzma/lzma_encoder_optimum_fast.c:160:41
	movl	740(%r13), %esi
	.loc	0 160 39 is_stmt 0              # liblzma/lzma/lzma_encoder_optimum_fast.c:160:39
	movq	%rsi, %rdx
	negq	%rdx
	.loc	0 160 56                        # liblzma/lzma/lzma_encoder_optimum_fast.c:160:56
	movq	%rsi, %rdi
	notq	%rdi
.Ltmp223:
	#DEBUG_VALUE: buf_back <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $rdi, $r15
	.loc	0 162 7 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:162:7
	movzbl	(%rdi,%r15), %edi
.Ltmp224:
	.loc	0 0 7 is_stmt 0                 # liblzma/lzma/lzma_encoder_optimum_fast.c:0:7
	cmpl	$2, %ecx
	movq	16(%rsp), %r10                  # 8-byte Reload
	jbe	.LBB0_90
.Ltmp225:
# %bb.100:                              # %for.body199.us.preheader
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $r15
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:limit <- $ecx
	#DEBUG_VALUE: i <- 0
	.loc	0 162 7                         # liblzma/lzma/lzma_encoder_optimum_fast.c:162:7
	cmpb	%dil, %al
	movq	40(%rsp), %r11                  # 8-byte Reload
	jne	.LBB0_105
.Ltmp226:
# %bb.101:                              # %lor.lhs.false214.us
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $r15
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:limit <- $ecx
	#DEBUG_VALUE: i <- 0
	movzbl	1(%r15), %edi
	cmpb	(%r15,%rdx), %dil
.Ltmp227:
	.loc	0 162 7                         # liblzma/lzma/lzma_encoder_optimum_fast.c:162:7
	jne	.LBB0_105
.Ltmp228:
# %bb.102:                              # %land.rhs227.us.preheader
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $r15
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:limit <- $ecx
	#DEBUG_VALUE: i <- 0
	.loc	0 166 21 is_stmt 1              # liblzma/lzma/lzma_encoder_optimum_fast.c:166:21
	movl	%ecx, %edx
.Ltmp229:
	.loc	0 166 3 is_stmt 0               # liblzma/lzma/lzma_encoder_optimum_fast.c:166:3
	movq	%r11, %rdi
	subq	%rsi, %rdi
	movq	32(%rsp), %r8                   # 8-byte Reload
	leaq	(%r8,%rdi), %rsi
	incq	%rsi
	leaq	(%r11,%r8), %rdi
	addq	$2, %rdi
	addq	$-2, %rdx
	xorl	%r8d, %r8d
.Ltmp230:
.LBB0_104:                              # %land.rhs227.us
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $r15
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:limit <- $ecx
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: len <- [DW_OP_plus_uconst 2, DW_OP_stack_value] $r8
	.loc	0 167 8 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:167:8
	movzbl	(%rdi,%r8), %r9d
	.loc	0 167 17 is_stmt 0              # liblzma/lzma/lzma_encoder_optimum_fast.c:167:17
	cmpb	(%rsi,%r8), %r9b
.Ltmp231:
	#DEBUG_VALUE: len <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $r8
	.loc	0 166 3 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:166:3
	jne	.LBB0_105
.Ltmp232:
# %bb.103:                              # %for.cond224.us
                                        #   in Loop: Header=BB0_104 Depth=1
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $r15
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:limit <- $ecx
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: len <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $r8
	#DEBUG_VALUE: len <- undef
	.loc	0 166 21 is_stmt 0              # liblzma/lzma/lzma_encoder_optimum_fast.c:166:21
	incq	%r8
	cmpq	%r8, %rdx
	jne	.LBB0_104
	jmp	.LBB0_118
.Ltmp233:
.LBB0_90:                               # %for.body199.preheader
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $r15
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:limit <- $ecx
	#DEBUG_VALUE: i <- 0
	.loc	0 162 7 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:162:7
	cmpb	%dil, %al
	jne	.LBB0_92
.Ltmp234:
# %bb.91:                               # %lor.lhs.false214
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $r15
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:limit <- $ecx
	#DEBUG_VALUE: i <- 0
	movzbl	1(%r15), %ecx
.Ltmp235:
	cmpb	(%r15,%rdx), %cl
.Ltmp236:
	.loc	0 162 7 is_stmt 0               # liblzma/lzma/lzma_encoder_optimum_fast.c:162:7
	je	.LBB0_118
.Ltmp237:
.LBB0_92:                               # %for.inc249
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $r15
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: i <- 1
	.loc	0 160 41 is_stmt 1              # liblzma/lzma/lzma_encoder_optimum_fast.c:160:41
	movl	744(%r13), %ecx
	.loc	0 160 56 is_stmt 0              # liblzma/lzma/lzma_encoder_optimum_fast.c:160:56
	movq	%rcx, %rdx
	notq	%rdx
.Ltmp238:
	#DEBUG_VALUE: buf_back <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $rdx, $r15
	.loc	0 162 7 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:162:7
	cmpb	(%rdx,%r15), %al
	jne	.LBB0_94
.Ltmp239:
# %bb.93:                               # %lor.lhs.false214.1
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $r15
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	#DEBUG_VALUE: i <- 1
	#DEBUG_VALUE: buf_back <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $rdx, $r15
	.loc	0 0 0 is_stmt 0                 # liblzma/lzma/lzma_encoder_optimum_fast.c:0:0
	negq	%rcx
.Ltmp240:
	.loc	0 162 7                         # liblzma/lzma/lzma_encoder_optimum_fast.c:162:7
	movzbl	1(%r15), %edx
.Ltmp241:
	cmpb	(%r15,%rcx), %dl
.Ltmp242:
	.loc	0 162 7                         # liblzma/lzma/lzma_encoder_optimum_fast.c:162:7
	je	.LBB0_118
.Ltmp243:
.LBB0_94:                               # %for.inc249.1
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $r15
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	#DEBUG_VALUE: i <- 1
	#DEBUG_VALUE: i <- 2
	.loc	0 160 41 is_stmt 1              # liblzma/lzma/lzma_encoder_optimum_fast.c:160:41
	movl	748(%r13), %ecx
	.loc	0 160 56 is_stmt 0              # liblzma/lzma/lzma_encoder_optimum_fast.c:160:56
	movq	%rcx, %rdx
	notq	%rdx
.Ltmp244:
	#DEBUG_VALUE: buf_back <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $rdx, $r15
	.loc	0 162 7 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:162:7
	cmpb	(%rdx,%r15), %al
	jne	.LBB0_96
.Ltmp245:
# %bb.95:                               # %lor.lhs.false214.2
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $r15
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	#DEBUG_VALUE: i <- 2
	#DEBUG_VALUE: buf_back <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $rdx, $r15
	.loc	0 0 0 is_stmt 0                 # liblzma/lzma/lzma_encoder_optimum_fast.c:0:0
	negq	%rcx
.Ltmp246:
	.loc	0 162 7                         # liblzma/lzma/lzma_encoder_optimum_fast.c:162:7
	movzbl	1(%r15), %edx
.Ltmp247:
	cmpb	(%r15,%rcx), %dl
.Ltmp248:
	.loc	0 162 7                         # liblzma/lzma/lzma_encoder_optimum_fast.c:162:7
	je	.LBB0_118
.Ltmp249:
.LBB0_96:                               # %for.inc249.2
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $r15
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	#DEBUG_VALUE: i <- 2
	#DEBUG_VALUE: i <- 3
	.loc	0 160 41 is_stmt 1              # liblzma/lzma/lzma_encoder_optimum_fast.c:160:41
	movl	752(%r13), %ecx
	.loc	0 160 56 is_stmt 0              # liblzma/lzma/lzma_encoder_optimum_fast.c:160:56
	movq	%rcx, %rdx
	notq	%rdx
.Ltmp250:
	#DEBUG_VALUE: buf_back <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $rdx, $r15
	.loc	0 162 7 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:162:7
	cmpb	(%rdx,%r15), %al
	jne	.LBB0_98
.Ltmp251:
# %bb.97:                               # %lor.lhs.false214.3
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $r15
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	#DEBUG_VALUE: i <- 3
	#DEBUG_VALUE: buf_back <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $rdx, $r15
	.loc	0 0 0 is_stmt 0                 # liblzma/lzma/lzma_encoder_optimum_fast.c:0:0
	negq	%rcx
.Ltmp252:
	.loc	0 162 7                         # liblzma/lzma/lzma_encoder_optimum_fast.c:162:7
	movzbl	1(%r15), %eax
	cmpb	(%r15,%rcx), %al
	je	.LBB0_118
	jmp	.LBB0_98
.Ltmp253:
.LBB0_105:                              # %for.inc249.us
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $r15
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:limit <- $ecx
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: i <- 1
	.loc	0 160 41 is_stmt 1              # liblzma/lzma/lzma_encoder_optimum_fast.c:160:41
	movl	744(%r13), %esi
	.loc	0 160 56 is_stmt 0              # liblzma/lzma/lzma_encoder_optimum_fast.c:160:56
	movq	%rsi, %rdx
	notq	%rdx
.Ltmp254:
	#DEBUG_VALUE: buf_back <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $rdx, $r15
	.loc	0 162 7 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:162:7
	cmpb	(%rdx,%r15), %al
	jne	.LBB0_109
.Ltmp255:
# %bb.106:                              # %lor.lhs.false214.us.1
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $r15
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:limit <- $ecx
	#DEBUG_VALUE: i <- 1
	#DEBUG_VALUE: buf_back <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $rdx, $r15
	.loc	0 0 0 is_stmt 0                 # liblzma/lzma/lzma_encoder_optimum_fast.c:0:0
	movq	%rsi, %rdx
.Ltmp256:
	negq	%rdx
.Ltmp257:
	.loc	0 162 7                         # liblzma/lzma/lzma_encoder_optimum_fast.c:162:7
	movzbl	1(%r15), %edi
	cmpb	(%r15,%rdx), %dil
.Ltmp258:
	.loc	0 162 7                         # liblzma/lzma/lzma_encoder_optimum_fast.c:162:7
	jne	.LBB0_109
.Ltmp259:
# %bb.107:                              # %land.rhs227.us.preheader.1
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $r15
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:limit <- $ecx
	#DEBUG_VALUE: i <- 1
	.loc	0 166 21 is_stmt 1              # liblzma/lzma/lzma_encoder_optimum_fast.c:166:21
	movl	%ecx, %edx
.Ltmp260:
	.loc	0 166 3 is_stmt 0               # liblzma/lzma/lzma_encoder_optimum_fast.c:166:3
	addq	$-2, %rdx
	movq	%r11, %rdi
	subq	%rsi, %rdi
	movq	32(%rsp), %r8                   # 8-byte Reload
	leaq	(%r8,%rdi), %rsi
	incq	%rsi
	leaq	(%r11,%r8), %rdi
	addq	$2, %rdi
	xorl	%r8d, %r8d
.Ltmp261:
.LBB0_108:                              # %land.rhs227.us.1
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $r15
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:limit <- $ecx
	#DEBUG_VALUE: i <- 1
	#DEBUG_VALUE: len <- [DW_OP_plus_uconst 2, DW_OP_stack_value] $r8
	.loc	0 167 8 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:167:8
	movzbl	(%rdi,%r8), %r9d
	.loc	0 167 17 is_stmt 0              # liblzma/lzma/lzma_encoder_optimum_fast.c:167:17
	cmpb	(%rsi,%r8), %r9b
.Ltmp262:
	#DEBUG_VALUE: len <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $r8
	.loc	0 166 3 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:166:3
	jne	.LBB0_109
.Ltmp263:
# %bb.120:                              # %for.cond224.us.1
                                        #   in Loop: Header=BB0_108 Depth=1
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $r15
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:limit <- $ecx
	#DEBUG_VALUE: i <- 1
	#DEBUG_VALUE: len <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $r8
	#DEBUG_VALUE: len <- undef
	.loc	0 166 21 is_stmt 0              # liblzma/lzma/lzma_encoder_optimum_fast.c:166:21
	incq	%r8
	cmpq	%r8, %rdx
	.loc	0 167 5 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:167:5
	jne	.LBB0_108
	jmp	.LBB0_118
.Ltmp264:
.LBB0_109:                              # %for.inc249.us.1
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $r15
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:limit <- $ecx
	#DEBUG_VALUE: i <- 1
	#DEBUG_VALUE: i <- 2
	.loc	0 160 41                        # liblzma/lzma/lzma_encoder_optimum_fast.c:160:41
	movl	748(%r13), %esi
	.loc	0 160 56 is_stmt 0              # liblzma/lzma/lzma_encoder_optimum_fast.c:160:56
	movq	%rsi, %rdx
	notq	%rdx
.Ltmp265:
	#DEBUG_VALUE: buf_back <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $rdx, $r15
	.loc	0 162 7 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:162:7
	cmpb	(%rdx,%r15), %al
	jne	.LBB0_113
.Ltmp266:
# %bb.110:                              # %lor.lhs.false214.us.2
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $r15
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:limit <- $ecx
	#DEBUG_VALUE: i <- 2
	#DEBUG_VALUE: buf_back <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $rdx, $r15
	.loc	0 0 0 is_stmt 0                 # liblzma/lzma/lzma_encoder_optimum_fast.c:0:0
	movq	%rsi, %rdx
.Ltmp267:
	negq	%rdx
.Ltmp268:
	.loc	0 162 7                         # liblzma/lzma/lzma_encoder_optimum_fast.c:162:7
	movzbl	1(%r15), %edi
	cmpb	(%r15,%rdx), %dil
.Ltmp269:
	.loc	0 162 7                         # liblzma/lzma/lzma_encoder_optimum_fast.c:162:7
	jne	.LBB0_113
.Ltmp270:
# %bb.111:                              # %land.rhs227.us.preheader.2
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $r15
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:limit <- $ecx
	#DEBUG_VALUE: i <- 2
	.loc	0 166 21 is_stmt 1              # liblzma/lzma/lzma_encoder_optimum_fast.c:166:21
	movl	%ecx, %edx
.Ltmp271:
	.loc	0 166 3 is_stmt 0               # liblzma/lzma/lzma_encoder_optimum_fast.c:166:3
	addq	$-2, %rdx
	movq	%r11, %rdi
	subq	%rsi, %rdi
	movq	32(%rsp), %r8                   # 8-byte Reload
	leaq	(%r8,%rdi), %rsi
	incq	%rsi
	leaq	(%r11,%r8), %rdi
	addq	$2, %rdi
	xorl	%r8d, %r8d
.Ltmp272:
.LBB0_112:                              # %land.rhs227.us.2
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $r15
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:limit <- $ecx
	#DEBUG_VALUE: i <- 2
	#DEBUG_VALUE: len <- [DW_OP_plus_uconst 2, DW_OP_stack_value] $r8
	.loc	0 167 8 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:167:8
	movzbl	(%rdi,%r8), %r9d
	.loc	0 167 17 is_stmt 0              # liblzma/lzma/lzma_encoder_optimum_fast.c:167:17
	cmpb	(%rsi,%r8), %r9b
.Ltmp273:
	#DEBUG_VALUE: len <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $r8
	.loc	0 166 3 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:166:3
	jne	.LBB0_113
.Ltmp274:
# %bb.121:                              # %for.cond224.us.2
                                        #   in Loop: Header=BB0_112 Depth=1
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $r15
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:limit <- $ecx
	#DEBUG_VALUE: i <- 2
	#DEBUG_VALUE: len <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $r8
	#DEBUG_VALUE: len <- undef
	.loc	0 166 21 is_stmt 0              # liblzma/lzma/lzma_encoder_optimum_fast.c:166:21
	incq	%r8
	cmpq	%r8, %rdx
	.loc	0 167 5 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:167:5
	jne	.LBB0_112
	jmp	.LBB0_118
.Ltmp275:
.LBB0_113:                              # %for.inc249.us.2
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $r15
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:limit <- $ecx
	#DEBUG_VALUE: i <- 2
	#DEBUG_VALUE: i <- 3
	.loc	0 160 41                        # liblzma/lzma/lzma_encoder_optimum_fast.c:160:41
	movl	752(%r13), %edx
	.loc	0 160 56 is_stmt 0              # liblzma/lzma/lzma_encoder_optimum_fast.c:160:56
	movq	%rdx, %rsi
	notq	%rsi
.Ltmp276:
	#DEBUG_VALUE: buf_back <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $rsi, $r15
	.loc	0 162 7 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:162:7
	cmpb	(%rsi,%r15), %al
	jne	.LBB0_98
.Ltmp277:
# %bb.114:                              # %lor.lhs.false214.us.3
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $r15
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:limit <- $ecx
	#DEBUG_VALUE: i <- 3
	#DEBUG_VALUE: buf_back <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $rsi, $r15
	.loc	0 0 0 is_stmt 0                 # liblzma/lzma/lzma_encoder_optimum_fast.c:0:0
	movq	%rdx, %rax
	negq	%rax
.Ltmp278:
	.loc	0 162 7                         # liblzma/lzma/lzma_encoder_optimum_fast.c:162:7
	movzbl	1(%r15), %esi
.Ltmp279:
	cmpb	(%r15,%rax), %sil
.Ltmp280:
	.loc	0 162 7                         # liblzma/lzma/lzma_encoder_optimum_fast.c:162:7
	jne	.LBB0_98
.Ltmp281:
# %bb.115:                              # %land.rhs227.us.preheader.3
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $r15
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	#DEBUG_VALUE: lzma_lzma_optimum_fast:limit <- $ecx
	#DEBUG_VALUE: i <- 3
	.loc	0 166 21 is_stmt 1              # liblzma/lzma/lzma_encoder_optimum_fast.c:166:21
	movl	%ecx, %eax
.Ltmp282:
	.loc	0 166 3 is_stmt 0               # liblzma/lzma/lzma_encoder_optimum_fast.c:166:3
	addq	$-2, %rax
	movq	%r11, %rcx
.Ltmp283:
	subq	%rdx, %rcx
	movq	32(%rsp), %rdx                  # 8-byte Reload
	addq	%rdx, %rcx
	incq	%rcx
	addq	%r11, %rdx
	addq	$2, %rdx
	xorl	%esi, %esi
.Ltmp284:
.LBB0_116:                              # %land.rhs227.us.3
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $r15
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	#DEBUG_VALUE: i <- 3
	#DEBUG_VALUE: len <- [DW_OP_plus_uconst 2, DW_OP_stack_value] $rsi
	.loc	0 167 8 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:167:8
	movzbl	(%rdx,%rsi), %edi
	.loc	0 167 17 is_stmt 0              # liblzma/lzma/lzma_encoder_optimum_fast.c:167:17
	cmpb	(%rcx,%rsi), %dil
.Ltmp285:
	#DEBUG_VALUE: len <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $rsi
	.loc	0 166 3 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:166:3
	jne	.LBB0_98
.Ltmp286:
# %bb.117:                              # %for.cond224.us.3
                                        #   in Loop: Header=BB0_116 Depth=1
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $r15
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	#DEBUG_VALUE: i <- 3
	#DEBUG_VALUE: len <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $rsi
	#DEBUG_VALUE: len <- undef
	.loc	0 166 21 is_stmt 0              # liblzma/lzma/lzma_encoder_optimum_fast.c:166:21
	incq	%rsi
	cmpq	%rsi, %rax
	.loc	0 167 5 is_stmt 1               # liblzma/lzma/lzma_encoder_optimum_fast.c:167:5
	jne	.LBB0_116
.Ltmp287:
.LBB0_118:                              # %cleanup251
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $r15
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	.loc	0 0 5 is_stmt 0                 # liblzma/lzma/lzma_encoder_optimum_fast.c:0:5
	movq	8(%rsp), %rax                   # 8-byte Reload
.Ltmp288:
	.loc	0 170 14 is_stmt 1              # liblzma/lzma/lzma_encoder_optimum_fast.c:170:14
	movl	$-1, (%rax)
	.loc	0 171 13                        # liblzma/lzma/lzma_encoder_optimum_fast.c:171:13
	movl	$1, (%r10)
	jmp	.LBB0_119
.Ltmp289:
.LBB0_98:                               # %for.end253
	#DEBUG_VALUE: lzma_lzma_optimum_fast:pcoder <- $r13
	#DEBUG_VALUE: lzma_lzma_optimum_fast:mf <- $rbx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_res <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_res <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma_optimum_fast:len_main <- $r12d
	#DEBUG_VALUE: lzma_lzma_optimum_fast:buf <- $r15
	#DEBUG_VALUE: lzma_lzma_optimum_fast:back_main <- $ebp
	.loc	0 176 24                        # liblzma/lzma/lzma_encoder_optimum_fast.c:176:24
	addl	$4, %ebp
.Ltmp290:
	.loc	0 0 24 is_stmt 0                # liblzma/lzma/lzma_encoder_optimum_fast.c:0:24
	movq	8(%rsp), %rax                   # 8-byte Reload
	.loc	0 176 12                        # liblzma/lzma/lzma_encoder_optimum_fast.c:176:12
	movl	%ebp, (%rax)
	.loc	0 177 11 is_stmt 1              # liblzma/lzma/lzma_encoder_optimum_fast.c:177:11
	movl	%r12d, (%r10)
.Ltmp291:
	#DEBUG_VALUE: mf_skip:mf <- $rbx
	.loc	8 270 13                        # liblzma/lz/lz_encoder.h:270:13
	addl	$-2, %r12d
.Ltmp292:
	#DEBUG_VALUE: mf_skip:amount <- $r12d
	.loc	8 270 6 is_stmt 0               # liblzma/lz/lz_encoder.h:270:6
	jne	.LBB0_99
	jmp	.LBB0_119
.Ltmp293:
.Lfunc_end0:
	.size	lzma_lzma_optimum_fast, .Lfunc_end0-lzma_lzma_optimum_fast
	.cfi_endproc
                                        # -- End function
	.file	9 "liblzma/common" "common.h" md5 0xb445e74fc76042ed64f7e1908fcc1934
	.file	10 "liblzma/lzma" "lzma_encoder_private.h" md5 0x0c1b7b41ddfbed104b8c32f19cfcc2b2
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	23                              # Offset entry count
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
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp3-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp214-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp214-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp215-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp215-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp3-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp213-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp213-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp215-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp215-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp3-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp53-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp126-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp126-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp150-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp150-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp151-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp151-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp155-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp155-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp182-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp182-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp185-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp185-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp187-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp187-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp210-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp210-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp215-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp215-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp6-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp8-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp17-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp17-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp185-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp187-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp191-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp200-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp212-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp4-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp5-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp165-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp165-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp167-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp167-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp169-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp169-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp170-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp170-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp184-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp187-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp212-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp215-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp292-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp46-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp52-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp110-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp126-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp147-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp151-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp152-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp220-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp12-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp25-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # super-register DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp52-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp54-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # super-register DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp126-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp144-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # super-register DW_OP_reg11
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp28-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp28-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp34-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp34-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp42-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	50                              # DW_OP_lit2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp42-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp52-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	51                              # DW_OP_lit3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp52-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp68-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp68-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp87-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp87-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp107-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	50                              # DW_OP_lit2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp107-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp126-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	51                              # DW_OP_lit3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp126-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp130-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp130-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp136-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp136-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp142-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	50                              # DW_OP_lit2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp142-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp149-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	51                              # DW_OP_lit3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp202-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp206-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	51                              # DW_OP_lit3
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp28-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp28-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp41-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp42-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp51-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp51-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp52-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	50                              # DW_OP_lit2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp52-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp68-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp68-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp126-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp126-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp127-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp202-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp206-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp34-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp34-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp52-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # super-register DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp52-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp86-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp87-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp105-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # super-register DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp106-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp124-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # super-register DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp125-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp126-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # super-register DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp126-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp127-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp202-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp206-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # super-register DW_OP_reg11
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp21-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          #   ending offset
	.byte	6                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	0                               # 0
	.byte	113                             # DW_OP_breg1
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	6                               # Loc expr size
	.byte	121                             # DW_OP_breg9
	.byte	0                               # 0
	.byte	113                             # DW_OP_breg1
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp35-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp38-.Lfunc_begin0          #   ending offset
	.byte	6                               # Loc expr size
	.byte	120                             # DW_OP_breg8
	.byte	0                               # 0
	.byte	113                             # DW_OP_breg1
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp43-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp46-.Lfunc_begin0          #   ending offset
	.byte	6                               # Loc expr size
	.byte	120                             # DW_OP_breg8
	.byte	0                               # 0
	.byte	113                             # DW_OP_breg1
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp69-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp71-.Lfunc_begin0          #   ending offset
	.byte	6                               # Loc expr size
	.byte	120                             # DW_OP_breg8
	.byte	0                               # 0
	.byte	113                             # DW_OP_breg1
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp88-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp90-.Lfunc_begin0          #   ending offset
	.byte	6                               # Loc expr size
	.byte	120                             # DW_OP_breg8
	.byte	0                               # 0
	.byte	113                             # DW_OP_breg1
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp108-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp110-.Lfunc_begin0         #   ending offset
	.byte	6                               # Loc expr size
	.byte	121                             # DW_OP_breg9
	.byte	0                               # 0
	.byte	113                             # DW_OP_breg1
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp131-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp134-.Lfunc_begin0         #   ending offset
	.byte	6                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	0                               # 0
	.byte	113                             # DW_OP_breg1
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp137-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp140-.Lfunc_begin0         #   ending offset
	.byte	6                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	0                               # 0
	.byte	113                             # DW_OP_breg1
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp143-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp147-.Lfunc_begin0         #   ending offset
	.byte	6                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	0                               # 0
	.byte	113                             # DW_OP_breg1
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp40-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp42-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	50                              # DW_OP_lit2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp48-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp52-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	50                              # DW_OP_lit2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp60-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp65-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp76-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp81-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp95-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp100-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp115-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp120-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp150-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp151-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp208-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp212-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp150-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp151-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp209-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp210-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp154-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp159-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp165-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp166-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp166-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp167-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp170-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp182-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp187-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp202-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp215-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp290-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp184-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp185-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp196-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp200-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp215-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp220-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp221-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp235-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp253-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp283-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp221-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp237-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp237-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp243-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp243-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp249-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	50                              # DW_OP_lit2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp249-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp253-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	51                              # DW_OP_lit3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp253-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp264-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp264-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp275-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	50                              # DW_OP_lit2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp275-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp287-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	51                              # DW_OP_lit3
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp223-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp224-.Lfunc_begin0         #   ending offset
	.byte	6                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	0                               # 0
	.byte	127                             # DW_OP_breg15
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp238-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp241-.Lfunc_begin0         #   ending offset
	.byte	6                               # Loc expr size
	.byte	113                             # DW_OP_breg1
	.byte	0                               # 0
	.byte	127                             # DW_OP_breg15
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp244-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp247-.Lfunc_begin0         #   ending offset
	.byte	6                               # Loc expr size
	.byte	113                             # DW_OP_breg1
	.byte	0                               # 0
	.byte	127                             # DW_OP_breg15
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp250-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp253-.Lfunc_begin0         #   ending offset
	.byte	6                               # Loc expr size
	.byte	113                             # DW_OP_breg1
	.byte	0                               # 0
	.byte	127                             # DW_OP_breg15
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp254-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp256-.Lfunc_begin0         #   ending offset
	.byte	6                               # Loc expr size
	.byte	113                             # DW_OP_breg1
	.byte	0                               # 0
	.byte	127                             # DW_OP_breg15
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp265-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp267-.Lfunc_begin0         #   ending offset
	.byte	6                               # Loc expr size
	.byte	113                             # DW_OP_breg1
	.byte	0                               # 0
	.byte	127                             # DW_OP_breg15
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp276-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp279-.Lfunc_begin0         #   ending offset
	.byte	6                               # Loc expr size
	.byte	116                             # DW_OP_breg4
	.byte	0                               # 0
	.byte	127                             # DW_OP_breg15
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp230-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp231-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	120                             # DW_OP_breg8
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp231-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp232-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	120                             # DW_OP_breg8
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp261-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp262-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	120                             # DW_OP_breg8
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp262-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp263-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	120                             # DW_OP_breg8
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp272-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp273-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	120                             # DW_OP_breg8
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp273-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp274-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	120                             # DW_OP_breg8
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp284-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp285-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	116                             # DW_OP_breg4
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp285-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp286-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	116                             # DW_OP_breg4
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc22:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp292-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
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
	.byte	3                               # Abbreviation Code
	.byte	40                              # DW_TAG_enumerator
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
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
	.byte	5                               # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	11                              # DW_AT_byte_size
	.byte	5                               # DW_FORM_data2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
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
	.byte	7                               # Abbreviation Code
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
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	8                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
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
	.byte	12                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
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
	.byte	14                              # Abbreviation Code
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
	.byte	15                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
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
	.byte	17                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
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
	.byte	20                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	21                              # Abbreviation Code
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
	.byte	22                              # Abbreviation Code
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
	.byte	23                              # Abbreviation Code
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
	.byte	24                              # Abbreviation Code
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
	.byte	25                              # Abbreviation Code
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
	.byte	26                              # Abbreviation Code
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
	.byte	27                              # Abbreviation Code
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
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	30                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
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
	.byte	34                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	35                              # Abbreviation Code
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
	.byte	36                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	37                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	38                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.ascii	"\203\001"                      # DW_AT_call_target
	.byte	24                              # DW_FORM_exprloc
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	39                              # Abbreviation Code
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
	.byte	40                              # Abbreviation Code
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
	.byte	41                              # Abbreviation Code
	.byte	55                              # DW_TAG_restrict_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	42                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	11                              # DW_AT_byte_size
	.byte	6                               # DW_FORM_data4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	43                              # Abbreviation Code
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
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	44                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xc:0x794 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lrnglists_table_base0          # DW_AT_rnglists_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x2b:0x15 DW_TAG_enumeration_type
	.long	64                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	250                             # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x33:0x3 DW_TAG_enumerator
	.byte	4                               # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x36:0x3 DW_TAG_enumerator
	.byte	5                               # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x39:0x3 DW_TAG_enumerator
	.byte	6                               # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x3c:0x3 DW_TAG_enumerator
	.byte	7                               # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x40:0x4 DW_TAG_base_type
	.byte	3                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x44:0x67 DW_TAG_structure_type
	.short	736                             # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x49:0x9 DW_TAG_member
	.byte	8                               # DW_AT_name
	.long	171                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x52:0x9 DW_TAG_member
	.byte	12                              # DW_AT_name
	.long	171                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x5b:0x9 DW_TAG_member
	.byte	13                              # DW_AT_name
	.long	191                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x64:0x9 DW_TAG_member
	.byte	16                              # DW_AT_name
	.long	207                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x6d:0x9 DW_TAG_member
	.byte	20                              # DW_AT_name
	.long	227                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x76:0x9 DW_TAG_member
	.byte	22                              # DW_AT_name
	.long	227                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x7f:0x9 DW_TAG_member
	.byte	23                              # DW_AT_name
	.long	235                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	2                               # Abbrev [2] 0x88:0x18 DW_TAG_enumeration_type
	.long	64                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x90:0x3 DW_TAG_enumerator
	.byte	24                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x93:0x3 DW_TAG_enumerator
	.byte	25                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x96:0x3 DW_TAG_enumerator
	.byte	26                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x99:0x3 DW_TAG_enumerator
	.byte	27                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x9c:0x3 DW_TAG_enumerator
	.byte	28                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xa0:0xa DW_TAG_member
	.byte	30                              # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.short	272                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xab:0x8 DW_TAG_typedef
	.long	179                             # DW_AT_type
	.byte	11                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xb3:0x8 DW_TAG_typedef
	.long	187                             # DW_AT_type
	.byte	10                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0xbb:0x4 DW_TAG_base_type
	.byte	9                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0xbf:0x8 DW_TAG_typedef
	.long	199                             # DW_AT_type
	.byte	15                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xc7:0x8 DW_TAG_typedef
	.long	64                              # DW_AT_type
	.byte	14                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xcf:0x8 DW_TAG_typedef
	.long	215                             # DW_AT_type
	.byte	19                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xd7:0x8 DW_TAG_typedef
	.long	223                             # DW_AT_type
	.byte	18                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0xdf:0x4 DW_TAG_base_type
	.byte	17                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0xe3:0x8 DW_TAG_typedef
	.long	187                             # DW_AT_type
	.byte	21                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xeb:0xc DW_TAG_array_type
	.long	136                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0xf0:0x6 DW_TAG_subrange_type
	.long	247                             # DW_AT_type
	.byte	58                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0xf7:0x4 DW_TAG_base_type
	.byte	29                              # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	9                               # Abbrev [9] 0xfb:0xc DW_TAG_array_type
	.long	263                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x100:0x6 DW_TAG_subrange_type
	.long	247                             # DW_AT_type
	.byte	58                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x107:0x5 DW_TAG_pointer_type
	.long	268                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x10c:0x8 DW_TAG_typedef
	.long	276                             # DW_AT_type
	.byte	34                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x114:0x8 DW_TAG_typedef
	.long	284                             # DW_AT_type
	.byte	33                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x11c:0x8 DW_TAG_typedef
	.long	292                             # DW_AT_type
	.byte	32                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x124:0x4 DW_TAG_base_type
	.byte	31                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x128:0x2d DW_TAG_enumeration_type
	.long	64                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x130:0x3 DW_TAG_enumerator
	.byte	35                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x133:0x3 DW_TAG_enumerator
	.byte	36                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x136:0x3 DW_TAG_enumerator
	.byte	37                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x139:0x3 DW_TAG_enumerator
	.byte	38                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x13c:0x3 DW_TAG_enumerator
	.byte	39                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x13f:0x3 DW_TAG_enumerator
	.byte	40                              # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x142:0x3 DW_TAG_enumerator
	.byte	41                              # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x145:0x3 DW_TAG_enumerator
	.byte	42                              # DW_AT_name
	.byte	7                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x148:0x3 DW_TAG_enumerator
	.byte	43                              # DW_AT_name
	.byte	8                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x14b:0x3 DW_TAG_enumerator
	.byte	44                              # DW_AT_name
	.byte	9                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x14e:0x3 DW_TAG_enumerator
	.byte	45                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x151:0x3 DW_TAG_enumerator
	.byte	46                              # DW_AT_name
	.byte	11                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x155:0x11 DW_TAG_subprogram
	.byte	47                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	230                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	191                             # DW_AT_type
                                        # DW_AT_inline
	.byte	14                              # Abbrev [14] 0x15d:0x8 DW_TAG_formal_parameter
	.byte	48                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	230                             # DW_AT_decl_line
	.long	358                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x166:0x5 DW_TAG_pointer_type
	.long	363                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x16b:0x5 DW_TAG_const_type
	.long	368                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x170:0x8 DW_TAG_typedef
	.long	376                             # DW_AT_type
	.byte	77                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x178:0xd5 DW_TAG_structure_type
	.byte	76                              # DW_AT_name
	.byte	120                             # DW_AT_byte_size
	.byte	8                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x17d:0x9 DW_TAG_member
	.byte	49                              # DW_AT_name
	.long	589                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x186:0x9 DW_TAG_member
	.byte	50                              # DW_AT_name
	.long	191                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x18f:0x9 DW_TAG_member
	.byte	51                              # DW_AT_name
	.long	191                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x198:0x9 DW_TAG_member
	.byte	52                              # DW_AT_name
	.long	191                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x1a1:0x9 DW_TAG_member
	.byte	53                              # DW_AT_name
	.long	191                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x1aa:0x9 DW_TAG_member
	.byte	54                              # DW_AT_name
	.long	191                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x1b3:0x9 DW_TAG_member
	.byte	55                              # DW_AT_name
	.long	191                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x1bc:0x9 DW_TAG_member
	.byte	56                              # DW_AT_name
	.long	191                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x1c5:0x9 DW_TAG_member
	.byte	57                              # DW_AT_name
	.long	191                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x1ce:0x9 DW_TAG_member
	.byte	58                              # DW_AT_name
	.long	191                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x1d7:0x9 DW_TAG_member
	.byte	59                              # DW_AT_name
	.long	594                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x1e0:0x9 DW_TAG_member
	.byte	63                              # DW_AT_name
	.long	656                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x1e9:0x9 DW_TAG_member
	.byte	64                              # DW_AT_name
	.long	673                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x1f2:0x9 DW_TAG_member
	.byte	65                              # DW_AT_name
	.long	673                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x1fb:0x9 DW_TAG_member
	.byte	66                              # DW_AT_name
	.long	191                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x204:0x9 DW_TAG_member
	.byte	67                              # DW_AT_name
	.long	191                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.byte	84                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x20d:0x9 DW_TAG_member
	.byte	68                              # DW_AT_name
	.long	191                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x216:0x9 DW_TAG_member
	.byte	69                              # DW_AT_name
	.long	191                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.byte	92                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x21f:0x9 DW_TAG_member
	.byte	70                              # DW_AT_name
	.long	191                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x228:0x9 DW_TAG_member
	.byte	71                              # DW_AT_name
	.long	191                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	100                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x231:0x9 DW_TAG_member
	.byte	72                              # DW_AT_name
	.long	678                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x23a:0x9 DW_TAG_member
	.byte	74                              # DW_AT_name
	.long	191                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	122                             # DW_AT_decl_line
	.byte	108                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x243:0x9 DW_TAG_member
	.byte	75                              # DW_AT_name
	.long	191                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x24d:0x5 DW_TAG_pointer_type
	.long	207                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x252:0x5 DW_TAG_pointer_type
	.long	599                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x257:0x10 DW_TAG_subroutine_type
	.long	191                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	18                              # Abbrev [18] 0x25c:0x5 DW_TAG_formal_parameter
	.long	615                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x261:0x5 DW_TAG_formal_parameter
	.long	620                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x267:0x5 DW_TAG_pointer_type
	.long	368                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x26c:0x5 DW_TAG_pointer_type
	.long	625                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x271:0x8 DW_TAG_typedef
	.long	633                             # DW_AT_type
	.byte	62                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x279:0x17 DW_TAG_structure_type
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x27d:0x9 DW_TAG_member
	.byte	60                              # DW_AT_name
	.long	191                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x286:0x9 DW_TAG_member
	.byte	61                              # DW_AT_name
	.long	191                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x290:0x5 DW_TAG_pointer_type
	.long	661                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x295:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	18                              # Abbrev [18] 0x296:0x5 DW_TAG_formal_parameter
	.long	615                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x29b:0x5 DW_TAG_formal_parameter
	.long	191                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x2a1:0x5 DW_TAG_pointer_type
	.long	191                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x2a6:0x9 DW_TAG_typedef
	.long	43                              # DW_AT_type
	.byte	73                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	322                             # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x2af:0x18 DW_TAG_subprogram
	.byte	78                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.short	268                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	23                              # Abbrev [23] 0x2b4:0x9 DW_TAG_formal_parameter
	.byte	48                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.short	268                             # DW_AT_decl_line
	.long	615                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x2bd:0x9 DW_TAG_formal_parameter
	.byte	79                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.short	268                             # DW_AT_decl_line
	.long	191                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x2c7:0x17a DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	81                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	25                              # Abbrev [25] 0x2d2:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	83                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.long	1114                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0x2db:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	48                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.long	1123                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0x2e4:0x9 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	85                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.long	1128                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0x2ed:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	86                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.long	1128                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0x2f6:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	28
	.byte	82                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.long	191                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x301:0x9 DW_TAG_variable
	.byte	4                               # DW_AT_location
	.byte	70                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.long	1133                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x30a:0x9 DW_TAG_variable
	.byte	5                               # DW_AT_location
	.byte	87                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.long	191                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x313:0x9 DW_TAG_variable
	.byte	6                               # DW_AT_location
	.byte	88                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.long	1138                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x31c:0x9 DW_TAG_variable
	.byte	7                               # DW_AT_location
	.byte	89                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.long	1133                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x325:0x9 DW_TAG_variable
	.byte	9                               # DW_AT_location
	.byte	91                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.long	191                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x32e:0x9 DW_TAG_variable
	.byte	10                              # DW_AT_location
	.byte	92                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.long	191                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x337:0x9 DW_TAG_variable
	.byte	15                              # DW_AT_location
	.byte	94                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.long	191                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x340:0x9 DW_TAG_variable
	.byte	18                              # DW_AT_location
	.byte	96                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.long	1133                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x349:0x8 DW_TAG_variable
	.byte	97                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.long	1153                            # DW_AT_type
	.byte	29                              # Abbrev [29] 0x351:0xd DW_TAG_inlined_subroutine
	.long	341                             # DW_AT_abstract_origin
	.byte	1                               # DW_AT_low_pc
	.long	.Ltmp11-.Ltmp10                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	37                              # DW_AT_call_line
	.byte	29                              # DW_AT_call_column
	.byte	30                              # Abbrev [30] 0x35e:0x37 DW_TAG_lexical_block
	.byte	0                               # DW_AT_ranges
	.byte	27                              # Abbrev [27] 0x360:0x9 DW_TAG_variable
	.byte	8                               # DW_AT_location
	.byte	90                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.long	191                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x369:0x2b DW_TAG_lexical_block
	.byte	1                               # DW_AT_ranges
	.byte	27                              # Abbrev [27] 0x36b:0x9 DW_TAG_variable
	.byte	11                              # DW_AT_location
	.byte	93                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.long	1148                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x374:0x9 DW_TAG_variable
	.byte	12                              # DW_AT_location
	.byte	60                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.long	191                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0x37d:0x16 DW_TAG_inlined_subroutine
	.long	687                             # DW_AT_abstract_origin
	.byte	2                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	70                              # DW_AT_call_line
	.byte	4                               # DW_AT_call_column
	.byte	32                              # Abbrev [32] 0x386:0x6 DW_TAG_formal_parameter
	.byte	13                              # DW_AT_location
	.long	692                             # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x38c:0x6 DW_TAG_formal_parameter
	.byte	14                              # DW_AT_location
	.long	701                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x395:0x1b DW_TAG_inlined_subroutine
	.long	687                             # DW_AT_abstract_origin
	.byte	2                               # DW_AT_low_pc
	.long	.Ltmp185-.Ltmp183               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	86                              # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0x3a2:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	692                             # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x3a9:0x6 DW_TAG_formal_parameter
	.byte	16                              # DW_AT_location
	.long	701                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x3b0:0x1c DW_TAG_inlined_subroutine
	.long	687                             # DW_AT_abstract_origin
	.byte	3                               # DW_AT_low_pc
	.long	.Ltmp181-.Ltmp179               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	118                             # DW_AT_call_line
	.byte	4                               # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0x3bd:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	692                             # DW_AT_abstract_origin
	.byte	34                              # Abbrev [34] 0x3c4:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.long	701                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x3cc:0xc DW_TAG_inlined_subroutine
	.long	687                             # DW_AT_abstract_origin
	.byte	4                               # DW_AT_low_pc
	.long	.Ltmp187-.Ltmp185               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	0                               # DW_AT_call_line
	.byte	30                              # Abbrev [30] 0x3d8:0xc DW_TAG_lexical_block
	.byte	3                               # DW_AT_ranges
	.byte	27                              # Abbrev [27] 0x3da:0x9 DW_TAG_variable
	.byte	17                              # DW_AT_location
	.byte	95                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.long	1133                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0x3e4:0x29 DW_TAG_lexical_block
	.byte	5                               # DW_AT_low_pc
	.long	.Ltmp289-.Ltmp222               # DW_AT_high_pc
	.byte	27                              # Abbrev [27] 0x3ea:0x9 DW_TAG_variable
	.byte	19                              # DW_AT_location
	.byte	90                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.long	191                             # DW_AT_type
	.byte	36                              # Abbrev [36] 0x3f3:0x19 DW_TAG_lexical_block
	.byte	5                               # DW_AT_low_pc
	.long	.Ltmp289-.Ltmp222               # DW_AT_high_pc
	.byte	27                              # Abbrev [27] 0x3f9:0x9 DW_TAG_variable
	.byte	20                              # DW_AT_location
	.byte	93                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.long	1148                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x402:0x9 DW_TAG_variable
	.byte	21                              # DW_AT_location
	.byte	60                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.long	191                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x40d:0x1b DW_TAG_inlined_subroutine
	.long	687                             # DW_AT_abstract_origin
	.byte	6                               # DW_AT_low_pc
	.long	.Ltmp293-.Ltmp291               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	178                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0x41a:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	692                             # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x421:0x6 DW_TAG_formal_parameter
	.byte	22                              # DW_AT_location
	.long	701                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	37                              # Abbrev [37] 0x428:0x6 DW_TAG_call_site
	.long	1089                            # DW_AT_call_origin
	.byte	7                               # DW_AT_call_return_pc
	.byte	38                              # Abbrev [38] 0x42e:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	83
	.byte	8                               # DW_AT_call_return_pc
	.byte	38                              # Abbrev [38] 0x432:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	83
	.byte	9                               # DW_AT_call_return_pc
	.byte	37                              # Abbrev [37] 0x436:0x6 DW_TAG_call_site
	.long	1089                            # DW_AT_call_origin
	.byte	10                              # DW_AT_call_return_pc
	.byte	38                              # Abbrev [38] 0x43c:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	83
	.byte	11                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	39                              # Abbrev [39] 0x441:0x19 DW_TAG_subprogram
	.byte	80                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.short	310                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	191                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	18                              # Abbrev [18] 0x44a:0x5 DW_TAG_formal_parameter
	.long	615                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x44f:0x5 DW_TAG_formal_parameter
	.long	673                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x454:0x5 DW_TAG_formal_parameter
	.long	620                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x45a:0x5 DW_TAG_pointer_type
	.long	1119                            # DW_AT_type
	.byte	40                              # Abbrev [40] 0x45f:0x4 DW_TAG_typedef
	.byte	84                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	41                              # Abbrev [41] 0x463:0x5 DW_TAG_restrict_type
	.long	615                             # DW_AT_type
	.byte	41                              # Abbrev [41] 0x468:0x5 DW_TAG_restrict_type
	.long	673                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x46d:0x5 DW_TAG_const_type
	.long	191                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x472:0x5 DW_TAG_pointer_type
	.long	1143                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x477:0x5 DW_TAG_const_type
	.long	207                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x47c:0x5 DW_TAG_const_type
	.long	1138                            # DW_AT_type
	.byte	41                              # Abbrev [41] 0x481:0x5 DW_TAG_restrict_type
	.long	1158                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x486:0x5 DW_TAG_pointer_type
	.long	1163                            # DW_AT_type
	.byte	42                              # Abbrev [42] 0x48b:0x164 DW_TAG_structure_type
	.byte	150                             # DW_AT_name
	.long	249576                          # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x493:0x9 DW_TAG_member
	.byte	98                              # DW_AT_name
	.long	1519                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x49c:0xa DW_TAG_member
	.byte	100                             # DW_AT_name
	.long	1527                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
	.short	736                             # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x4a6:0xa DW_TAG_member
	.byte	102                             # DW_AT_name
	.long	1535                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.short	740                             # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x4b0:0xa DW_TAG_member
	.byte	103                             # DW_AT_name
	.long	1547                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.short	756                             # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x4ba:0xa DW_TAG_member
	.byte	82                              # DW_AT_name
	.long	191                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.short	2948                            # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x4c4:0xa DW_TAG_member
	.byte	104                             # DW_AT_name
	.long	191                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.short	2952                            # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x4ce:0xa DW_TAG_member
	.byte	105                             # DW_AT_name
	.long	1560                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.short	2956                            # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x4d8:0xa DW_TAG_member
	.byte	107                             # DW_AT_name
	.long	1560                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.short	2957                            # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x4e2:0xa DW_TAG_member
	.byte	108                             # DW_AT_name
	.long	1560                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.short	2958                            # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x4ec:0xa DW_TAG_member
	.byte	109                             # DW_AT_name
	.long	191                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.short	2960                            # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x4f6:0xa DW_TAG_member
	.byte	110                             # DW_AT_name
	.long	191                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.short	2964                            # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x500:0xa DW_TAG_member
	.byte	111                             # DW_AT_name
	.long	191                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.short	2968                            # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x50a:0xa DW_TAG_member
	.byte	112                             # DW_AT_name
	.long	1564                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.short	2972                            # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x514:0xa DW_TAG_member
	.byte	113                             # DW_AT_name
	.long	1583                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.short	27548                           # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x51e:0xa DW_TAG_member
	.byte	114                             # DW_AT_name
	.long	1601                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.short	27932                           # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x528:0xa DW_TAG_member
	.byte	115                             # DW_AT_name
	.long	1601                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.short	27956                           # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x532:0xa DW_TAG_member
	.byte	116                             # DW_AT_name
	.long	1601                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.short	27980                           # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x53c:0xa DW_TAG_member
	.byte	117                             # DW_AT_name
	.long	1601                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.short	28004                           # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x546:0xa DW_TAG_member
	.byte	118                             # DW_AT_name
	.long	1583                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.short	28028                           # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x550:0xa DW_TAG_member
	.byte	119                             # DW_AT_name
	.long	1613                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.short	28412                           # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x55a:0xa DW_TAG_member
	.byte	120                             # DW_AT_name
	.long	1631                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.short	28924                           # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x564:0xa DW_TAG_member
	.byte	121                             # DW_AT_name
	.long	1643                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.short	29152                           # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x56e:0xa DW_TAG_member
	.byte	122                             # DW_AT_name
	.long	1655                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.short	29184                           # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x578:0xa DW_TAG_member
	.byte	131                             # DW_AT_name
	.long	1655                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	122                             # DW_AT_decl_line
	.short	47688                           # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x582:0xc DW_TAG_member
	.byte	132                             # DW_AT_name
	.long	1808                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.long	66192                           # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x58e:0xc DW_TAG_member
	.byte	133                             # DW_AT_name
	.long	1826                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.long	67216                           # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x59a:0xc DW_TAG_member
	.byte	134                             # DW_AT_name
	.long	191                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.long	69264                           # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x5a6:0xc DW_TAG_member
	.byte	135                             # DW_AT_name
	.long	191                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.long	69268                           # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x5b2:0xc DW_TAG_member
	.byte	136                             # DW_AT_name
	.long	1796                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.long	69272                           # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x5be:0xc DW_TAG_member
	.byte	137                             # DW_AT_name
	.long	191                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.long	69336                           # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x5ca:0xc DW_TAG_member
	.byte	138                             # DW_AT_name
	.long	191                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.long	69340                           # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x5d6:0xc DW_TAG_member
	.byte	139                             # DW_AT_name
	.long	191                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.long	69344                           # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x5e2:0xc DW_TAG_member
	.byte	140                             # DW_AT_name
	.long	1844                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.long	69348                           # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x5ef:0x8 DW_TAG_typedef
	.long	68                              # DW_AT_type
	.byte	99                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x5f7:0x8 DW_TAG_typedef
	.long	296                             # DW_AT_type
	.byte	101                             # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x5ff:0xc DW_TAG_array_type
	.long	191                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x604:0x6 DW_TAG_subrange_type
	.long	247                             # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x60b:0xd DW_TAG_array_type
	.long	625                             # DW_AT_type
	.byte	44                              # Abbrev [44] 0x610:0x7 DW_TAG_subrange_type
	.long	247                             # DW_AT_type
	.short	274                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x618:0x4 DW_TAG_base_type
	.byte	106                             # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x61c:0x13 DW_TAG_array_type
	.long	268                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x621:0x6 DW_TAG_subrange_type
	.long	247                             # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	44                              # Abbrev [44] 0x627:0x7 DW_TAG_subrange_type
	.long	247                             # DW_AT_type
	.short	768                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x62f:0x12 DW_TAG_array_type
	.long	268                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x634:0x6 DW_TAG_subrange_type
	.long	247                             # DW_AT_type
	.byte	12                              # DW_AT_count
	.byte	10                              # Abbrev [10] 0x63a:0x6 DW_TAG_subrange_type
	.long	247                             # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x641:0xc DW_TAG_array_type
	.long	268                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x646:0x6 DW_TAG_subrange_type
	.long	247                             # DW_AT_type
	.byte	12                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x64d:0x12 DW_TAG_array_type
	.long	268                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x652:0x6 DW_TAG_subrange_type
	.long	247                             # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	10                              # Abbrev [10] 0x658:0x6 DW_TAG_subrange_type
	.long	247                             # DW_AT_type
	.byte	64                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x65f:0xc DW_TAG_array_type
	.long	268                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x664:0x6 DW_TAG_subrange_type
	.long	247                             # DW_AT_type
	.byte	114                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x66b:0xc DW_TAG_array_type
	.long	268                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x670:0x6 DW_TAG_subrange_type
	.long	247                             # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x677:0x8 DW_TAG_typedef
	.long	1663                            # DW_AT_type
	.byte	130                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x67f:0x53 DW_TAG_structure_type
	.short	18504                           # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x684:0x9 DW_TAG_member
	.byte	123                             # DW_AT_name
	.long	268                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x68d:0x9 DW_TAG_member
	.byte	124                             # DW_AT_name
	.long	268                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	2                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x696:0x9 DW_TAG_member
	.byte	8                               # DW_AT_name
	.long	1746                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x69f:0xa DW_TAG_member
	.byte	125                             # DW_AT_name
	.long	1746                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.short	260                             # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x6a9:0xa DW_TAG_member
	.byte	126                             # DW_AT_name
	.long	1764                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.short	516                             # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x6b3:0xa DW_TAG_member
	.byte	127                             # DW_AT_name
	.long	1777                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.short	1028                            # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x6bd:0xa DW_TAG_member
	.byte	128                             # DW_AT_name
	.long	191                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.short	18436                           # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x6c7:0xa DW_TAG_member
	.byte	129                             # DW_AT_name
	.long	1796                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.short	18440                           # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x6d2:0x12 DW_TAG_array_type
	.long	268                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x6d7:0x6 DW_TAG_subrange_type
	.long	247                             # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	10                              # Abbrev [10] 0x6dd:0x6 DW_TAG_subrange_type
	.long	247                             # DW_AT_type
	.byte	8                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x6e4:0xd DW_TAG_array_type
	.long	268                             # DW_AT_type
	.byte	44                              # Abbrev [44] 0x6e9:0x7 DW_TAG_subrange_type
	.long	247                             # DW_AT_type
	.short	256                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x6f1:0x13 DW_TAG_array_type
	.long	191                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x6f6:0x6 DW_TAG_subrange_type
	.long	247                             # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	44                              # Abbrev [44] 0x6fc:0x7 DW_TAG_subrange_type
	.long	247                             # DW_AT_type
	.short	272                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x704:0xc DW_TAG_array_type
	.long	191                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x709:0x6 DW_TAG_subrange_type
	.long	247                             # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x710:0x12 DW_TAG_array_type
	.long	191                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x715:0x6 DW_TAG_subrange_type
	.long	247                             # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	10                              # Abbrev [10] 0x71b:0x6 DW_TAG_subrange_type
	.long	247                             # DW_AT_type
	.byte	64                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x722:0x12 DW_TAG_array_type
	.long	191                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x727:0x6 DW_TAG_subrange_type
	.long	247                             # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	10                              # Abbrev [10] 0x72d:0x6 DW_TAG_subrange_type
	.long	247                             # DW_AT_type
	.byte	128                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x734:0xd DW_TAG_array_type
	.long	1857                            # DW_AT_type
	.byte	44                              # Abbrev [44] 0x739:0x7 DW_TAG_subrange_type
	.long	247                             # DW_AT_type
	.short	4096                            # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x741:0x8 DW_TAG_typedef
	.long	1865                            # DW_AT_type
	.byte	149                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x749:0x56 DW_TAG_structure_type
	.byte	44                              # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x74d:0x9 DW_TAG_member
	.byte	100                             # DW_AT_name
	.long	1527                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x756:0x9 DW_TAG_member
	.byte	141                             # DW_AT_name
	.long	1560                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x75f:0x9 DW_TAG_member
	.byte	142                             # DW_AT_name
	.long	1560                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	5                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x768:0x9 DW_TAG_member
	.byte	143                             # DW_AT_name
	.long	191                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x771:0x9 DW_TAG_member
	.byte	144                             # DW_AT_name
	.long	191                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x77a:0x9 DW_TAG_member
	.byte	145                             # DW_AT_name
	.long	191                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x783:0x9 DW_TAG_member
	.byte	146                             # DW_AT_name
	.long	191                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	64                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x78c:0x9 DW_TAG_member
	.byte	147                             # DW_AT_name
	.long	191                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x795:0x9 DW_TAG_member
	.byte	148                             # DW_AT_name
	.long	1535                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_rnglists,"",@progbits
	.long	.Ldebug_list_header_end1-.Ldebug_list_header_start1 # Length
.Ldebug_list_header_start1:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	4                               # Offset entry count
.Lrnglists_table_base0:
	.long	.Ldebug_ranges0-.Lrnglists_table_base0
	.long	.Ldebug_ranges1-.Lrnglists_table_base0
	.long	.Ldebug_ranges2-.Lrnglists_table_base0
	.long	.Ldebug_ranges3-.Lrnglists_table_base0
.Ldebug_ranges0:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp151-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp203-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp212-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges1:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp51-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp125-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp126-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp151-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp203-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp212-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges2:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp150-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp151-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp208-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp212-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges3:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp195-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp200-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp215-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp220-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	608                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/lzma/lzma_encoder_optimum_fast.c" # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/xz-test/src" # string offset=146
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=178
.Linfo_string4:
	.asciz	"LZMA_RUN"                      # string offset=191
.Linfo_string5:
	.asciz	"LZMA_SYNC_FLUSH"               # string offset=200
.Linfo_string6:
	.asciz	"LZMA_FULL_FLUSH"               # string offset=216
.Linfo_string7:
	.asciz	"LZMA_FINISH"                   # string offset=232
.Linfo_string8:
	.asciz	"low"                           # string offset=244
.Linfo_string9:
	.asciz	"unsigned long"                 # string offset=248
.Linfo_string10:
	.asciz	"__uint64_t"                    # string offset=262
.Linfo_string11:
	.asciz	"uint64_t"                      # string offset=273
.Linfo_string12:
	.asciz	"cache_size"                    # string offset=282
.Linfo_string13:
	.asciz	"range"                         # string offset=293
.Linfo_string14:
	.asciz	"__uint32_t"                    # string offset=299
.Linfo_string15:
	.asciz	"uint32_t"                      # string offset=310
.Linfo_string16:
	.asciz	"cache"                         # string offset=319
.Linfo_string17:
	.asciz	"unsigned char"                 # string offset=325
.Linfo_string18:
	.asciz	"__uint8_t"                     # string offset=339
.Linfo_string19:
	.asciz	"uint8_t"                       # string offset=349
.Linfo_string20:
	.asciz	"count"                         # string offset=357
.Linfo_string21:
	.asciz	"size_t"                        # string offset=363
.Linfo_string22:
	.asciz	"pos"                           # string offset=370
.Linfo_string23:
	.asciz	"symbols"                       # string offset=374
.Linfo_string24:
	.asciz	"RC_BIT_0"                      # string offset=382
.Linfo_string25:
	.asciz	"RC_BIT_1"                      # string offset=391
.Linfo_string26:
	.asciz	"RC_DIRECT_0"                   # string offset=400
.Linfo_string27:
	.asciz	"RC_DIRECT_1"                   # string offset=412
.Linfo_string28:
	.asciz	"RC_FLUSH"                      # string offset=424
.Linfo_string29:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=433
.Linfo_string30:
	.asciz	"probs"                         # string offset=453
.Linfo_string31:
	.asciz	"unsigned short"                # string offset=459
.Linfo_string32:
	.asciz	"__uint16_t"                    # string offset=474
.Linfo_string33:
	.asciz	"uint16_t"                      # string offset=485
.Linfo_string34:
	.asciz	"probability"                   # string offset=494
.Linfo_string35:
	.asciz	"STATE_LIT_LIT"                 # string offset=506
.Linfo_string36:
	.asciz	"STATE_MATCH_LIT_LIT"           # string offset=520
.Linfo_string37:
	.asciz	"STATE_REP_LIT_LIT"             # string offset=540
.Linfo_string38:
	.asciz	"STATE_SHORTREP_LIT_LIT"        # string offset=558
.Linfo_string39:
	.asciz	"STATE_MATCH_LIT"               # string offset=581
.Linfo_string40:
	.asciz	"STATE_REP_LIT"                 # string offset=597
.Linfo_string41:
	.asciz	"STATE_SHORTREP_LIT"            # string offset=611
.Linfo_string42:
	.asciz	"STATE_LIT_MATCH"               # string offset=630
.Linfo_string43:
	.asciz	"STATE_LIT_LONGREP"             # string offset=646
.Linfo_string44:
	.asciz	"STATE_LIT_SHORTREP"            # string offset=664
.Linfo_string45:
	.asciz	"STATE_NONLIT_MATCH"            # string offset=683
.Linfo_string46:
	.asciz	"STATE_NONLIT_REP"              # string offset=702
.Linfo_string47:
	.asciz	"mf_avail"                      # string offset=719
.Linfo_string48:
	.asciz	"mf"                            # string offset=728
.Linfo_string49:
	.asciz	"buffer"                        # string offset=731
.Linfo_string50:
	.asciz	"size"                          # string offset=738
.Linfo_string51:
	.asciz	"keep_size_before"              # string offset=743
.Linfo_string52:
	.asciz	"keep_size_after"               # string offset=760
.Linfo_string53:
	.asciz	"offset"                        # string offset=776
.Linfo_string54:
	.asciz	"read_pos"                      # string offset=783
.Linfo_string55:
	.asciz	"read_ahead"                    # string offset=792
.Linfo_string56:
	.asciz	"read_limit"                    # string offset=803
.Linfo_string57:
	.asciz	"write_pos"                     # string offset=814
.Linfo_string58:
	.asciz	"pending"                       # string offset=824
.Linfo_string59:
	.asciz	"find"                          # string offset=832
.Linfo_string60:
	.asciz	"len"                           # string offset=837
.Linfo_string61:
	.asciz	"dist"                          # string offset=841
.Linfo_string62:
	.asciz	"lzma_match"                    # string offset=846
.Linfo_string63:
	.asciz	"skip"                          # string offset=857
.Linfo_string64:
	.asciz	"hash"                          # string offset=862
.Linfo_string65:
	.asciz	"son"                           # string offset=867
.Linfo_string66:
	.asciz	"cyclic_pos"                    # string offset=871
.Linfo_string67:
	.asciz	"cyclic_size"                   # string offset=882
.Linfo_string68:
	.asciz	"hash_mask"                     # string offset=894
.Linfo_string69:
	.asciz	"depth"                         # string offset=904
.Linfo_string70:
	.asciz	"nice_len"                      # string offset=910
.Linfo_string71:
	.asciz	"match_len_max"                 # string offset=919
.Linfo_string72:
	.asciz	"action"                        # string offset=933
.Linfo_string73:
	.asciz	"lzma_action"                   # string offset=940
.Linfo_string74:
	.asciz	"hash_size_sum"                 # string offset=952
.Linfo_string75:
	.asciz	"sons_count"                    # string offset=966
.Linfo_string76:
	.asciz	"lzma_mf_s"                     # string offset=977
.Linfo_string77:
	.asciz	"lzma_mf"                       # string offset=987
.Linfo_string78:
	.asciz	"mf_skip"                       # string offset=995
.Linfo_string79:
	.asciz	"amount"                        # string offset=1003
.Linfo_string80:
	.asciz	"lzma_mf_find"                  # string offset=1010
.Linfo_string81:
	.asciz	"lzma_lzma_optimum_fast"        # string offset=1023
.Linfo_string82:
	.asciz	"matches_count"                 # string offset=1046
.Linfo_string83:
	.asciz	"pcoder"                        # string offset=1060
.Linfo_string84:
	.asciz	"lzma_coder"                    # string offset=1067
.Linfo_string85:
	.asciz	"back_res"                      # string offset=1078
.Linfo_string86:
	.asciz	"len_res"                       # string offset=1087
.Linfo_string87:
	.asciz	"len_main"                      # string offset=1095
.Linfo_string88:
	.asciz	"buf"                           # string offset=1104
.Linfo_string89:
	.asciz	"buf_avail"                     # string offset=1108
.Linfo_string90:
	.asciz	"i"                             # string offset=1118
.Linfo_string91:
	.asciz	"rep_len"                       # string offset=1120
.Linfo_string92:
	.asciz	"rep_index"                     # string offset=1128
.Linfo_string93:
	.asciz	"buf_back"                      # string offset=1138
.Linfo_string94:
	.asciz	"back_main"                     # string offset=1147
.Linfo_string95:
	.asciz	"new_dist"                      # string offset=1157
.Linfo_string96:
	.asciz	"limit"                         # string offset=1166
.Linfo_string97:
	.asciz	"coder"                         # string offset=1172
.Linfo_string98:
	.asciz	"rc"                            # string offset=1178
.Linfo_string99:
	.asciz	"lzma_range_encoder"            # string offset=1181
.Linfo_string100:
	.asciz	"state"                         # string offset=1200
.Linfo_string101:
	.asciz	"lzma_lzma_state"               # string offset=1206
.Linfo_string102:
	.asciz	"reps"                          # string offset=1222
.Linfo_string103:
	.asciz	"matches"                       # string offset=1227
.Linfo_string104:
	.asciz	"longest_match_length"          # string offset=1235
.Linfo_string105:
	.asciz	"fast_mode"                     # string offset=1256
.Linfo_string106:
	.asciz	"_Bool"                         # string offset=1266
.Linfo_string107:
	.asciz	"is_initialized"                # string offset=1272
.Linfo_string108:
	.asciz	"is_flushed"                    # string offset=1287
.Linfo_string109:
	.asciz	"pos_mask"                      # string offset=1298
.Linfo_string110:
	.asciz	"literal_context_bits"          # string offset=1307
.Linfo_string111:
	.asciz	"literal_pos_mask"              # string offset=1328
.Linfo_string112:
	.asciz	"literal"                       # string offset=1345
.Linfo_string113:
	.asciz	"is_match"                      # string offset=1353
.Linfo_string114:
	.asciz	"is_rep"                        # string offset=1362
.Linfo_string115:
	.asciz	"is_rep0"                       # string offset=1369
.Linfo_string116:
	.asciz	"is_rep1"                       # string offset=1377
.Linfo_string117:
	.asciz	"is_rep2"                       # string offset=1385
.Linfo_string118:
	.asciz	"is_rep0_long"                  # string offset=1393
.Linfo_string119:
	.asciz	"pos_slot"                      # string offset=1406
.Linfo_string120:
	.asciz	"pos_special"                   # string offset=1415
.Linfo_string121:
	.asciz	"pos_align"                     # string offset=1427
.Linfo_string122:
	.asciz	"match_len_encoder"             # string offset=1437
.Linfo_string123:
	.asciz	"choice"                        # string offset=1455
.Linfo_string124:
	.asciz	"choice2"                       # string offset=1462
.Linfo_string125:
	.asciz	"mid"                           # string offset=1470
.Linfo_string126:
	.asciz	"high"                          # string offset=1474
.Linfo_string127:
	.asciz	"prices"                        # string offset=1479
.Linfo_string128:
	.asciz	"table_size"                    # string offset=1486
.Linfo_string129:
	.asciz	"counters"                      # string offset=1497
.Linfo_string130:
	.asciz	"lzma_length_encoder"           # string offset=1506
.Linfo_string131:
	.asciz	"rep_len_encoder"               # string offset=1526
.Linfo_string132:
	.asciz	"pos_slot_prices"               # string offset=1542
.Linfo_string133:
	.asciz	"distances_prices"              # string offset=1558
.Linfo_string134:
	.asciz	"dist_table_size"               # string offset=1575
.Linfo_string135:
	.asciz	"match_price_count"             # string offset=1591
.Linfo_string136:
	.asciz	"align_prices"                  # string offset=1609
.Linfo_string137:
	.asciz	"align_price_count"             # string offset=1622
.Linfo_string138:
	.asciz	"opts_end_index"                # string offset=1640
.Linfo_string139:
	.asciz	"opts_current_index"            # string offset=1655
.Linfo_string140:
	.asciz	"opts"                          # string offset=1674
.Linfo_string141:
	.asciz	"prev_1_is_literal"             # string offset=1679
.Linfo_string142:
	.asciz	"prev_2"                        # string offset=1697
.Linfo_string143:
	.asciz	"pos_prev_2"                    # string offset=1704
.Linfo_string144:
	.asciz	"back_prev_2"                   # string offset=1715
.Linfo_string145:
	.asciz	"price"                         # string offset=1727
.Linfo_string146:
	.asciz	"pos_prev"                      # string offset=1733
.Linfo_string147:
	.asciz	"back_prev"                     # string offset=1742
.Linfo_string148:
	.asciz	"backs"                         # string offset=1752
.Linfo_string149:
	.asciz	"lzma_optimal"                  # string offset=1758
.Linfo_string150:
	.asciz	"lzma_coder_s"                  # string offset=1771
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.Lfunc_begin0
	.quad	.Ltmp10
	.quad	.Ltmp183
	.quad	.Ltmp179
	.quad	.Ltmp185
	.quad	.Ltmp222
	.quad	.Ltmp291
	.quad	.Ltmp7
	.quad	.Ltmp180
	.quad	.Ltmp186
	.quad	.Ltmp192
	.quad	.Ltmp211
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
