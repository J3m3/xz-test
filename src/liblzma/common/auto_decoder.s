	.text
	.file	"auto_decoder.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/common/auto_decoder.c" md5 0x068df4f0ac82120f07aa061486068a40
	.file	1 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.file	2 "liblzma/api/lzma" "check.h" md5 0xb07c3297e2bcc14bb477793d08325ee3
	.file	3 "liblzma/common" "common.h" md5 0xb445e74fc76042ed64f7e1908fcc1934
	.file	4 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	5 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	6 "liblzma/api/lzma" "vli.h" md5 0xe1aa51527ce08aa260777d4fb351a0b7
	.file	7 "/usr/include" "stdint.h" md5 0xa48e64edacc5b19f56c99745232c963c
	.file	8 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.file	9 "liblzma/api/lzma" "filter.h" md5 0x5eb86d86854a7619ed1d1ac1b57b2484
	.globl	lzma_auto_decoder               # -- Begin function lzma_auto_decoder
	.p2align	4, 0x90
	.type	lzma_auto_decoder,@function
lzma_auto_decoder:                      # @lzma_auto_decoder
.Lfunc_begin0:
	.loc	0 183 0                         # liblzma/common/auto_decoder.c:183:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_auto_decoder:strm <- $rdi
	#DEBUG_VALUE: lzma_auto_decoder:memlimit <- $rsi
	#DEBUG_VALUE: lzma_auto_decoder:flags <- $edx
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
	movl	%edx, %ebp
	movq	%rsi, %r14
	movq	%rdi, %rbx
.Ltmp0:
	.loc	0 184 2 prologue_end            # liblzma/common/auto_decoder.c:184:2
	callq	lzma_strm_init@PLT
.Ltmp1:
	#DEBUG_VALUE: lzma_auto_decoder:flags <- $ebp
	#DEBUG_VALUE: lzma_auto_decoder:memlimit <- $r14
	#DEBUG_VALUE: lzma_auto_decoder:strm <- $rbx
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 184 2 is_stmt 0               # liblzma/common/auto_decoder.c:184:2
	testl	%eax, %eax
	jne	.LBB0_12
.Ltmp2:
# %bb.1:                                # %do.end
	#DEBUG_VALUE: lzma_auto_decoder:strm <- $rbx
	#DEBUG_VALUE: lzma_auto_decoder:memlimit <- $r14
	#DEBUG_VALUE: lzma_auto_decoder:flags <- $ebp
	.loc	0 184 2                         # liblzma/common/auto_decoder.c:184:2
	movq	48(%rbx), %r12
.Ltmp3:
	#DEBUG_VALUE: auto_decoder_init:allocator <- $r12
	movq	56(%rbx), %r15
.Ltmp4:
	#DEBUG_VALUE: auto_decoder_init:next <- $r15
	#DEBUG_VALUE: auto_decoder_init:memlimit <- $r14
	#DEBUG_VALUE: auto_decoder_init:flags <- $ebp
	.loc	0 153 2 is_stmt 1               # liblzma/common/auto_decoder.c:153:2
	cmpq	$auto_decoder_init, 16(%r15)
.Ltmp5:
	.loc	0 153 2 is_stmt 0               # liblzma/common/auto_decoder.c:153:2
	je	.LBB0_3
.Ltmp6:
# %bb.2:                                # %if.then.i
	#DEBUG_VALUE: lzma_auto_decoder:strm <- $rbx
	#DEBUG_VALUE: lzma_auto_decoder:memlimit <- $r14
	#DEBUG_VALUE: lzma_auto_decoder:flags <- $ebp
	#DEBUG_VALUE: auto_decoder_init:allocator <- $r12
	#DEBUG_VALUE: auto_decoder_init:next <- $r15
	#DEBUG_VALUE: auto_decoder_init:memlimit <- $r14
	#DEBUG_VALUE: auto_decoder_init:flags <- $ebp
	.loc	0 153 2                         # liblzma/common/auto_decoder.c:153:2
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	lzma_next_end@PLT
.Ltmp7:
.LBB0_3:                                # %if.end.i
	#DEBUG_VALUE: lzma_auto_decoder:strm <- $rbx
	#DEBUG_VALUE: lzma_auto_decoder:memlimit <- $r14
	#DEBUG_VALUE: lzma_auto_decoder:flags <- $ebp
	#DEBUG_VALUE: auto_decoder_init:allocator <- $r12
	#DEBUG_VALUE: auto_decoder_init:next <- $r15
	#DEBUG_VALUE: auto_decoder_init:memlimit <- $r14
	#DEBUG_VALUE: auto_decoder_init:flags <- $ebp
	.loc	0 153 2                         # liblzma/common/auto_decoder.c:153:2
	movq	$auto_decoder_init, 16(%r15)
.Ltmp8:
	.loc	0 155 15 is_stmt 1              # liblzma/common/auto_decoder.c:155:15
	testq	%r14, %r14
.Ltmp9:
	.loc	0 155 6 is_stmt 0               # liblzma/common/auto_decoder.c:155:6
	je	.LBB0_4
.Ltmp10:
# %bb.5:                                # %if.end4.i
	#DEBUG_VALUE: lzma_auto_decoder:strm <- $rbx
	#DEBUG_VALUE: lzma_auto_decoder:memlimit <- $r14
	#DEBUG_VALUE: lzma_auto_decoder:flags <- $ebp
	#DEBUG_VALUE: auto_decoder_init:allocator <- $r12
	#DEBUG_VALUE: auto_decoder_init:next <- $r15
	#DEBUG_VALUE: auto_decoder_init:memlimit <- $r14
	#DEBUG_VALUE: auto_decoder_init:flags <- $ebp
	.loc	0 0 6                           # liblzma/common/auto_decoder.c:0:6
	movl	$8, %eax
.Ltmp11:
	.loc	0 158 12 is_stmt 1              # liblzma/common/auto_decoder.c:158:12
	cmpl	$15, %ebp
.Ltmp12:
	.loc	0 158 6 is_stmt 0               # liblzma/common/auto_decoder.c:158:6
	ja	.LBB0_9
.Ltmp13:
# %bb.6:                                # %if.end6.i
	#DEBUG_VALUE: lzma_auto_decoder:strm <- $rbx
	#DEBUG_VALUE: lzma_auto_decoder:memlimit <- $r14
	#DEBUG_VALUE: lzma_auto_decoder:flags <- $ebp
	#DEBUG_VALUE: auto_decoder_init:allocator <- $r12
	#DEBUG_VALUE: auto_decoder_init:next <- $r15
	#DEBUG_VALUE: auto_decoder_init:memlimit <- $r14
	#DEBUG_VALUE: auto_decoder_init:flags <- $ebp
	.loc	0 161 12 is_stmt 1              # liblzma/common/auto_decoder.c:161:12
	movq	(%r15), %rax
	.loc	0 161 18 is_stmt 0              # liblzma/common/auto_decoder.c:161:18
	testq	%rax, %rax
.Ltmp14:
	.loc	0 161 6                         # liblzma/common/auto_decoder.c:161:6
	jne	.LBB0_11
.Ltmp15:
# %bb.7:                                # %if.then8.i
	#DEBUG_VALUE: lzma_auto_decoder:strm <- $rbx
	#DEBUG_VALUE: lzma_auto_decoder:memlimit <- $r14
	#DEBUG_VALUE: lzma_auto_decoder:flags <- $ebp
	#DEBUG_VALUE: auto_decoder_init:allocator <- $r12
	#DEBUG_VALUE: auto_decoder_init:next <- $r15
	#DEBUG_VALUE: auto_decoder_init:memlimit <- $r14
	#DEBUG_VALUE: auto_decoder_init:flags <- $ebp
	.loc	0 162 17 is_stmt 1              # liblzma/common/auto_decoder.c:162:17
	movl	$80, %edi
	movq	%r12, %rsi
	callq	lzma_alloc@PLT
.Ltmp16:
	.loc	0 162 15 is_stmt 0              # liblzma/common/auto_decoder.c:162:15
	movq	%rax, (%r15)
.Ltmp17:
	.loc	0 163 19 is_stmt 1              # liblzma/common/auto_decoder.c:163:19
	testq	%rax, %rax
.Ltmp18:
	.loc	0 163 7 is_stmt 0               # liblzma/common/auto_decoder.c:163:7
	je	.LBB0_8
.Ltmp19:
# %bb.10:                               # %if.end13.i
	#DEBUG_VALUE: lzma_auto_decoder:strm <- $rbx
	#DEBUG_VALUE: lzma_auto_decoder:memlimit <- $r14
	#DEBUG_VALUE: lzma_auto_decoder:flags <- $ebp
	#DEBUG_VALUE: auto_decoder_init:allocator <- $r12
	#DEBUG_VALUE: auto_decoder_init:next <- $r15
	#DEBUG_VALUE: auto_decoder_init:memlimit <- $r14
	#DEBUG_VALUE: auto_decoder_init:flags <- $ebp
	.loc	0 166 14 is_stmt 1              # liblzma/common/auto_decoder.c:166:14
	movq	$auto_decode, 24(%r15)
	.loc	0 167 13                        # liblzma/common/auto_decoder.c:167:13
	movq	$auto_decoder_end, 32(%r15)
	.loc	0 168 19                        # liblzma/common/auto_decoder.c:168:19
	movq	$auto_decoder_get_check, 40(%r15)
	.loc	0 169 19                        # liblzma/common/auto_decoder.c:169:19
	movq	$auto_decoder_memconfig, 48(%r15)
	.loc	0 170 47                        # liblzma/common/auto_decoder.c:170:47
	movq	$0, (%rax)
	movq	$-1, 8(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rax)
	movups	%xmm0, 32(%rax)
	movups	%xmm0, 48(%rax)
.Ltmp20:
	.loc	0 173 31                        # liblzma/common/auto_decoder.c:173:31
	movq	(%r15), %rax
.Ltmp21:
.LBB0_11:                               # %do.end10
	#DEBUG_VALUE: lzma_auto_decoder:strm <- $rbx
	#DEBUG_VALUE: lzma_auto_decoder:memlimit <- $r14
	#DEBUG_VALUE: lzma_auto_decoder:flags <- $ebp
	#DEBUG_VALUE: auto_decoder_init:allocator <- $r12
	#DEBUG_VALUE: auto_decoder_init:next <- $r15
	#DEBUG_VALUE: auto_decoder_init:memlimit <- $r14
	#DEBUG_VALUE: auto_decoder_init:flags <- $ebp
	.loc	0 173 48 is_stmt 0              # liblzma/common/auto_decoder.c:173:48
	movq	%r14, 64(%rax)
	.loc	0 174 31 is_stmt 1              # liblzma/common/auto_decoder.c:174:31
	movq	(%r15), %rax
	.loc	0 174 45 is_stmt 0              # liblzma/common/auto_decoder.c:174:45
	movl	%ebp, 72(%rax)
	.loc	0 175 31 is_stmt 1              # liblzma/common/auto_decoder.c:175:31
	movq	(%r15), %rax
	.loc	0 175 48 is_stmt 0              # liblzma/common/auto_decoder.c:175:48
	movl	$0, 76(%rax)
.Ltmp22:
	#DEBUG_VALUE: ret_ <- 0
	.loc	0 186 8 is_stmt 1               # liblzma/common/auto_decoder.c:186:8
	movq	56(%rbx), %rax
	.loc	0 186 46 is_stmt 0              # liblzma/common/auto_decoder.c:186:46
	movb	$1, 80(%rax)
	.loc	0 187 8 is_stmt 1               # liblzma/common/auto_decoder.c:187:8
	movq	56(%rbx), %rax
	.loc	0 187 49 is_stmt 0              # liblzma/common/auto_decoder.c:187:49
	movb	$1, 83(%rax)
	xorl	%eax, %eax
	jmp	.LBB0_12
.Ltmp23:
.LBB0_4:
	#DEBUG_VALUE: lzma_auto_decoder:strm <- $rbx
	#DEBUG_VALUE: lzma_auto_decoder:memlimit <- $r14
	#DEBUG_VALUE: lzma_auto_decoder:flags <- $ebp
	#DEBUG_VALUE: auto_decoder_init:allocator <- $r12
	#DEBUG_VALUE: auto_decoder_init:next <- $r15
	#DEBUG_VALUE: auto_decoder_init:memlimit <- $r14
	#DEBUG_VALUE: auto_decoder_init:flags <- $ebp
	.loc	0 0 49                          # liblzma/common/auto_decoder.c:0:49
	movl	$11, %eax
.Ltmp24:
.LBB0_9:                                # %cleanup7
	#DEBUG_VALUE: lzma_auto_decoder:strm <- $rbx
	#DEBUG_VALUE: lzma_auto_decoder:memlimit <- $r14
	#DEBUG_VALUE: lzma_auto_decoder:flags <- $ebp
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 184 2 is_stmt 1               # liblzma/common/auto_decoder.c:184:2
	movq	%rbx, %rdi
	movl	%eax, %ebx
.Ltmp25:
	#DEBUG_VALUE: ret_ <- $ebx
	#DEBUG_VALUE: lzma_auto_decoder:strm <- $rdi
	callq	lzma_end@PLT
.Ltmp26:
	#DEBUG_VALUE: lzma_auto_decoder:strm <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 0 2 is_stmt 0                 # liblzma/common/auto_decoder.c:0:2
	movl	%ebx, %eax
.Ltmp27:
.LBB0_12:                               # %return
	#DEBUG_VALUE: lzma_auto_decoder:strm <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_auto_decoder:memlimit <- $r14
	#DEBUG_VALUE: lzma_auto_decoder:flags <- $ebp
	.loc	0 190 1 epilogue_begin is_stmt 1 # liblzma/common/auto_decoder.c:190:1
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
.Ltmp28:
	#DEBUG_VALUE: lzma_auto_decoder:memlimit <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
.Ltmp29:
	#DEBUG_VALUE: lzma_auto_decoder:flags <- [DW_OP_LLVM_entry_value 1] $edx
	.cfi_def_cfa_offset 8
	retq
.Ltmp30:
.LBB0_8:
	.cfi_def_cfa_offset 48
	#DEBUG_VALUE: lzma_auto_decoder:strm <- $rbx
	#DEBUG_VALUE: lzma_auto_decoder:memlimit <- $r14
	#DEBUG_VALUE: lzma_auto_decoder:flags <- $ebp
	#DEBUG_VALUE: auto_decoder_init:allocator <- $r12
	#DEBUG_VALUE: auto_decoder_init:next <- $r15
	#DEBUG_VALUE: auto_decoder_init:memlimit <- $r14
	#DEBUG_VALUE: auto_decoder_init:flags <- $ebp
	.loc	0 0 1 is_stmt 0                 # liblzma/common/auto_decoder.c:0:1
	movl	$5, %eax
	jmp	.LBB0_9
.Lfunc_end0:
	.size	lzma_auto_decoder, .Lfunc_end0-lzma_auto_decoder
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function auto_decoder_init
	.type	auto_decoder_init,@function
auto_decoder_init:                      # @auto_decoder_init
.Lfunc_begin1:
	.loc	0 152 0 is_stmt 1               # liblzma/common/auto_decoder.c:152:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: auto_decoder_init:next <- $rdi
	#DEBUG_VALUE: auto_decoder_init:allocator <- $rsi
	#DEBUG_VALUE: auto_decoder_init:memlimit <- $rdx
	#DEBUG_VALUE: auto_decoder_init:flags <- $ecx
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
	movl	%ecx, %ebx
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %r14
.Ltmp31:
	.loc	0 153 2 prologue_end            # liblzma/common/auto_decoder.c:153:2
	cmpq	$auto_decoder_init, 16(%rdi)
.Ltmp32:
	.loc	0 153 2 is_stmt 0               # liblzma/common/auto_decoder.c:153:2
	je	.LBB1_2
.Ltmp33:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: auto_decoder_init:next <- $r14
	#DEBUG_VALUE: auto_decoder_init:allocator <- $r12
	#DEBUG_VALUE: auto_decoder_init:memlimit <- $r15
	#DEBUG_VALUE: auto_decoder_init:flags <- $ebx
	.loc	0 153 2                         # liblzma/common/auto_decoder.c:153:2
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	lzma_next_end@PLT
.Ltmp34:
.LBB1_2:                                # %if.end
	#DEBUG_VALUE: auto_decoder_init:next <- $r14
	#DEBUG_VALUE: auto_decoder_init:allocator <- $r12
	#DEBUG_VALUE: auto_decoder_init:memlimit <- $r15
	#DEBUG_VALUE: auto_decoder_init:flags <- $ebx
	.loc	0 153 2                         # liblzma/common/auto_decoder.c:153:2
	movq	$auto_decoder_init, 16(%r14)
.Ltmp35:
	.loc	0 155 15 is_stmt 1              # liblzma/common/auto_decoder.c:155:15
	testq	%r15, %r15
.Ltmp36:
	.loc	0 155 6 is_stmt 0               # liblzma/common/auto_decoder.c:155:6
	je	.LBB1_3
.Ltmp37:
# %bb.4:                                # %if.end4
	#DEBUG_VALUE: auto_decoder_init:next <- $r14
	#DEBUG_VALUE: auto_decoder_init:allocator <- $r12
	#DEBUG_VALUE: auto_decoder_init:memlimit <- $r15
	#DEBUG_VALUE: auto_decoder_init:flags <- $ebx
	.loc	0 0 6                           # liblzma/common/auto_decoder.c:0:6
	movl	$8, %eax
.Ltmp38:
	.loc	0 158 12 is_stmt 1              # liblzma/common/auto_decoder.c:158:12
	cmpl	$15, %ebx
.Ltmp39:
	.loc	0 158 6 is_stmt 0               # liblzma/common/auto_decoder.c:158:6
	ja	.LBB1_10
.Ltmp40:
# %bb.5:                                # %if.end6
	#DEBUG_VALUE: auto_decoder_init:next <- $r14
	#DEBUG_VALUE: auto_decoder_init:allocator <- $r12
	#DEBUG_VALUE: auto_decoder_init:memlimit <- $r15
	#DEBUG_VALUE: auto_decoder_init:flags <- $ebx
	.loc	0 161 12 is_stmt 1              # liblzma/common/auto_decoder.c:161:12
	movq	(%r14), %rax
	.loc	0 161 18 is_stmt 0              # liblzma/common/auto_decoder.c:161:18
	testq	%rax, %rax
.Ltmp41:
	.loc	0 161 6                         # liblzma/common/auto_decoder.c:161:6
	jne	.LBB1_9
.Ltmp42:
# %bb.6:                                # %if.then8
	#DEBUG_VALUE: auto_decoder_init:next <- $r14
	#DEBUG_VALUE: auto_decoder_init:allocator <- $r12
	#DEBUG_VALUE: auto_decoder_init:memlimit <- $r15
	#DEBUG_VALUE: auto_decoder_init:flags <- $ebx
	.loc	0 162 17 is_stmt 1              # liblzma/common/auto_decoder.c:162:17
	movl	$80, %edi
	movq	%r12, %rsi
	callq	lzma_alloc@PLT
.Ltmp43:
	.loc	0 162 15 is_stmt 0              # liblzma/common/auto_decoder.c:162:15
	movq	%rax, (%r14)
.Ltmp44:
	.loc	0 163 19 is_stmt 1              # liblzma/common/auto_decoder.c:163:19
	testq	%rax, %rax
.Ltmp45:
	.loc	0 163 7 is_stmt 0               # liblzma/common/auto_decoder.c:163:7
	je	.LBB1_7
.Ltmp46:
# %bb.8:                                # %if.end13
	#DEBUG_VALUE: auto_decoder_init:next <- $r14
	#DEBUG_VALUE: auto_decoder_init:allocator <- $r12
	#DEBUG_VALUE: auto_decoder_init:memlimit <- $r15
	#DEBUG_VALUE: auto_decoder_init:flags <- $ebx
	.loc	0 166 14 is_stmt 1              # liblzma/common/auto_decoder.c:166:14
	movq	$auto_decode, 24(%r14)
	.loc	0 167 13                        # liblzma/common/auto_decoder.c:167:13
	movq	$auto_decoder_end, 32(%r14)
	.loc	0 168 19                        # liblzma/common/auto_decoder.c:168:19
	movq	$auto_decoder_get_check, 40(%r14)
	.loc	0 169 19                        # liblzma/common/auto_decoder.c:169:19
	movq	$auto_decoder_memconfig, 48(%r14)
	.loc	0 170 47                        # liblzma/common/auto_decoder.c:170:47
	movq	$0, (%rax)
	movq	$-1, 8(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rax)
	movups	%xmm0, 32(%rax)
	movups	%xmm0, 48(%rax)
.Ltmp47:
	.loc	0 173 31                        # liblzma/common/auto_decoder.c:173:31
	movq	(%r14), %rax
.Ltmp48:
.LBB1_9:                                # %if.end22
	#DEBUG_VALUE: auto_decoder_init:next <- $r14
	#DEBUG_VALUE: auto_decoder_init:allocator <- $r12
	#DEBUG_VALUE: auto_decoder_init:memlimit <- $r15
	#DEBUG_VALUE: auto_decoder_init:flags <- $ebx
	.loc	0 173 48 is_stmt 0              # liblzma/common/auto_decoder.c:173:48
	movq	%r15, 64(%rax)
	.loc	0 174 31 is_stmt 1              # liblzma/common/auto_decoder.c:174:31
	movq	(%r14), %rax
	.loc	0 174 45 is_stmt 0              # liblzma/common/auto_decoder.c:174:45
	movl	%ebx, 72(%rax)
	.loc	0 175 31 is_stmt 1              # liblzma/common/auto_decoder.c:175:31
	movq	(%r14), %rax
	.loc	0 175 48 is_stmt 0              # liblzma/common/auto_decoder.c:175:48
	movl	$0, 76(%rax)
	xorl	%eax, %eax
	jmp	.LBB1_10
.Ltmp49:
.LBB1_3:
	#DEBUG_VALUE: auto_decoder_init:next <- $r14
	#DEBUG_VALUE: auto_decoder_init:allocator <- $r12
	#DEBUG_VALUE: auto_decoder_init:memlimit <- $r15
	#DEBUG_VALUE: auto_decoder_init:flags <- $ebx
	.loc	0 0 48                          # liblzma/common/auto_decoder.c:0:48
	movl	$11, %eax
.Ltmp50:
.LBB1_10:                               # %return
	#DEBUG_VALUE: auto_decoder_init:next <- $r14
	#DEBUG_VALUE: auto_decoder_init:allocator <- $r12
	#DEBUG_VALUE: auto_decoder_init:memlimit <- $r15
	#DEBUG_VALUE: auto_decoder_init:flags <- $ebx
	.loc	0 178 1 epilogue_begin is_stmt 1 # liblzma/common/auto_decoder.c:178:1
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
.Ltmp51:
	#DEBUG_VALUE: auto_decoder_init:flags <- [DW_OP_LLVM_entry_value 1] $ecx
	.cfi_def_cfa_offset 32
	popq	%r12
.Ltmp52:
	#DEBUG_VALUE: auto_decoder_init:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp53:
	#DEBUG_VALUE: auto_decoder_init:next <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 16
	popq	%r15
.Ltmp54:
	#DEBUG_VALUE: auto_decoder_init:memlimit <- [DW_OP_LLVM_entry_value 1] $rdx
	.cfi_def_cfa_offset 8
	retq
.Ltmp55:
.LBB1_7:
	.cfi_def_cfa_offset 48
	#DEBUG_VALUE: auto_decoder_init:next <- $r14
	#DEBUG_VALUE: auto_decoder_init:allocator <- $r12
	#DEBUG_VALUE: auto_decoder_init:memlimit <- $r15
	#DEBUG_VALUE: auto_decoder_init:flags <- $ebx
	.loc	0 0 1 is_stmt 0                 # liblzma/common/auto_decoder.c:0:1
	movl	$5, %eax
.Ltmp56:
	.loc	0 163 7 is_stmt 1               # liblzma/common/auto_decoder.c:163:7
	jmp	.LBB1_10
.Ltmp57:
.Lfunc_end1:
	.size	auto_decoder_init, .Lfunc_end1-auto_decoder_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function auto_decode
	.type	auto_decode,@function
auto_decode:                            # @auto_decode
.Lfunc_begin2:
	.loc	0 37 0                          # liblzma/common/auto_decoder.c:37:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: auto_decode:pcoder <- $rdi
	#DEBUG_VALUE: auto_decode:allocator <- $rsi
	#DEBUG_VALUE: auto_decode:in <- $rdx
	#DEBUG_VALUE: auto_decode:in_pos <- $rcx
	#DEBUG_VALUE: auto_decode:in_size <- $r8
	#DEBUG_VALUE: auto_decode:out <- $r9
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
.Ltmp58:
	#DEBUG_VALUE: auto_decode:out_pos <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: auto_decode:out_size <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: auto_decode:action <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: auto_decode:coder <- $rdi
	movq	%rdi, %rbx
	movl	80(%rsp), %r15d
.Ltmp59:
	.loc	0 39 17 prologue_end            # liblzma/common/auto_decoder.c:39:17
	movl	76(%rdi), %edi
.Ltmp60:
	#DEBUG_VALUE: auto_decode:coder <- $rbx
	#DEBUG_VALUE: auto_decode:pcoder <- $rbx
	.loc	0 39 2 is_stmt 0                # liblzma/common/auto_decoder.c:39:2
	cmpl	$2, %edi
	je	.LBB2_12
.Ltmp61:
# %bb.1:                                # %entry
	#DEBUG_VALUE: auto_decode:pcoder <- $rbx
	#DEBUG_VALUE: auto_decode:allocator <- $rsi
	#DEBUG_VALUE: auto_decode:in <- $rdx
	#DEBUG_VALUE: auto_decode:in_pos <- $rcx
	#DEBUG_VALUE: auto_decode:in_size <- $r8
	#DEBUG_VALUE: auto_decode:out <- $r9
	#DEBUG_VALUE: auto_decode:out_pos <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: auto_decode:out_size <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: auto_decode:action <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: auto_decode:coder <- $rbx
	cmpl	$1, %edi
	je	.LBB2_9
.Ltmp62:
# %bb.2:                                # %entry
	#DEBUG_VALUE: auto_decode:pcoder <- $rbx
	#DEBUG_VALUE: auto_decode:allocator <- $rsi
	#DEBUG_VALUE: auto_decode:in <- $rdx
	#DEBUG_VALUE: auto_decode:in_pos <- $rcx
	#DEBUG_VALUE: auto_decode:in_size <- $r8
	#DEBUG_VALUE: auto_decode:out <- $r9
	#DEBUG_VALUE: auto_decode:out_pos <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: auto_decode:out_size <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: auto_decode:action <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: auto_decode:coder <- $rbx
	.loc	0 0 2                           # liblzma/common/auto_decoder.c:0:2
	movl	$11, %eax
	.loc	0 39 2                          # liblzma/common/auto_decoder.c:39:2
	testl	%edi, %edi
	jne	.LBB2_14
.Ltmp63:
# %bb.3:                                # %sw.bb
	#DEBUG_VALUE: auto_decode:pcoder <- $rbx
	#DEBUG_VALUE: auto_decode:allocator <- $rsi
	#DEBUG_VALUE: auto_decode:in <- $rdx
	#DEBUG_VALUE: auto_decode:in_pos <- $rcx
	#DEBUG_VALUE: auto_decode:in_size <- $r8
	#DEBUG_VALUE: auto_decode:out <- $r9
	#DEBUG_VALUE: auto_decode:out_pos <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: auto_decode:out_size <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: auto_decode:action <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: auto_decode:coder <- $rbx
	.loc	0 41 7 is_stmt 1                # liblzma/common/auto_decoder.c:41:7
	movq	(%rcx), %rdi
	xorl	%eax, %eax
	.loc	0 41 15 is_stmt 0               # liblzma/common/auto_decoder.c:41:15
	cmpq	%r8, %rdi
.Ltmp64:
	.loc	0 41 7                          # liblzma/common/auto_decoder.c:41:7
	jae	.LBB2_14
.Ltmp65:
# %bb.4:                                # %if.end
	#DEBUG_VALUE: auto_decode:pcoder <- $rbx
	#DEBUG_VALUE: auto_decode:allocator <- $rsi
	#DEBUG_VALUE: auto_decode:in <- $rdx
	#DEBUG_VALUE: auto_decode:in_pos <- $rcx
	#DEBUG_VALUE: auto_decode:in_size <- $r8
	#DEBUG_VALUE: auto_decode:out <- $r9
	#DEBUG_VALUE: auto_decode:out_pos <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: auto_decode:out_size <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: auto_decode:action <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: auto_decode:coder <- $rbx
	.loc	0 0 7                           # liblzma/common/auto_decoder.c:0:7
	movq	%r9, (%rsp)                     # 8-byte Spill
.Ltmp66:
	#DEBUG_VALUE: auto_decode:out <- [$rsp+0]
	movq	%rcx, %r13
.Ltmp67:
	#DEBUG_VALUE: auto_decode:in_pos <- $r13
	movq	%r8, %r12
.Ltmp68:
	#DEBUG_VALUE: auto_decode:in_size <- $r12
	.loc	0 46 19 is_stmt 1               # liblzma/common/auto_decoder.c:46:19
	movl	$1, 76(%rbx)
	movq	%rdx, %rbp
.Ltmp69:
	.loc	0 52 19                         # liblzma/common/auto_decoder.c:52:19
	cmpb	$-3, (%rdx,%rdi)
	.loc	0 0 0 is_stmt 0                 # liblzma/common/auto_decoder.c:0:0
	movq	64(%rbx), %rdx
.Ltmp70:
	#DEBUG_VALUE: auto_decode:in <- $rbp
	.loc	0 52 7                          # liblzma/common/auto_decoder.c:52:7
	jne	.LBB2_6
.Ltmp71:
# %bb.5:                                # %do.body
	#DEBUG_VALUE: auto_decode:pcoder <- $rbx
	#DEBUG_VALUE: auto_decode:allocator <- $rsi
	#DEBUG_VALUE: auto_decode:in <- $rbp
	#DEBUG_VALUE: auto_decode:in_pos <- $r13
	#DEBUG_VALUE: auto_decode:in_size <- $r12
	#DEBUG_VALUE: auto_decode:out <- [$rsp+0]
	#DEBUG_VALUE: auto_decode:out_pos <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: auto_decode:out_size <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: auto_decode:action <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: auto_decode:coder <- $rbx
	.loc	0 53 4 is_stmt 1                # liblzma/common/auto_decoder.c:53:4
	movl	72(%rbx), %ecx
	movq	%rbx, %rdi
	movq	%rsi, %r14
	callq	lzma_stream_decoder_init@PLT
.Ltmp72:
	#DEBUG_VALUE: auto_decode:allocator <- $r14
	.loc	0 0 4 is_stmt 0                 # liblzma/common/auto_decoder.c:0:4
	movq	%r14, %rsi
.Ltmp73:
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 53 4                          # liblzma/common/auto_decoder.c:53:4
	testl	%eax, %eax
	movq	%r12, %r8
	movq	%r13, %rcx
	movq	(%rsp), %r9                     # 8-byte Reload
	movq	%rbp, %rdx
.Ltmp74:
	.loc	0 67 8 is_stmt 1                # liblzma/common/auto_decoder.c:67:8
	jne	.LBB2_14
.Ltmp75:
.LBB2_9:                                # %sw.bb32
	#DEBUG_VALUE: auto_decode:pcoder <- $rbx
	#DEBUG_VALUE: auto_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: auto_decode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: auto_decode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: auto_decode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: auto_decode:out <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: auto_decode:out_pos <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: auto_decode:out_size <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: auto_decode:action <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: auto_decode:coder <- $rbx
	.loc	0 75 17                         # liblzma/common/auto_decoder.c:75:17
	movq	(%rbx), %rdi
	.loc	0 74 24                         # liblzma/common/auto_decoder.c:74:24
	subq	$8, %rsp
.Ltmp76:
	.cfi_adjust_cfa_offset 8
	.loc	0 0 24 is_stmt 0                # liblzma/common/auto_decoder.c:0:24
	movq	%rcx, %r14
	movq	%r8, %r12
	.loc	0 74 24                         # liblzma/common/auto_decoder.c:74:24
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	pushq	88(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	88(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	*24(%rbx)
.Ltmp77:
	#DEBUG_VALUE: ret <- $eax
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
.Ltmp78:
	.loc	0 78 11 is_stmt 1               # liblzma/common/auto_decoder.c:78:11
	cmpl	$1, %eax
	.loc	0 79 5                          # liblzma/common/auto_decoder.c:79:5
	jne	.LBB2_14
.Ltmp79:
# %bb.10:                               # %lor.lhs.false
	#DEBUG_VALUE: auto_decode:pcoder <- $rbx
	#DEBUG_VALUE: auto_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: auto_decode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: auto_decode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: auto_decode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: auto_decode:out <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: auto_decode:coder <- $rbx
	#DEBUG_VALUE: ret <- $eax
	.loc	0 0 5 is_stmt 0                 # liblzma/common/auto_decoder.c:0:5
	movl	$1, %eax
.Ltmp80:
	.loc	0 79 43                         # liblzma/common/auto_decoder.c:79:43
	testb	$8, 72(%rbx)
.Ltmp81:
	.loc	0 78 7 is_stmt 1                # liblzma/common/auto_decoder.c:78:7
	je	.LBB2_14
.Ltmp82:
# %bb.11:                               # %cleanup46
	#DEBUG_VALUE: auto_decode:pcoder <- $rbx
	#DEBUG_VALUE: auto_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: auto_decode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: auto_decode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: auto_decode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: auto_decode:out <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: auto_decode:coder <- $rbx
	.loc	0 0 7 is_stmt 0                 # liblzma/common/auto_decoder.c:0:7
	movq	%r12, %r8
	movq	%r14, %rcx
	.loc	0 82 19 is_stmt 1               # liblzma/common/auto_decoder.c:82:19
	movl	$2, 76(%rbx)
.Ltmp83:
.LBB2_12:                               # %sw.bb49
	#DEBUG_VALUE: auto_decode:pcoder <- $rbx
	#DEBUG_VALUE: auto_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: auto_decode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: auto_decode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: auto_decode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: auto_decode:out <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: auto_decode:coder <- $rbx
	.loc	0 0 19 is_stmt 0                # liblzma/common/auto_decoder.c:0:19
	movl	$9, %eax
.Ltmp84:
	.loc	0 91 15 is_stmt 1               # liblzma/common/auto_decoder.c:91:15
	cmpq	%r8, (%rcx)
.Ltmp85:
	.loc	0 91 7 is_stmt 0                # liblzma/common/auto_decoder.c:91:7
	jb	.LBB2_14
.Ltmp86:
# %bb.13:                               # %if.end53
	#DEBUG_VALUE: auto_decode:pcoder <- $rbx
	#DEBUG_VALUE: auto_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: auto_decode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: auto_decode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: auto_decode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: auto_decode:out <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: auto_decode:coder <- $rbx
	.loc	0 94 17 is_stmt 1               # liblzma/common/auto_decoder.c:94:17
	xorl	%eax, %eax
	cmpl	$3, %r15d
	sete	%al
.Ltmp87:
.LBB2_14:                               # %cleanup56
	#DEBUG_VALUE: auto_decode:pcoder <- $rbx
	#DEBUG_VALUE: auto_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: auto_decode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: auto_decode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: auto_decode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: auto_decode:out <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: auto_decode:coder <- $rbx
	.loc	0 100 1 epilogue_begin          # liblzma/common/auto_decoder.c:100:1
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
.Ltmp88:
	#DEBUG_VALUE: auto_decode:pcoder <- [DW_OP_LLVM_entry_value 1] $rdi
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
.Ltmp89:
.LBB2_6:                                # %do.body9
	.cfi_def_cfa_offset 64
	#DEBUG_VALUE: auto_decode:pcoder <- $rbx
	#DEBUG_VALUE: auto_decode:allocator <- $rsi
	#DEBUG_VALUE: auto_decode:in <- $rbp
	#DEBUG_VALUE: auto_decode:in_pos <- $r13
	#DEBUG_VALUE: auto_decode:in_size <- $r12
	#DEBUG_VALUE: auto_decode:out <- [$rsp+0]
	#DEBUG_VALUE: auto_decode:out_pos <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: auto_decode:out_size <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: auto_decode:action <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: auto_decode:coder <- $rbx
	.loc	0 57 4                          # liblzma/common/auto_decoder.c:57:4
	movq	%rbx, %rdi
	movq	%rsi, %r14
	movl	$1, %ecx
	callq	lzma_alone_decoder_init@PLT
.Ltmp90:
	#DEBUG_VALUE: auto_decode:allocator <- $r14
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 57 4 is_stmt 0                # liblzma/common/auto_decoder.c:57:4
	testl	%eax, %eax
	jne	.LBB2_14
.Ltmp91:
# %bb.7:                                # %do.end22
	#DEBUG_VALUE: auto_decode:pcoder <- $rbx
	#DEBUG_VALUE: auto_decode:allocator <- $r14
	#DEBUG_VALUE: auto_decode:in <- $rbp
	#DEBUG_VALUE: auto_decode:in_pos <- $r13
	#DEBUG_VALUE: auto_decode:in_size <- $r12
	#DEBUG_VALUE: auto_decode:out <- [$rsp+0]
	#DEBUG_VALUE: auto_decode:out_pos <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: auto_decode:out_size <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: auto_decode:action <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: auto_decode:coder <- $rbx
	.loc	0 64 15 is_stmt 1               # liblzma/common/auto_decoder.c:64:15
	movl	72(%rbx), %edi
	movl	$2, %eax
.Ltmp92:
	.loc	0 64 8 is_stmt 0                # liblzma/common/auto_decoder.c:64:8
	testb	$1, %dil
	movq	(%rsp), %r9                     # 8-byte Reload
	jne	.LBB2_14
.Ltmp93:
# %bb.8:                                # %if.end25
	#DEBUG_VALUE: auto_decode:pcoder <- $rbx
	#DEBUG_VALUE: auto_decode:allocator <- $r14
	#DEBUG_VALUE: auto_decode:in <- $rbp
	#DEBUG_VALUE: auto_decode:in_pos <- $r13
	#DEBUG_VALUE: auto_decode:in_size <- $r12
	#DEBUG_VALUE: auto_decode:out <- [$rsp+0]
	#DEBUG_VALUE: auto_decode:out_pos <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: auto_decode:out_size <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: auto_decode:action <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: auto_decode:coder <- $rbx
	.loc	0 0 8                           # liblzma/common/auto_decoder.c:0:8
	movq	%r12, %r8
	movq	%r13, %rcx
	movq	%rbp, %rdx
	movq	%r14, %rsi
	movl	$4, %eax
.Ltmp94:
	.loc	0 67 21 is_stmt 1               # liblzma/common/auto_decoder.c:67:21
	testb	$4, %dil
.Ltmp95:
	.loc	0 67 8 is_stmt 0                # liblzma/common/auto_decoder.c:67:8
	je	.LBB2_9
	jmp	.LBB2_14
.Ltmp96:
.Lfunc_end2:
	.size	auto_decode, .Lfunc_end2-auto_decode
	.cfi_endproc
	.file	10 "liblzma/common" "stream_decoder.h" md5 0x82f2a7f1e50521ce1ad27540f4230cca
	.file	11 "liblzma/common" "alone_decoder.h" md5 0x203183a4127ab5050dfd29f01fbfc121
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function auto_decoder_end
	.type	auto_decoder_end,@function
auto_decoder_end:                       # @auto_decoder_end
.Lfunc_begin3:
	.loc	0 105 0 is_stmt 1               # liblzma/common/auto_decoder.c:105:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: auto_decoder_end:pcoder <- $rdi
	#DEBUG_VALUE: auto_decoder_end:allocator <- $rsi
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
.Ltmp97:
	#DEBUG_VALUE: auto_decoder_end:coder <- $rdi
	movq	%rsi, %rbx
	movq	%rdi, %r14
.Ltmp98:
	.loc	0 107 2 prologue_end            # liblzma/common/auto_decoder.c:107:2
	callq	lzma_next_end@PLT
.Ltmp99:
	#DEBUG_VALUE: auto_decoder_end:allocator <- $rbx
	#DEBUG_VALUE: auto_decoder_end:coder <- $r14
	#DEBUG_VALUE: auto_decoder_end:pcoder <- $r14
	.loc	0 108 2                         # liblzma/common/auto_decoder.c:108:2
	movq	%r14, %rdi
	movq	%rbx, %rsi
	.loc	0 108 2 epilogue_begin is_stmt 0 # liblzma/common/auto_decoder.c:108:2
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp100:
	#DEBUG_VALUE: auto_decoder_end:allocator <- $rsi
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp101:
	#DEBUG_VALUE: auto_decoder_end:coder <- $rdi
	#DEBUG_VALUE: auto_decoder_end:pcoder <- $rdi
	.cfi_def_cfa_offset 8
	jmp	lzma_free@PLT                   # TAILCALL
.Ltmp102:
.Lfunc_end3:
	.size	auto_decoder_end, .Lfunc_end3-auto_decoder_end
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function auto_decoder_get_check
	.type	auto_decoder_get_check,@function
auto_decoder_get_check:                 # @auto_decoder_get_check
.Lfunc_begin4:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: auto_decoder_get_check:pcoder <- $rdi
	#DEBUG_VALUE: auto_decoder_get_check:coder <- $rdi
	.loc	0 118 21 prologue_end is_stmt 1 # liblzma/common/auto_decoder.c:118:21
	movq	40(%rdi), %rax
	.loc	0 118 31 is_stmt 0              # liblzma/common/auto_decoder.c:118:31
	testq	%rax, %rax
	.loc	0 118 9                         # liblzma/common/auto_decoder.c:118:9
	je	.LBB4_1
.Ltmp103:
# %bb.2:                                # %cond.false
	#DEBUG_VALUE: auto_decoder_get_check:pcoder <- $rdi
	#DEBUG_VALUE: auto_decoder_get_check:coder <- $rdi
	.loc	0 119 40 is_stmt 1              # liblzma/common/auto_decoder.c:119:40
	movq	(%rdi), %rdi
.Ltmp104:
	#DEBUG_VALUE: auto_decoder_get_check:pcoder <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 119 6 is_stmt 0               # liblzma/common/auto_decoder.c:119:6
	jmpq	*%rax                           # TAILCALL
.Ltmp105:
.LBB4_1:                                # %cond.end
	#DEBUG_VALUE: auto_decoder_get_check:pcoder <- $rdi
	#DEBUG_VALUE: auto_decoder_get_check:coder <- $rdi
	.loc	0 118 2 is_stmt 1               # liblzma/common/auto_decoder.c:118:2
	xorl	%eax, %eax
	retq
.Ltmp106:
.Lfunc_end4:
	.size	auto_decoder_get_check, .Lfunc_end4-auto_decoder_get_check
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function auto_decoder_memconfig
	.type	auto_decoder_memconfig,@function
auto_decoder_memconfig:                 # @auto_decoder_memconfig
.Lfunc_begin5:
	.loc	0 126 0                         # liblzma/common/auto_decoder.c:126:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: auto_decoder_memconfig:pcoder <- $rdi
	#DEBUG_VALUE: auto_decoder_memconfig:memusage <- $rsi
	#DEBUG_VALUE: auto_decoder_memconfig:old_memlimit <- $rdx
	#DEBUG_VALUE: auto_decoder_memconfig:new_memlimit <- $rcx
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
.Ltmp107:
	#DEBUG_VALUE: auto_decoder_memconfig:coder <- $rdi
	movq	%rcx, %rbx
	movq	%rdi, %r14
.Ltmp108:
	.loc	0 130 18 prologue_end           # liblzma/common/auto_decoder.c:130:18
	movq	48(%rdi), %rax
	.loc	0 130 28 is_stmt 0              # liblzma/common/auto_decoder.c:130:28
	testq	%rax, %rax
.Ltmp109:
	.loc	0 130 6                         # liblzma/common/auto_decoder.c:130:6
	je	.LBB5_2
.Ltmp110:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: auto_decoder_memconfig:pcoder <- $r14
	#DEBUG_VALUE: auto_decoder_memconfig:memusage <- $rsi
	#DEBUG_VALUE: auto_decoder_memconfig:old_memlimit <- $rdx
	#DEBUG_VALUE: auto_decoder_memconfig:new_memlimit <- $rbx
	#DEBUG_VALUE: auto_decoder_memconfig:coder <- $r14
	.loc	0 131 43 is_stmt 1              # liblzma/common/auto_decoder.c:131:43
	movq	(%r14), %rdi
	.loc	0 131 9 is_stmt 0               # liblzma/common/auto_decoder.c:131:9
	movq	%rbx, %rcx
	callq	*%rax
.Ltmp111:
	#DEBUG_VALUE: auto_decoder_memconfig:old_memlimit <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: auto_decoder_memconfig:memusage <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: auto_decoder_memconfig:ret <- $eax
	.loc	0 134 2 is_stmt 1               # liblzma/common/auto_decoder.c:134:2
	jmp	.LBB5_3
.Ltmp112:
.LBB5_2:                                # %if.else
	#DEBUG_VALUE: auto_decoder_memconfig:pcoder <- $r14
	#DEBUG_VALUE: auto_decoder_memconfig:memusage <- $rsi
	#DEBUG_VALUE: auto_decoder_memconfig:old_memlimit <- $rdx
	#DEBUG_VALUE: auto_decoder_memconfig:new_memlimit <- $rbx
	#DEBUG_VALUE: auto_decoder_memconfig:coder <- $r14
	.loc	0 137 13                        # liblzma/common/auto_decoder.c:137:13
	movq	$32768, (%rsi)                  # imm = 0x8000
	.loc	0 138 26                        # liblzma/common/auto_decoder.c:138:26
	movq	64(%r14), %rax
	.loc	0 138 17 is_stmt 0              # liblzma/common/auto_decoder.c:138:17
	movq	%rax, (%rdx)
	xorl	%eax, %eax
.Ltmp113:
	#DEBUG_VALUE: auto_decoder_memconfig:ret <- 0
.LBB5_3:                                # %if.end
	#DEBUG_VALUE: auto_decoder_memconfig:pcoder <- $r14
	#DEBUG_VALUE: auto_decoder_memconfig:memusage <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: auto_decoder_memconfig:old_memlimit <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: auto_decoder_memconfig:new_memlimit <- $rbx
	#DEBUG_VALUE: auto_decoder_memconfig:coder <- $r14
	#DEBUG_VALUE: auto_decoder_memconfig:ret <- $eax
	.loc	0 142 10 is_stmt 1              # liblzma/common/auto_decoder.c:142:10
	testl	%eax, %eax
	setne	%cl
	testq	%rbx, %rbx
	sete	%dl
	.loc	0 142 21 is_stmt 0              # liblzma/common/auto_decoder.c:142:21
	orb	%cl, %dl
	jne	.LBB5_5
.Ltmp114:
# %bb.4:                                # %if.then7
	#DEBUG_VALUE: auto_decoder_memconfig:pcoder <- $r14
	#DEBUG_VALUE: auto_decoder_memconfig:memusage <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: auto_decoder_memconfig:old_memlimit <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: auto_decoder_memconfig:new_memlimit <- $rbx
	#DEBUG_VALUE: auto_decoder_memconfig:coder <- $r14
	#DEBUG_VALUE: auto_decoder_memconfig:ret <- $eax
	.loc	0 143 19 is_stmt 1              # liblzma/common/auto_decoder.c:143:19
	movq	%rbx, 64(%r14)
.Ltmp115:
.LBB5_5:                                # %if.end9
	#DEBUG_VALUE: auto_decoder_memconfig:pcoder <- $r14
	#DEBUG_VALUE: auto_decoder_memconfig:memusage <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: auto_decoder_memconfig:old_memlimit <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: auto_decoder_memconfig:new_memlimit <- $rbx
	#DEBUG_VALUE: auto_decoder_memconfig:coder <- $r14
	#DEBUG_VALUE: auto_decoder_memconfig:ret <- $eax
	.loc	0 145 2 epilogue_begin          # liblzma/common/auto_decoder.c:145:2
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp116:
	#DEBUG_VALUE: auto_decoder_memconfig:new_memlimit <- [DW_OP_LLVM_entry_value 1] $rcx
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp117:
	#DEBUG_VALUE: auto_decoder_memconfig:pcoder <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 8
	retq
.Ltmp118:
.Lfunc_end5:
	.size	auto_decoder_memconfig, .Lfunc_end5-auto_decoder_memconfig
	.cfi_endproc
                                        # -- End function
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	33                              # Offset entry count
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
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp1-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp25-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp26-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp30-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp30-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp1-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp28-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp28-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp30-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp30-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp1-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp30-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp30-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp25-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp33-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp33-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp53-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp55-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp33-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp33-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp52-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp52-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp55-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp33-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp33-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp54-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp54-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp55-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp33-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp33-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp51-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp51-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp55-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # super-register DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp60-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp60-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp88-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp88-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp89-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp89-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp72-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp72-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp75-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp89-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp89-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp90-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp90-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp75-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp89-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp89-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp67-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp67-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp75-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp89-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp89-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp68-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp68-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp75-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp89-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	88                              # DW_OP_reg8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp89-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp66-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp66-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp75-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp89-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	89                              # DW_OP_reg9
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp89-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp58-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp89-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp58-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp89-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp58-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	208                             # 80
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp89-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	208                             # 80
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp58-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp60-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp60-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp88-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp89-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp73-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp75-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp77-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp80-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp90-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp91-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc22:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp99-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp99-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp101-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp101-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp102-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc23:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp99-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp99-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp100-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp100-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp102-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc24:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp97-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp99-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp99-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp101-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp101-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp102-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc25:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp104-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp104-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp105-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp105-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc26:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp104-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp105-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc27:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp110-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp110-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp117-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp117-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc28:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp111-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp111-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp112-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp112-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp113-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp113-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc29:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp111-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp111-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp112-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp112-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp113-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp113-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc30:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp110-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp110-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp116-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp116-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc31:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp107-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp110-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp110-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp117-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc32:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp111-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp112-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp113-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
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
	.byte	8                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
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
	.byte	10                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
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
	.byte	5                               # DW_FORM_data2
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
	.byte	5                               # DW_FORM_data2
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
	.byte	5                               # DW_FORM_data2
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
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
	.byte	55                              # DW_TAG_restrict_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
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
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	21                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	22                              # Abbreviation Code
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
	.byte	23                              # Abbreviation Code
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
	.byte	24                              # Abbreviation Code
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
	.byte	25                              # Abbreviation Code
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
	.byte	26                              # Abbreviation Code
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
	.byte	27                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	28                              # Abbreviation Code
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
	.byte	31                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	32                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
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
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
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
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
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
	.byte	5                               # DW_FORM_data2
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	36                              # Abbreviation Code
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
	.byte	37                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	38                              # Abbreviation Code
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
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	39                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.ascii	"\203\001"                      # DW_AT_call_target
	.byte	24                              # DW_FORM_exprloc
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	40                              # Abbreviation Code
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
	.byte	41                              # Abbreviation Code
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
	.byte	42                              # Abbreviation Code
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	5                               # DWARF version number
	.byte	1                               # DWARF Unit Type
	.byte	8                               # Address Size (in bytes)
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	1                               # Abbrev [1] 0xc:0x6fb DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lrnglists_table_base0          # DW_AT_rnglists_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x2b:0x2d DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
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
	.byte	3                               # Abbrev [3] 0x3f:0x3 DW_TAG_enumerator
	.byte	8                               # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x42:0x3 DW_TAG_enumerator
	.byte	9                               # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x45:0x3 DW_TAG_enumerator
	.byte	10                              # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x48:0x3 DW_TAG_enumerator
	.byte	11                              # DW_AT_name
	.byte	7                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x4b:0x3 DW_TAG_enumerator
	.byte	12                              # DW_AT_name
	.byte	8                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x4e:0x3 DW_TAG_enumerator
	.byte	13                              # DW_AT_name
	.byte	9                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x51:0x3 DW_TAG_enumerator
	.byte	14                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x54:0x3 DW_TAG_enumerator
	.byte	15                              # DW_AT_name
	.byte	11                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x58:0x4 DW_TAG_base_type
	.byte	3                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x5c:0x15 DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	250                             # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x64:0x3 DW_TAG_enumerator
	.byte	16                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x67:0x3 DW_TAG_enumerator
	.byte	17                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x6a:0x3 DW_TAG_enumerator
	.byte	18                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x6d:0x3 DW_TAG_enumerator
	.byte	19                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x71:0x15 DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x79:0x3 DW_TAG_enumerator
	.byte	20                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x7c:0x3 DW_TAG_enumerator
	.byte	21                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x7f:0x3 DW_TAG_enumerator
	.byte	22                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x82:0x3 DW_TAG_enumerator
	.byte	23                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x86:0x4e DW_TAG_structure_type
	.byte	68                              # DW_AT_name
	.byte	88                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x8b:0x9 DW_TAG_member
	.byte	24                              # DW_AT_name
	.long	212                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x94:0x9 DW_TAG_member
	.byte	56                              # DW_AT_name
	.long	157                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	2                               # Abbrev [2] 0x9d:0x1b DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0xa5:0x3 DW_TAG_enumerator
	.byte	57                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xa8:0x3 DW_TAG_enumerator
	.byte	58                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xab:0x3 DW_TAG_enumerator
	.byte	59                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xae:0x3 DW_TAG_enumerator
	.byte	60                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xb1:0x3 DW_TAG_enumerator
	.byte	61                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xb4:0x3 DW_TAG_enumerator
	.byte	62                              # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0xb8:0x9 DW_TAG_member
	.byte	63                              # DW_AT_name
	.long	492                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xc1:0x9 DW_TAG_member
	.byte	64                              # DW_AT_name
	.long	748                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xca:0x9 DW_TAG_member
	.byte	67                              # DW_AT_name
	.long	760                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	206                             # DW_AT_decl_line
	.byte	84                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xd4:0x8 DW_TAG_typedef
	.long	220                             # DW_AT_type
	.byte	55                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0xdc:0x4e DW_TAG_structure_type
	.byte	54                              # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0xe1:0x9 DW_TAG_member
	.byte	25                              # DW_AT_name
	.long	298                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xea:0x9 DW_TAG_member
	.byte	27                              # DW_AT_name
	.long	307                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xf3:0x9 DW_TAG_member
	.byte	32                              # DW_AT_name
	.long	335                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xfc:0x9 DW_TAG_member
	.byte	34                              # DW_AT_name
	.long	343                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x105:0x9 DW_TAG_member
	.byte	46                              # DW_AT_name
	.long	581                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x10e:0x9 DW_TAG_member
	.byte	48                              # DW_AT_name
	.long	606                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x117:0x9 DW_TAG_member
	.byte	50                              # DW_AT_name
	.long	640                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x120:0x9 DW_TAG_member
	.byte	51                              # DW_AT_name
	.long	676                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x12a:0x5 DW_TAG_pointer_type
	.long	303                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x12f:0x4 DW_TAG_typedef
	.byte	26                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x133:0x8 DW_TAG_typedef
	.long	315                             # DW_AT_type
	.byte	31                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x13b:0x8 DW_TAG_typedef
	.long	323                             # DW_AT_type
	.byte	30                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x143:0x8 DW_TAG_typedef
	.long	331                             # DW_AT_type
	.byte	29                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x14b:0x4 DW_TAG_base_type
	.byte	28                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x14f:0x8 DW_TAG_typedef
	.long	331                             # DW_AT_type
	.byte	33                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x157:0x8 DW_TAG_typedef
	.long	351                             # DW_AT_type
	.byte	45                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x15f:0x5 DW_TAG_pointer_type
	.long	356                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x164:0x33 DW_TAG_subroutine_type
	.long	407                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	11                              # Abbrev [11] 0x169:0x5 DW_TAG_formal_parameter
	.long	298                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x16e:0x5 DW_TAG_formal_parameter
	.long	415                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x173:0x5 DW_TAG_formal_parameter
	.long	517                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x178:0x5 DW_TAG_formal_parameter
	.long	552                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x17d:0x5 DW_TAG_formal_parameter
	.long	492                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x182:0x5 DW_TAG_formal_parameter
	.long	562                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x187:0x5 DW_TAG_formal_parameter
	.long	552                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x18c:0x5 DW_TAG_formal_parameter
	.long	492                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x191:0x5 DW_TAG_formal_parameter
	.long	572                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x197:0x8 DW_TAG_typedef
	.long	43                              # DW_AT_type
	.byte	35                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x19f:0x5 DW_TAG_pointer_type
	.long	420                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1a4:0x9 DW_TAG_typedef
	.long	429                             # DW_AT_type
	.byte	40                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	403                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x1ad:0x24 DW_TAG_structure_type
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.short	341                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x1b2:0xa DW_TAG_member
	.byte	36                              # DW_AT_name
	.long	465                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	376                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x1bc:0xa DW_TAG_member
	.byte	38                              # DW_AT_name
	.long	500                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x1c6:0xa DW_TAG_member
	.byte	39                              # DW_AT_name
	.long	491                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	401                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x1d1:0x5 DW_TAG_pointer_type
	.long	470                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x1d6:0x15 DW_TAG_subroutine_type
	.long	491                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	11                              # Abbrev [11] 0x1db:0x5 DW_TAG_formal_parameter
	.long	491                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x1e0:0x5 DW_TAG_formal_parameter
	.long	492                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x1e5:0x5 DW_TAG_formal_parameter
	.long	492                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x1eb:0x1 DW_TAG_pointer_type
	.byte	7                               # Abbrev [7] 0x1ec:0x8 DW_TAG_typedef
	.long	331                             # DW_AT_type
	.byte	37                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x1f4:0x5 DW_TAG_pointer_type
	.long	505                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x1f9:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	11                              # Abbrev [11] 0x1fa:0x5 DW_TAG_formal_parameter
	.long	491                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x1ff:0x5 DW_TAG_formal_parameter
	.long	491                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x205:0x5 DW_TAG_restrict_type
	.long	522                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x20a:0x5 DW_TAG_pointer_type
	.long	527                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x20f:0x5 DW_TAG_const_type
	.long	532                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x214:0x8 DW_TAG_typedef
	.long	540                             # DW_AT_type
	.byte	43                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x21c:0x8 DW_TAG_typedef
	.long	548                             # DW_AT_type
	.byte	42                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x224:0x4 DW_TAG_base_type
	.byte	41                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	17                              # Abbrev [17] 0x228:0x5 DW_TAG_restrict_type
	.long	557                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x22d:0x5 DW_TAG_pointer_type
	.long	492                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x232:0x5 DW_TAG_restrict_type
	.long	567                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x237:0x5 DW_TAG_pointer_type
	.long	532                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x23c:0x9 DW_TAG_typedef
	.long	92                              # DW_AT_type
	.byte	44                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	322                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x245:0x8 DW_TAG_typedef
	.long	589                             # DW_AT_type
	.byte	47                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x24d:0x5 DW_TAG_pointer_type
	.long	594                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x252:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	11                              # Abbrev [11] 0x253:0x5 DW_TAG_formal_parameter
	.long	298                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x258:0x5 DW_TAG_formal_parameter
	.long	415                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x25e:0x5 DW_TAG_pointer_type
	.long	611                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x263:0xb DW_TAG_subroutine_type
	.long	622                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	11                              # Abbrev [11] 0x268:0x5 DW_TAG_formal_parameter
	.long	630                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x26e:0x8 DW_TAG_typedef
	.long	113                             # DW_AT_type
	.byte	49                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x276:0x5 DW_TAG_pointer_type
	.long	635                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x27b:0x5 DW_TAG_const_type
	.long	303                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x280:0x5 DW_TAG_pointer_type
	.long	645                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x285:0x1a DW_TAG_subroutine_type
	.long	407                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	11                              # Abbrev [11] 0x28a:0x5 DW_TAG_formal_parameter
	.long	298                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x28f:0x5 DW_TAG_formal_parameter
	.long	671                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x294:0x5 DW_TAG_formal_parameter
	.long	671                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x299:0x5 DW_TAG_formal_parameter
	.long	315                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x29f:0x5 DW_TAG_pointer_type
	.long	315                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x2a4:0x5 DW_TAG_pointer_type
	.long	681                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x2a9:0x1a DW_TAG_subroutine_type
	.long	407                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	11                              # Abbrev [11] 0x2ae:0x5 DW_TAG_formal_parameter
	.long	298                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2b3:0x5 DW_TAG_formal_parameter
	.long	415                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2b8:0x5 DW_TAG_formal_parameter
	.long	707                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2bd:0x5 DW_TAG_formal_parameter
	.long	707                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x2c3:0x5 DW_TAG_pointer_type
	.long	712                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x2c8:0x5 DW_TAG_const_type
	.long	717                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x2cd:0x8 DW_TAG_typedef
	.long	725                             # DW_AT_type
	.byte	53                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x2d5:0x17 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x2d9:0x9 DW_TAG_member
	.byte	27                              # DW_AT_name
	.long	307                             # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x2e2:0x9 DW_TAG_member
	.byte	52                              # DW_AT_name
	.long	491                             # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x2ec:0xc DW_TAG_array_type
	.long	760                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x2f1:0x6 DW_TAG_subrange_type
	.long	764                             # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x2f8:0x4 DW_TAG_base_type
	.byte	65                              # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	22                              # Abbrev [22] 0x2fc:0x4 DW_TAG_base_type
	.byte	66                              # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	2                               # Abbrev [2] 0x300:0xc DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x308:0x3 DW_TAG_enumerator
	.byte	69                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x30c:0x3c DW_TAG_structure_type
	.byte	77                              # DW_AT_name
	.byte	80                              # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x311:0x9 DW_TAG_member
	.byte	24                              # DW_AT_name
	.long	212                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x31a:0x9 DW_TAG_member
	.byte	70                              # DW_AT_name
	.long	315                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x323:0x9 DW_TAG_member
	.byte	71                              # DW_AT_name
	.long	840                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x32c:0x9 DW_TAG_member
	.byte	56                              # DW_AT_name
	.long	821                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	76                              # DW_AT_data_member_location
	.byte	2                               # Abbrev [2] 0x335:0x12 DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x33d:0x3 DW_TAG_enumerator
	.byte	74                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x340:0x3 DW_TAG_enumerator
	.byte	75                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x343:0x3 DW_TAG_enumerator
	.byte	76                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x348:0x8 DW_TAG_typedef
	.long	848                             # DW_AT_type
	.byte	73                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x350:0x8 DW_TAG_typedef
	.long	88                              # DW_AT_type
	.byte	72                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x358:0x5 DW_TAG_pointer_type
	.long	780                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x35d:0x29 DW_TAG_subprogram
	.byte	78                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	407                             # DW_AT_type
                                        # DW_AT_inline
	.byte	24                              # Abbrev [24] 0x365:0x8 DW_TAG_formal_parameter
	.byte	24                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.long	902                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x36d:0x8 DW_TAG_formal_parameter
	.byte	79                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.long	415                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x375:0x8 DW_TAG_formal_parameter
	.byte	70                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.long	315                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x37d:0x8 DW_TAG_formal_parameter
	.byte	71                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.long	840                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x386:0x5 DW_TAG_pointer_type
	.long	212                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x38b:0x89 DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	106                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	407                             # DW_AT_type
                                        # DW_AT_external
	.byte	26                              # Abbrev [26] 0x39a:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	111                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.long	1058                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0x3a3:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	70                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.long	315                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x3ac:0x9 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	71                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.long	840                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x3b5:0x46 DW_TAG_lexical_block
	.byte	0                               # DW_AT_ranges
	.byte	28                              # Abbrev [28] 0x3b7:0x9 DW_TAG_variable
	.byte	4                               # DW_AT_location
	.byte	112                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.long	1783                            # DW_AT_type
	.byte	29                              # Abbrev [29] 0x3c0:0x10 DW_TAG_lexical_block
	.byte	1                               # DW_AT_low_pc
	.long	.Ltmp2-.Ltmp0                   # DW_AT_high_pc
	.byte	28                              # Abbrev [28] 0x3c6:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	112                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.long	1783                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0x3d0:0x2a DW_TAG_inlined_subroutine
	.long	861                             # DW_AT_abstract_origin
	.byte	2                               # DW_AT_low_pc
	.long	.Ltmp22-.Ltmp4                  # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	184                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0x3dd:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	95
	.long	869                             # DW_AT_abstract_origin
	.byte	31                              # Abbrev [31] 0x3e4:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	92
	.long	877                             # DW_AT_abstract_origin
	.byte	31                              # Abbrev [31] 0x3eb:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.long	885                             # DW_AT_abstract_origin
	.byte	31                              # Abbrev [31] 0x3f2:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	86
	.long	893                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	32                              # Abbrev [32] 0x3fb:0x6 DW_TAG_call_site
	.long	1044                            # DW_AT_call_origin
	.byte	3                               # DW_AT_call_return_pc
	.byte	32                              # Abbrev [32] 0x401:0x6 DW_TAG_call_site
	.long	1280                            # DW_AT_call_origin
	.byte	4                               # DW_AT_call_return_pc
	.byte	32                              # Abbrev [32] 0x407:0x6 DW_TAG_call_site
	.long	1295                            # DW_AT_call_origin
	.byte	5                               # DW_AT_call_return_pc
	.byte	32                              # Abbrev [32] 0x40d:0x6 DW_TAG_call_site
	.long	1314                            # DW_AT_call_origin
	.byte	6                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x414:0xe DW_TAG_subprogram
	.byte	80                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	407                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x41c:0x5 DW_TAG_formal_parameter
	.long	1058                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x422:0x5 DW_TAG_pointer_type
	.long	1063                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x427:0x9 DW_TAG_typedef
	.long	1072                            # DW_AT_type
	.byte	99                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	490                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x430:0xba DW_TAG_structure_type
	.byte	136                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.short	453                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x435:0xa DW_TAG_member
	.byte	81                              # DW_AT_name
	.long	522                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	454                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x43f:0xa DW_TAG_member
	.byte	63                              # DW_AT_name
	.long	492                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	455                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x449:0xa DW_TAG_member
	.byte	82                              # DW_AT_name
	.long	315                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	456                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x453:0xa DW_TAG_member
	.byte	83                              # DW_AT_name
	.long	567                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	458                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x45d:0xa DW_TAG_member
	.byte	84                              # DW_AT_name
	.long	492                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	459                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x467:0xa DW_TAG_member
	.byte	85                              # DW_AT_name
	.long	315                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	460                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x471:0xa DW_TAG_member
	.byte	79                              # DW_AT_name
	.long	415                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	468                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x47b:0xa DW_TAG_member
	.byte	86                              # DW_AT_name
	.long	1258                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	471                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x485:0xa DW_TAG_member
	.byte	88                              # DW_AT_name
	.long	491                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	479                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x48f:0xa DW_TAG_member
	.byte	89                              # DW_AT_name
	.long	491                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	480                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x499:0xa DW_TAG_member
	.byte	90                              # DW_AT_name
	.long	491                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	481                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x4a3:0xa DW_TAG_member
	.byte	91                              # DW_AT_name
	.long	491                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	482                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x4ad:0xa DW_TAG_member
	.byte	92                              # DW_AT_name
	.long	315                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	483                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x4b7:0xa DW_TAG_member
	.byte	93                              # DW_AT_name
	.long	315                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	484                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x4c1:0xa DW_TAG_member
	.byte	94                              # DW_AT_name
	.long	492                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	485                             # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x4cb:0xa DW_TAG_member
	.byte	95                              # DW_AT_name
	.long	492                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	486                             # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x4d5:0xa DW_TAG_member
	.byte	96                              # DW_AT_name
	.long	1272                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	487                             # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x4df:0xa DW_TAG_member
	.byte	98                              # DW_AT_name
	.long	1272                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	488                             # DW_AT_decl_line
	.byte	132                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x4ea:0x5 DW_TAG_pointer_type
	.long	1263                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x4ef:0x9 DW_TAG_typedef
	.long	134                             # DW_AT_type
	.byte	87                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	411                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x4f8:0x8 DW_TAG_typedef
	.long	768                             # DW_AT_type
	.byte	97                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	34                              # Abbrev [34] 0x500:0xf DW_TAG_subprogram
	.byte	100                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x504:0x5 DW_TAG_formal_parameter
	.long	902                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x509:0x5 DW_TAG_formal_parameter
	.long	415                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x50f:0x13 DW_TAG_subprogram
	.byte	101                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	211                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	491                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x517:0x5 DW_TAG_formal_parameter
	.long	492                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x51c:0x5 DW_TAG_formal_parameter
	.long	415                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x522:0xb DW_TAG_subprogram
	.byte	102                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	546                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x527:0x5 DW_TAG_formal_parameter
	.long	1058                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0x52d:0x31 DW_TAG_subprogram
	.byte	7                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.long	861                             # DW_AT_abstract_origin
	.byte	37                              # Abbrev [37] 0x539:0x6 DW_TAG_formal_parameter
	.byte	5                               # DW_AT_location
	.long	869                             # DW_AT_abstract_origin
	.byte	37                              # Abbrev [37] 0x53f:0x6 DW_TAG_formal_parameter
	.byte	6                               # DW_AT_location
	.long	877                             # DW_AT_abstract_origin
	.byte	37                              # Abbrev [37] 0x545:0x6 DW_TAG_formal_parameter
	.byte	7                               # DW_AT_location
	.long	885                             # DW_AT_abstract_origin
	.byte	37                              # Abbrev [37] 0x54b:0x6 DW_TAG_formal_parameter
	.byte	8                               # DW_AT_location
	.long	893                             # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x551:0x6 DW_TAG_call_site
	.long	1280                            # DW_AT_call_origin
	.byte	8                               # DW_AT_call_return_pc
	.byte	32                              # Abbrev [32] 0x557:0x6 DW_TAG_call_site
	.long	1295                            # DW_AT_call_origin
	.byte	9                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	38                              # Abbrev [38] 0x55e:0xad DW_TAG_subprogram
	.byte	10                              # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	4                               # DW_AT_frame_base
	.byte	156
	.byte	17
	.byte	64
	.byte	34
                                        # DW_AT_call_all_calls
	.byte	107                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	407                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x570:0x9 DW_TAG_formal_parameter
	.byte	9                               # DW_AT_location
	.byte	113                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.long	298                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x579:0x9 DW_TAG_formal_parameter
	.byte	10                              # DW_AT_location
	.byte	79                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.long	415                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x582:0x9 DW_TAG_formal_parameter
	.byte	11                              # DW_AT_location
	.byte	114                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	517                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x58b:0x9 DW_TAG_formal_parameter
	.byte	12                              # DW_AT_location
	.byte	115                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	552                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x594:0x9 DW_TAG_formal_parameter
	.byte	13                              # DW_AT_location
	.byte	116                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	492                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x59d:0x9 DW_TAG_formal_parameter
	.byte	14                              # DW_AT_location
	.byte	117                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	562                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x5a6:0x9 DW_TAG_formal_parameter
	.byte	15                              # DW_AT_location
	.byte	118                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.long	552                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x5af:0x9 DW_TAG_formal_parameter
	.byte	16                              # DW_AT_location
	.byte	119                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.long	492                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x5b8:0x9 DW_TAG_formal_parameter
	.byte	17                              # DW_AT_location
	.byte	120                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.long	572                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0x5c1:0x9 DW_TAG_variable
	.byte	18                              # DW_AT_location
	.byte	25                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.long	856                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x5ca:0x10 DW_TAG_lexical_block
	.byte	11                              # DW_AT_low_pc
	.long	.Ltmp74-.Ltmp71                 # DW_AT_high_pc
	.byte	28                              # Abbrev [28] 0x5d0:0x9 DW_TAG_variable
	.byte	19                              # DW_AT_location
	.byte	112                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.long	1783                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x5da:0x10 DW_TAG_lexical_block
	.byte	12                              # DW_AT_low_pc
	.long	.Ltmp91-.Ltmp89                 # DW_AT_high_pc
	.byte	28                              # Abbrev [28] 0x5e0:0x9 DW_TAG_variable
	.byte	21                              # DW_AT_location
	.byte	112                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.long	1783                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x5ea:0x10 DW_TAG_lexical_block
	.byte	13                              # DW_AT_low_pc
	.long	.Ltmp83-.Ltmp75                 # DW_AT_high_pc
	.byte	28                              # Abbrev [28] 0x5f0:0x9 DW_TAG_variable
	.byte	20                              # DW_AT_location
	.byte	121                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.long	1783                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	32                              # Abbrev [32] 0x5fa:0x6 DW_TAG_call_site
	.long	1547                            # DW_AT_call_origin
	.byte	14                              # DW_AT_call_return_pc
	.byte	39                              # Abbrev [39] 0x600:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	83
	.byte	15                              # DW_AT_call_return_pc
	.byte	32                              # Abbrev [32] 0x604:0x6 DW_TAG_call_site
	.long	1576                            # DW_AT_call_origin
	.byte	16                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x60b:0x1d DW_TAG_subprogram
	.byte	103                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	407                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x613:0x5 DW_TAG_formal_parameter
	.long	902                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x618:0x5 DW_TAG_formal_parameter
	.long	415                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x61d:0x5 DW_TAG_formal_parameter
	.long	315                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x622:0x5 DW_TAG_formal_parameter
	.long	840                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x628:0x1d DW_TAG_subprogram
	.byte	104                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	407                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x630:0x5 DW_TAG_formal_parameter
	.long	902                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x635:0x5 DW_TAG_formal_parameter
	.long	415                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x63a:0x5 DW_TAG_formal_parameter
	.long	315                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x63f:0x5 DW_TAG_formal_parameter
	.long	760                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x645:0x33 DW_TAG_subprogram
	.byte	17                              # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	108                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	26                              # Abbrev [26] 0x650:0x9 DW_TAG_formal_parameter
	.byte	22                              # DW_AT_location
	.byte	113                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.long	298                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x659:0x9 DW_TAG_formal_parameter
	.byte	23                              # DW_AT_location
	.byte	79                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.long	415                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0x662:0x9 DW_TAG_variable
	.byte	24                              # DW_AT_location
	.byte	25                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.long	856                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x66b:0x6 DW_TAG_call_site
	.long	1280                            # DW_AT_call_origin
	.byte	18                              # DW_AT_call_return_pc
	.byte	41                              # Abbrev [41] 0x671:0x6 DW_TAG_call_site
	.long	1656                            # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	19                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	34                              # Abbrev [34] 0x678:0xf DW_TAG_subprogram
	.byte	105                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x67c:0x5 DW_TAG_formal_parameter
	.long	491                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x681:0x5 DW_TAG_formal_parameter
	.long	415                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	38                              # Abbrev [38] 0x687:0x26 DW_TAG_subprogram
	.byte	20                              # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	109                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	622                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x696:0x9 DW_TAG_formal_parameter
	.byte	25                              # DW_AT_location
	.byte	113                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.long	630                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0x69f:0x9 DW_TAG_variable
	.byte	26                              # DW_AT_location
	.byte	25                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.long	1788                            # DW_AT_type
	.byte	42                              # Abbrev [42] 0x6a8:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	80
                                        # DW_AT_call_tail_call
	.byte	21                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	38                              # Abbrev [38] 0x6ad:0x4a DW_TAG_subprogram
	.byte	22                              # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	110                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	407                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x6bc:0x9 DW_TAG_formal_parameter
	.byte	27                              # DW_AT_location
	.byte	113                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.long	298                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x6c5:0x9 DW_TAG_formal_parameter
	.byte	28                              # DW_AT_location
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.long	671                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x6ce:0x9 DW_TAG_formal_parameter
	.byte	29                              # DW_AT_location
	.byte	123                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.long	671                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x6d7:0x9 DW_TAG_formal_parameter
	.byte	30                              # DW_AT_location
	.byte	124                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.long	315                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0x6e0:0x9 DW_TAG_variable
	.byte	31                              # DW_AT_location
	.byte	25                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.long	856                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0x6e9:0x9 DW_TAG_variable
	.byte	32                              # DW_AT_location
	.byte	121                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.long	407                             # DW_AT_type
	.byte	39                              # Abbrev [39] 0x6f2:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	80
	.byte	23                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x6f7:0x5 DW_TAG_const_type
	.long	407                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x6fc:0x5 DW_TAG_pointer_type
	.long	1793                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x701:0x5 DW_TAG_const_type
	.long	780                             # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_rnglists,"",@progbits
	.long	.Ldebug_list_header_end1-.Ldebug_list_header_start1 # Length
.Ldebug_list_header_start1:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	1                               # Offset entry count
.Lrnglists_table_base0:
	.long	.Ldebug_ranges0-.Lrnglists_table_base0
.Ldebug_ranges0:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp22-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	504                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/common/auto_decoder.c" # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/xz-test/src" # string offset=135
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=167
.Linfo_string4:
	.asciz	"LZMA_OK"                       # string offset=180
.Linfo_string5:
	.asciz	"LZMA_STREAM_END"               # string offset=188
.Linfo_string6:
	.asciz	"LZMA_NO_CHECK"                 # string offset=204
.Linfo_string7:
	.asciz	"LZMA_UNSUPPORTED_CHECK"        # string offset=218
.Linfo_string8:
	.asciz	"LZMA_GET_CHECK"                # string offset=241
.Linfo_string9:
	.asciz	"LZMA_MEM_ERROR"                # string offset=256
.Linfo_string10:
	.asciz	"LZMA_MEMLIMIT_ERROR"           # string offset=271
.Linfo_string11:
	.asciz	"LZMA_FORMAT_ERROR"             # string offset=291
.Linfo_string12:
	.asciz	"LZMA_OPTIONS_ERROR"            # string offset=309
.Linfo_string13:
	.asciz	"LZMA_DATA_ERROR"               # string offset=328
.Linfo_string14:
	.asciz	"LZMA_BUF_ERROR"                # string offset=344
.Linfo_string15:
	.asciz	"LZMA_PROG_ERROR"               # string offset=359
.Linfo_string16:
	.asciz	"LZMA_RUN"                      # string offset=375
.Linfo_string17:
	.asciz	"LZMA_SYNC_FLUSH"               # string offset=384
.Linfo_string18:
	.asciz	"LZMA_FULL_FLUSH"               # string offset=400
.Linfo_string19:
	.asciz	"LZMA_FINISH"                   # string offset=416
.Linfo_string20:
	.asciz	"LZMA_CHECK_NONE"               # string offset=428
.Linfo_string21:
	.asciz	"LZMA_CHECK_CRC32"              # string offset=444
.Linfo_string22:
	.asciz	"LZMA_CHECK_CRC64"              # string offset=461
.Linfo_string23:
	.asciz	"LZMA_CHECK_SHA256"             # string offset=478
.Linfo_string24:
	.asciz	"next"                          # string offset=496
.Linfo_string25:
	.asciz	"coder"                         # string offset=501
.Linfo_string26:
	.asciz	"lzma_coder"                    # string offset=507
.Linfo_string27:
	.asciz	"id"                            # string offset=518
.Linfo_string28:
	.asciz	"unsigned long"                 # string offset=521
.Linfo_string29:
	.asciz	"__uint64_t"                    # string offset=535
.Linfo_string30:
	.asciz	"uint64_t"                      # string offset=546
.Linfo_string31:
	.asciz	"lzma_vli"                      # string offset=555
.Linfo_string32:
	.asciz	"init"                          # string offset=564
.Linfo_string33:
	.asciz	"uintptr_t"                     # string offset=569
.Linfo_string34:
	.asciz	"code"                          # string offset=579
.Linfo_string35:
	.asciz	"lzma_ret"                      # string offset=584
.Linfo_string36:
	.asciz	"alloc"                         # string offset=593
.Linfo_string37:
	.asciz	"size_t"                        # string offset=599
.Linfo_string38:
	.asciz	"free"                          # string offset=606
.Linfo_string39:
	.asciz	"opaque"                        # string offset=611
.Linfo_string40:
	.asciz	"lzma_allocator"                # string offset=618
.Linfo_string41:
	.asciz	"unsigned char"                 # string offset=633
.Linfo_string42:
	.asciz	"__uint8_t"                     # string offset=647
.Linfo_string43:
	.asciz	"uint8_t"                       # string offset=657
.Linfo_string44:
	.asciz	"lzma_action"                   # string offset=665
.Linfo_string45:
	.asciz	"lzma_code_function"            # string offset=677
.Linfo_string46:
	.asciz	"end"                           # string offset=696
.Linfo_string47:
	.asciz	"lzma_end_function"             # string offset=700
.Linfo_string48:
	.asciz	"get_check"                     # string offset=718
.Linfo_string49:
	.asciz	"lzma_check"                    # string offset=728
.Linfo_string50:
	.asciz	"memconfig"                     # string offset=739
.Linfo_string51:
	.asciz	"update"                        # string offset=749
.Linfo_string52:
	.asciz	"options"                       # string offset=756
.Linfo_string53:
	.asciz	"lzma_filter"                   # string offset=764
.Linfo_string54:
	.asciz	"lzma_next_coder_s"             # string offset=776
.Linfo_string55:
	.asciz	"lzma_next_coder"               # string offset=794
.Linfo_string56:
	.asciz	"sequence"                      # string offset=810
.Linfo_string57:
	.asciz	"ISEQ_RUN"                      # string offset=819
.Linfo_string58:
	.asciz	"ISEQ_SYNC_FLUSH"               # string offset=828
.Linfo_string59:
	.asciz	"ISEQ_FULL_FLUSH"               # string offset=844
.Linfo_string60:
	.asciz	"ISEQ_FINISH"                   # string offset=860
.Linfo_string61:
	.asciz	"ISEQ_END"                      # string offset=872
.Linfo_string62:
	.asciz	"ISEQ_ERROR"                    # string offset=881
.Linfo_string63:
	.asciz	"avail_in"                      # string offset=892
.Linfo_string64:
	.asciz	"supported_actions"             # string offset=901
.Linfo_string65:
	.asciz	"_Bool"                         # string offset=919
.Linfo_string66:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=925
.Linfo_string67:
	.asciz	"allow_buf_error"               # string offset=945
.Linfo_string68:
	.asciz	"lzma_internal_s"               # string offset=961
.Linfo_string69:
	.asciz	"LZMA_RESERVED_ENUM"            # string offset=977
.Linfo_string70:
	.asciz	"memlimit"                      # string offset=996
.Linfo_string71:
	.asciz	"flags"                         # string offset=1005
.Linfo_string72:
	.asciz	"__uint32_t"                    # string offset=1011
.Linfo_string73:
	.asciz	"uint32_t"                      # string offset=1022
.Linfo_string74:
	.asciz	"SEQ_INIT"                      # string offset=1031
.Linfo_string75:
	.asciz	"SEQ_CODE"                      # string offset=1040
.Linfo_string76:
	.asciz	"SEQ_FINISH"                    # string offset=1049
.Linfo_string77:
	.asciz	"lzma_coder_s"                  # string offset=1060
.Linfo_string78:
	.asciz	"auto_decoder_init"             # string offset=1073
.Linfo_string79:
	.asciz	"allocator"                     # string offset=1091
.Linfo_string80:
	.asciz	"lzma_strm_init"                # string offset=1101
.Linfo_string81:
	.asciz	"next_in"                       # string offset=1116
.Linfo_string82:
	.asciz	"total_in"                      # string offset=1124
.Linfo_string83:
	.asciz	"next_out"                      # string offset=1133
.Linfo_string84:
	.asciz	"avail_out"                     # string offset=1142
.Linfo_string85:
	.asciz	"total_out"                     # string offset=1152
.Linfo_string86:
	.asciz	"internal"                      # string offset=1162
.Linfo_string87:
	.asciz	"lzma_internal"                 # string offset=1171
.Linfo_string88:
	.asciz	"reserved_ptr1"                 # string offset=1185
.Linfo_string89:
	.asciz	"reserved_ptr2"                 # string offset=1199
.Linfo_string90:
	.asciz	"reserved_ptr3"                 # string offset=1213
.Linfo_string91:
	.asciz	"reserved_ptr4"                 # string offset=1227
.Linfo_string92:
	.asciz	"reserved_int1"                 # string offset=1241
.Linfo_string93:
	.asciz	"reserved_int2"                 # string offset=1255
.Linfo_string94:
	.asciz	"reserved_int3"                 # string offset=1269
.Linfo_string95:
	.asciz	"reserved_int4"                 # string offset=1283
.Linfo_string96:
	.asciz	"reserved_enum1"                # string offset=1297
.Linfo_string97:
	.asciz	"lzma_reserved_enum"            # string offset=1312
.Linfo_string98:
	.asciz	"reserved_enum2"                # string offset=1331
.Linfo_string99:
	.asciz	"lzma_stream"                   # string offset=1346
.Linfo_string100:
	.asciz	"lzma_next_end"                 # string offset=1358
.Linfo_string101:
	.asciz	"lzma_alloc"                    # string offset=1372
.Linfo_string102:
	.asciz	"lzma_end"                      # string offset=1383
.Linfo_string103:
	.asciz	"lzma_stream_decoder_init"      # string offset=1392
.Linfo_string104:
	.asciz	"lzma_alone_decoder_init"       # string offset=1417
.Linfo_string105:
	.asciz	"lzma_free"                     # string offset=1441
.Linfo_string106:
	.asciz	"lzma_auto_decoder"             # string offset=1451
.Linfo_string107:
	.asciz	"auto_decode"                   # string offset=1469
.Linfo_string108:
	.asciz	"auto_decoder_end"              # string offset=1481
.Linfo_string109:
	.asciz	"auto_decoder_get_check"        # string offset=1498
.Linfo_string110:
	.asciz	"auto_decoder_memconfig"        # string offset=1521
.Linfo_string111:
	.asciz	"strm"                          # string offset=1544
.Linfo_string112:
	.asciz	"ret_"                          # string offset=1549
.Linfo_string113:
	.asciz	"pcoder"                        # string offset=1554
.Linfo_string114:
	.asciz	"in"                            # string offset=1561
.Linfo_string115:
	.asciz	"in_pos"                        # string offset=1564
.Linfo_string116:
	.asciz	"in_size"                       # string offset=1571
.Linfo_string117:
	.asciz	"out"                           # string offset=1579
.Linfo_string118:
	.asciz	"out_pos"                       # string offset=1583
.Linfo_string119:
	.asciz	"out_size"                      # string offset=1591
.Linfo_string120:
	.asciz	"action"                        # string offset=1600
.Linfo_string121:
	.asciz	"ret"                           # string offset=1607
.Linfo_string122:
	.asciz	"memusage"                      # string offset=1611
.Linfo_string123:
	.asciz	"old_memlimit"                  # string offset=1620
.Linfo_string124:
	.asciz	"new_memlimit"                  # string offset=1633
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.Lfunc_begin0
	.quad	.Ltmp0
	.quad	.Ltmp4
	.quad	.Ltmp1
	.quad	.Ltmp7
	.quad	.Ltmp16
	.quad	.Ltmp26
	.quad	.Lfunc_begin1
	.quad	.Ltmp34
	.quad	.Ltmp43
	.quad	.Lfunc_begin2
	.quad	.Ltmp71
	.quad	.Ltmp89
	.quad	.Ltmp75
	.quad	.Ltmp72
	.quad	.Ltmp77
	.quad	.Ltmp90
	.quad	.Lfunc_begin3
	.quad	.Ltmp99
	.quad	.Ltmp101
	.quad	.Lfunc_begin4
	.quad	.Ltmp104
	.quad	.Lfunc_begin5
	.quad	.Ltmp111
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
