	.text
	.file	"index_hash.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/common/index_hash.c" md5 0x5b32f3be9e6ab3427cac2d3fabd9ce41
	.file	1 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	2 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	3 "liblzma/api/lzma" "vli.h" md5 0xe1aa51527ce08aa260777d4fb351a0b7
	.file	4 "liblzma/check" "check.h" md5 0x938220df6e0ab33115ef85b0d8c70c5b
	.file	5 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.file	6 "liblzma/api/lzma" "check.h" md5 0xb07c3297e2bcc14bb477793d08325ee3
	.file	7 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.globl	lzma_index_hash_init            # -- Begin function lzma_index_hash_init
	.p2align	4, 0x90
	.type	lzma_index_hash_init,@function
lzma_index_hash_init:                   # @lzma_index_hash_init
.Lfunc_begin0:
	.loc	0 74 0                          # liblzma/common/index_hash.c:74:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_index_hash_init:index_hash <- $rdi
	#DEBUG_VALUE: lzma_index_hash_init:allocator <- $rsi
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
.Ltmp0:
	.loc	0 75 17 prologue_end            # liblzma/common/index_hash.c:75:17
	testq	%rdi, %rdi
.Ltmp1:
	.loc	0 75 6 is_stmt 0                # liblzma/common/index_hash.c:75:6
	jne	.LBB0_3
.Ltmp2:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: lzma_index_hash_init:index_hash <- $rbx
	#DEBUG_VALUE: lzma_index_hash_init:allocator <- $rsi
	.loc	0 76 16 is_stmt 1               # liblzma/common/index_hash.c:76:16
	movl	$320, %edi                      # imm = 0x140
	callq	lzma_alloc@PLT
.Ltmp3:
	#DEBUG_VALUE: lzma_index_hash_init:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	movq	%rax, %rbx
.Ltmp4:
	#DEBUG_VALUE: lzma_index_hash_init:index_hash <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_index_hash_init:index_hash <- $rbx
	.loc	0 77 18                         # liblzma/common/index_hash.c:77:18
	testq	%rax, %rax
.Ltmp5:
	.loc	0 77 7 is_stmt 0                # liblzma/common/index_hash.c:77:7
	je	.LBB0_2
.Ltmp6:
.LBB0_3:                                # %if.end3
	#DEBUG_VALUE: lzma_index_hash_init:index_hash <- $rbx
	#DEBUG_VALUE: lzma_index_hash_init:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_index_hash_init:index_hash <- $rbx
	.loc	0 81 23 is_stmt 1               # liblzma/common/index_hash.c:81:23
	movl	$0, (%rbx)
	.loc	0 96 44                         # liblzma/common/index_hash.c:96:44
	leaq	40(%rbx), %rdi
	.loc	0 82 33                         # liblzma/common/index_hash.c:82:33
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%rbx)
	movups	%xmm0, 24(%rbx)
	.loc	0 86 34                         # liblzma/common/index_hash.c:86:34
	movups	%xmm0, 144(%rbx)
	movups	%xmm0, 160(%rbx)
	.loc	0 90 28                         # liblzma/common/index_hash.c:90:28
	movups	%xmm0, 288(%rbx)
	movups	%xmm0, 300(%rbx)
	.loc	0 96 8                          # liblzma/common/index_hash.c:96:8
	movl	$10, %esi
	callq	lzma_check_init@PLT
.Ltmp7:
	.loc	0 97 45                         # liblzma/common/index_hash.c:97:45
	leaq	176(%rbx), %rdi
	.loc	0 97 8 is_stmt 0                # liblzma/common/index_hash.c:97:8
	movl	$10, %esi
	callq	lzma_check_init@PLT
.Ltmp8:
	.loc	0 100 1 is_stmt 1               # liblzma/common/index_hash.c:100:1
	movq	%rbx, %rax
	.loc	0 100 1 epilogue_begin is_stmt 0 # liblzma/common/index_hash.c:100:1
	popq	%rbx
.Ltmp9:
	#DEBUG_VALUE: lzma_index_hash_init:index_hash <- $rax
	.cfi_def_cfa_offset 8
	retq
.Ltmp10:
.LBB0_2:
	.cfi_def_cfa_offset 16
	#DEBUG_VALUE: lzma_index_hash_init:index_hash <- $rbx
	#DEBUG_VALUE: lzma_index_hash_init:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	.loc	0 0 1                           # liblzma/common/index_hash.c:0:1
	xorl	%ebx, %ebx
.Ltmp11:
	#DEBUG_VALUE: lzma_index_hash_init:index_hash <- $rax
	.loc	0 100 1                         # liblzma/common/index_hash.c:100:1
	movq	%rbx, %rax
.Ltmp12:
	.loc	0 100 1 epilogue_begin          # liblzma/common/index_hash.c:100:1
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Ltmp13:
.Lfunc_end0:
	.size	lzma_index_hash_init, .Lfunc_end0-lzma_index_hash_init
	.cfi_endproc
	.file	8 "liblzma/common" "common.h" md5 0xb445e74fc76042ed64f7e1908fcc1934
                                        # -- End function
	.globl	lzma_index_hash_end             # -- Begin function lzma_index_hash_end
	.p2align	4, 0x90
	.type	lzma_index_hash_end,@function
lzma_index_hash_end:                    # @lzma_index_hash_end
.Lfunc_begin1:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_index_hash_end:index_hash <- $rdi
	#DEBUG_VALUE: lzma_index_hash_end:allocator <- $rsi
	.loc	0 106 2 prologue_end is_stmt 1  # liblzma/common/index_hash.c:106:2
	jmp	lzma_free@PLT                   # TAILCALL
.Ltmp14:
.Lfunc_end1:
	.size	lzma_index_hash_end, .Lfunc_end1-lzma_index_hash_end
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_hash_size            # -- Begin function lzma_index_hash_size
	.p2align	4, 0x90
	.type	lzma_index_hash_size,@function
lzma_index_hash_size:                   # @lzma_index_hash_size
.Lfunc_begin2:
	.loc	0 113 0                         # liblzma/common/index_hash.c:113:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_index_hash_size:index_hash <- $rdi
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	.loc	0 117 39 prologue_end           # liblzma/common/index_hash.c:117:39
	movq	24(%rdi), %rax
	.loc	0 118 23                        # liblzma/common/index_hash.c:118:23
	movq	32(%rdi), %rbx
.Ltmp15:
	#DEBUG_VALUE: index_size:index_list_size <- $rbx
	#DEBUG_VALUE: index_size_unpadded:index_list_size <- $rbx
	#DEBUG_VALUE: index_size:count <- $rax
	#DEBUG_VALUE: index_size_unpadded:count <- $rax
	.file	9 "liblzma/common" "index.h" md5 0x8c1da33cfb6445c1ed40367774c91b69
	.loc	9 51 13                         # liblzma/common/index.h:51:13
	movq	%rax, %rdi
.Ltmp16:
	#DEBUG_VALUE: lzma_index_hash_size:index_hash <- [DW_OP_LLVM_entry_value 1] $rdi
	callq	lzma_vli_size@PLT
.Ltmp17:
                                        # kill: def $eax killed $eax def $rax
	.loc	9 51 11 is_stmt 0               # liblzma/common/index.h:51:11
	incl	%eax
.Ltmp18:
	.loc	9 42 14 is_stmt 1               # liblzma/common/index.h:42:14
	addq	%rbx, %rax
	addq	$7, %rax
	.loc	9 42 19 is_stmt 0               # liblzma/common/index.h:42:19
	andq	$-4, %rax
.Ltmp19:
	.loc	0 117 2 epilogue_begin is_stmt 1 # liblzma/common/index_hash.c:117:2
	popq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 8
	retq
.Ltmp21:
.Lfunc_end2:
	.size	lzma_index_hash_size, .Lfunc_end2-lzma_index_hash_size
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function lzma_index_hash_append
.LCPI3_0:
	.quad	1                               # 0x1
	.zero	8
	.text
	.globl	lzma_index_hash_append
	.p2align	4, 0x90
	.type	lzma_index_hash_append,@function
lzma_index_hash_append:                 # @lzma_index_hash_append
.Lfunc_begin3:
	.loc	0 144 0                         # liblzma/common/index_hash.c:144:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_index_hash_append:index_hash <- $rdi
	#DEBUG_VALUE: lzma_index_hash_append:unpadded_size <- $rsi
	#DEBUG_VALUE: lzma_index_hash_append:uncompressed_size <- $rdx
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
	movl	$11, %r14d
	testq	%rdx, %rdx
.Ltmp22:
	.loc	0 147 4 prologue_end            # liblzma/common/index_hash.c:147:4
	js	.LBB3_7
.Ltmp23:
# %bb.1:                                # %entry
	#DEBUG_VALUE: lzma_index_hash_append:index_hash <- $rdi
	#DEBUG_VALUE: lzma_index_hash_append:unpadded_size <- $rsi
	#DEBUG_VALUE: lzma_index_hash_append:uncompressed_size <- $rdx
	.loc	0 0 4 is_stmt 0                 # liblzma/common/index_hash.c:0:4
	movq	%rdi, %rbx
	movabsq	$9223372036854775804, %rax      # imm = 0x7FFFFFFFFFFFFFFC
	.loc	0 147 4                         # liblzma/common/index_hash.c:147:4
	leaq	(%rsi,%rax), %rcx
	addq	$7, %rcx
	leaq	12(%rax), %rdi
.Ltmp24:
	#DEBUG_VALUE: lzma_index_hash_append:index_hash <- $rbx
	cmpq	%rdi, %rcx
	jb	.LBB3_7
.Ltmp25:
# %bb.2:                                # %entry
	#DEBUG_VALUE: lzma_index_hash_append:index_hash <- $rbx
	#DEBUG_VALUE: lzma_index_hash_append:unpadded_size <- $rsi
	#DEBUG_VALUE: lzma_index_hash_append:uncompressed_size <- $rdx
	cmpl	$0, (%rbx)
	jne	.LBB3_7
.Ltmp26:
# %bb.3:                                # %do.body
	#DEBUG_VALUE: lzma_index_hash_append:index_hash <- $rbx
	#DEBUG_VALUE: lzma_index_hash_append:unpadded_size <- $rsi
	#DEBUG_VALUE: lzma_index_hash_append:uncompressed_size <- $rdx
	#DEBUG_VALUE: hash_append:info <- [DW_OP_plus_uconst 8, DW_OP_stack_value] $rbx
	#DEBUG_VALUE: hash_append:sizes <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: hash_append:unpadded_size <- $rsi
	#DEBUG_VALUE: hash_append:uncompressed_size <- $rdx
	#DEBUG_VALUE: vli_ceil4:vli <- $rsi
	.loc	9 42 14 is_stmt 1               # liblzma/common/index.h:42:14
	leaq	3(%rsi), %rcx
	.loc	9 42 19 is_stmt 0               # liblzma/common/index.h:42:19
	andq	%rax, %rcx
.Ltmp27:
	.loc	0 127 20 is_stmt 1              # liblzma/common/index_hash.c:127:20
	addq	%rcx, 8(%rbx)
	.loc	0 128 26                        # liblzma/common/index_hash.c:128:26
	addq	%rdx, 16(%rbx)
	.loc	0 129 27                        # liblzma/common/index_hash.c:129:27
	movq	%rsi, %rdi
	movq	%rdx, %r14
.Ltmp28:
	#DEBUG_VALUE: hash_append:uncompressed_size <- $r14
	#DEBUG_VALUE: lzma_index_hash_append:uncompressed_size <- $r14
	.loc	0 0 27 is_stmt 0                # liblzma/common/index_hash.c:0:27
	movq	%rsi, %r15
.Ltmp29:
	#DEBUG_VALUE: vli_ceil4:vli <- $r15
	#DEBUG_VALUE: hash_append:unpadded_size <- $r15
	#DEBUG_VALUE: lzma_index_hash_append:unpadded_size <- $r15
	.loc	0 129 27                        # liblzma/common/index_hash.c:129:27
	callq	lzma_vli_size@PLT
.Ltmp30:
	movl	%eax, %ebp
	.loc	0 130 6 is_stmt 1               # liblzma/common/index_hash.c:130:6
	movq	%r14, %rdi
	callq	lzma_vli_size@PLT
.Ltmp31:
	.loc	0 130 4 is_stmt 0               # liblzma/common/index_hash.c:130:4
	addl	%ebp, %eax
	.loc	0 131 2 is_stmt 1               # liblzma/common/index_hash.c:131:2
	movdqu	24(%rbx), %xmm0
	movd	%eax, %xmm1
	movdqa	.LCPI3_0(%rip), %xmm2           # xmm2 = [1,u]
	punpcklqdq	%xmm1, %xmm2            # xmm2 = xmm2[0],xmm1[0]
	paddq	%xmm0, %xmm2
	movdqu	%xmm2, 24(%rbx)
	.loc	0 133 28                        # liblzma/common/index_hash.c:133:28
	movq	%r15, (%rsp)
	movq	%r14, 8(%rsp)
	.loc	0 134 27                        # liblzma/common/index_hash.c:134:27
	leaq	40(%rbx), %rdi
	movq	%rsp, %rdx
	.loc	0 134 2 is_stmt 0               # liblzma/common/index_hash.c:134:2
	movl	$16, %ecx
	movl	$10, %esi
	callq	lzma_check_update@PLT
.Ltmp32:
	.loc	0 0 2                           # liblzma/common/index_hash.c:0:2
	movl	$9, %r14d
.Ltmp33:
	#DEBUG_VALUE: lzma_index_hash_append:uncompressed_size <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: ret_ <- 0
	.loc	0 157 37 is_stmt 1              # liblzma/common/index_hash.c:157:37
	cmpq	$0, 8(%rbx)
	.loc	0 158 4                         # liblzma/common/index_hash.c:158:4
	js	.LBB3_7
.Ltmp34:
# %bb.4:                                # %lor.lhs.false11
	#DEBUG_VALUE: lzma_index_hash_append:index_hash <- $rbx
	#DEBUG_VALUE: lzma_index_hash_append:unpadded_size <- $r15
	#DEBUG_VALUE: lzma_index_hash_append:uncompressed_size <- [DW_OP_LLVM_entry_value 1] $rdx
	.loc	0 158 44 is_stmt 0              # liblzma/common/index_hash.c:158:44
	cmpq	$0, 16(%rbx)
	.loc	0 159 4 is_stmt 1               # liblzma/common/index_hash.c:159:4
	js	.LBB3_7
.Ltmp35:
# %bb.5:                                # %lor.lhs.false15
	#DEBUG_VALUE: lzma_index_hash_append:index_hash <- $rbx
	#DEBUG_VALUE: lzma_index_hash_append:unpadded_size <- $r15
	#DEBUG_VALUE: lzma_index_hash_append:uncompressed_size <- [DW_OP_LLVM_entry_value 1] $rdx
	.loc	0 159 37 is_stmt 0              # liblzma/common/index_hash.c:159:37
	movq	24(%rbx), %rdi
	.loc	0 160 25 is_stmt 1              # liblzma/common/index_hash.c:160:25
	movq	32(%rbx), %r15
.Ltmp36:
	#DEBUG_VALUE: lzma_index_hash_append:unpadded_size <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: index_size:index_list_size <- $r15
	#DEBUG_VALUE: index_size_unpadded:index_list_size <- $r15
	#DEBUG_VALUE: index_size:count <- $rdi
	#DEBUG_VALUE: index_size_unpadded:count <- $rdi
	.loc	9 51 13                         # liblzma/common/index.h:51:13
	callq	lzma_vli_size@PLT
.Ltmp37:
                                        # kill: def $eax killed $eax def $rax
	.loc	9 51 11 is_stmt 0               # liblzma/common/index.h:51:11
	incl	%eax
.Ltmp38:
	#DEBUG_VALUE: vli_ceil4:vli <- undef
	.loc	9 42 14 is_stmt 1               # liblzma/common/index.h:42:14
	addq	%r15, %rax
	addq	$7, %rax
	.loc	9 42 19 is_stmt 0               # liblzma/common/index.h:42:19
	andq	$-4, %rax
	movabsq	$17179869184, %rcx              # imm = 0x400000000
.Ltmp39:
	.loc	0 161 5 is_stmt 1               # liblzma/common/index_hash.c:161:5
	cmpq	%rcx, %rax
	.loc	0 162 4                         # liblzma/common/index_hash.c:162:4
	ja	.LBB3_7
.Ltmp40:
# %bb.6:                                # %lor.lhs.false20
	#DEBUG_VALUE: lzma_index_hash_append:index_hash <- $rbx
	#DEBUG_VALUE: lzma_index_hash_append:unpadded_size <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_index_hash_append:uncompressed_size <- [DW_OP_LLVM_entry_value 1] $rdx
	.loc	0 162 44 is_stmt 0              # liblzma/common/index_hash.c:162:44
	movq	8(%rbx), %r14
	.loc	0 163 25 is_stmt 1              # liblzma/common/index_hash.c:163:25
	movq	24(%rbx), %rdi
	.loc	0 164 25                        # liblzma/common/index_hash.c:164:25
	movq	32(%rbx), %rbx
.Ltmp41:
	#DEBUG_VALUE: lzma_index_hash_append:index_hash <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: index_stream_size:index_list_size <- $rbx
	#DEBUG_VALUE: index_size:index_list_size <- $rbx
	#DEBUG_VALUE: index_size_unpadded:index_list_size <- $rbx
	#DEBUG_VALUE: index_stream_size:blocks_size <- $r14
	#DEBUG_VALUE: index_stream_size:count <- $rdi
	#DEBUG_VALUE: index_size:count <- $rdi
	#DEBUG_VALUE: index_size_unpadded:count <- $rdi
	.loc	9 51 13                         # liblzma/common/index.h:51:13
	callq	lzma_vli_size@PLT
.Ltmp42:
                                        # kill: def $eax killed $eax def $rax
	.loc	9 51 11 is_stmt 0               # liblzma/common/index.h:51:11
	incl	%eax
.Ltmp43:
	#DEBUG_VALUE: vli_ceil4:vli <- undef
	.loc	9 42 14 is_stmt 1               # liblzma/common/index.h:42:14
	addq	%rbx, %rax
	addq	$7, %rax
	.loc	9 42 19 is_stmt 0               # liblzma/common/index.h:42:19
	andq	$-4, %rax
.Ltmp44:
	.loc	9 70 4 is_stmt 1                # liblzma/common/index.h:70:4
	addq	%rax, %r14
.Ltmp45:
	addq	$24, %r14
.Ltmp46:
	.loc	0 157 6                         # liblzma/common/index_hash.c:157:6
	sarq	$63, %r14
	andl	$9, %r14d
.Ltmp47:
.LBB3_7:                                # %return
	#DEBUG_VALUE: lzma_index_hash_append:index_hash <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_index_hash_append:unpadded_size <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_index_hash_append:uncompressed_size <- [DW_OP_LLVM_entry_value 1] $rdx
	.loc	0 169 1                         # liblzma/common/index_hash.c:169:1
	movl	%r14d, %eax
	.loc	0 169 1 epilogue_begin is_stmt 0 # liblzma/common/index_hash.c:169:1
	addq	$24, %rsp
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
.Ltmp48:
.Lfunc_end3:
	.size	lzma_index_hash_append, .Lfunc_end3-lzma_index_hash_append
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function lzma_index_hash_decode
.LCPI4_0:
	.quad	1                               # 0x1
	.zero	8
	.text
	.globl	lzma_index_hash_decode
	.p2align	4, 0x90
	.type	lzma_index_hash_decode,@function
lzma_index_hash_decode:                 # @lzma_index_hash_decode
.Lfunc_begin4:
	.loc	0 175 0 is_stmt 1               # liblzma/common/index_hash.c:175:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_index_hash_decode:index_hash <- $rdi
	#DEBUG_VALUE: lzma_index_hash_decode:in <- $rsi
	#DEBUG_VALUE: lzma_index_hash_decode:in_pos <- $rdx
	#DEBUG_VALUE: lzma_index_hash_decode:in_size <- $rcx
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
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	.loc	0 179 6 prologue_end            # liblzma/common/index_hash.c:179:6
	movq	(%rdx), %rax
	movl	$10, %ebp
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	.loc	0 179 14 is_stmt 0              # liblzma/common/index_hash.c:179:14
	cmpq	%rcx, %rax
.Ltmp49:
	.loc	0 179 6                         # liblzma/common/index_hash.c:179:6
	jae	.LBB4_36
.Ltmp50:
# %bb.1:                                # %while.body.lr.ph
	#DEBUG_VALUE: lzma_index_hash_decode:index_hash <- $rdi
	#DEBUG_VALUE: lzma_index_hash_decode:in <- $rsi
	#DEBUG_VALUE: lzma_index_hash_decode:in_pos <- $rdx
	#DEBUG_VALUE: lzma_index_hash_decode:in_size <- $rcx
	.loc	0 0 6                           # liblzma/common/index_hash.c:0:6
	movq	%rcx, %r12
	movq	%rdx, %r15
	movq	%rsi, %r13
	movq	%rdi, %rbx
.Ltmp51:
	#DEBUG_VALUE: lzma_index_hash_decode:ret <- 0
	leaq	304(%rdi), %r14
	leaq	288(%rdi), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	leaq	296(%rdi), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	leaq	176(%rdi), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	leaq	280(%rdi), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	%r14, 24(%rsp)                  # 8-byte Spill
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
.Ltmp52:
	#DEBUG_VALUE: lzma_index_hash_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	jmp	.LBB4_5
.Ltmp53:
.LBB4_2:                                # %sw.bb
                                        #   in Loop: Header=BB4_5 Depth=1
	#DEBUG_VALUE: lzma_index_hash_decode:index_hash <- $rbx
	#DEBUG_VALUE: lzma_index_hash_decode:in <- $r13
	#DEBUG_VALUE: lzma_index_hash_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma_index_hash_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_hash_decode:ret <- 0
	.loc	0 192 19 is_stmt 1              # liblzma/common/index_hash.c:192:19
	leaq	1(%rax), %rcx
	movq	%rcx, (%r15)
	movl	$1, %ecx
	.loc	0 192 23 is_stmt 0              # liblzma/common/index_hash.c:192:23
	cmpb	$0, (%r13,%rax)
.Ltmp54:
	.loc	0 192 7                         # liblzma/common/index_hash.c:192:7
	jne	.LBB4_33
.Ltmp55:
.LBB4_3:                                # %sw.epilog.sink.split
                                        #   in Loop: Header=BB4_5 Depth=1
	#DEBUG_VALUE: lzma_index_hash_decode:index_hash <- $rbx
	#DEBUG_VALUE: lzma_index_hash_decode:in <- $r13
	#DEBUG_VALUE: lzma_index_hash_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma_index_hash_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_hash_decode:ret <- 0
	.loc	0 0 0                           # liblzma/common/index_hash.c:0:0
	movl	%ecx, (%rbx)
.Ltmp56:
.LBB4_4:                                # %sw.epilog
                                        #   in Loop: Header=BB4_5 Depth=1
	#DEBUG_VALUE: lzma_index_hash_decode:index_hash <- $rbx
	#DEBUG_VALUE: lzma_index_hash_decode:in <- $r13
	#DEBUG_VALUE: lzma_index_hash_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma_index_hash_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_hash_decode:ret <- 0
	#DEBUG_VALUE: lzma_index_hash_decode:ret <- 0
	.loc	0 188 9 is_stmt 1               # liblzma/common/index_hash.c:188:9
	movq	(%r15), %rax
	.loc	0 188 17 is_stmt 0              # liblzma/common/index_hash.c:188:17
	cmpq	%r12, %rax
	.loc	0 188 2                         # liblzma/common/index_hash.c:188:2
	jae	.LBB4_20
.Ltmp57:
.LBB4_5:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_index_hash_decode:index_hash <- $rbx
	#DEBUG_VALUE: lzma_index_hash_decode:in <- $r13
	#DEBUG_VALUE: lzma_index_hash_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma_index_hash_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_hash_decode:ret <- 0
	.loc	0 189 22 is_stmt 1              # liblzma/common/index_hash.c:189:22
	movl	(%rbx), %ecx
	cmpq	$6, %rcx
	.loc	0 189 2 is_stmt 0               # liblzma/common/index_hash.c:189:2
	ja	.LBB4_32
.Ltmp58:
# %bb.6:                                # %while.body
                                        #   in Loop: Header=BB4_5 Depth=1
	#DEBUG_VALUE: lzma_index_hash_decode:index_hash <- $rbx
	#DEBUG_VALUE: lzma_index_hash_decode:in <- $r13
	#DEBUG_VALUE: lzma_index_hash_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma_index_hash_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_hash_decode:ret <- 0
	jmpq	*.LJTI4_0(,%rcx,8)
.Ltmp59:
.LBB4_7:                                # %sw.bb22
                                        #   in Loop: Header=BB4_5 Depth=1
	#DEBUG_VALUE: lzma_index_hash_decode:index_hash <- $rbx
	#DEBUG_VALUE: lzma_index_hash_decode:in <- $r13
	#DEBUG_VALUE: lzma_index_hash_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma_index_hash_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_hash_decode:ret <- 0
	.loc	0 219 41 is_stmt 1              # liblzma/common/index_hash.c:219:41
	cmpl	$2, %ecx
	movq	48(%rsp), %rdi                  # 8-byte Reload
	.loc	0 219 20 is_stmt 0              # liblzma/common/index_hash.c:219:20
	cmoveq	56(%rsp), %rdi                  # 8-byte Folded Reload
.Ltmp60:
	#DEBUG_VALUE: size <- $rdi
	.loc	0 223 9 is_stmt 1               # liblzma/common/index_hash.c:223:9
	movq	%r14, %rsi
	movq	%r13, %rdx
	movq	%r15, %rcx
	movq	%r12, %r8
	callq	lzma_vli_decode@PLT
.Ltmp61:
	#DEBUG_VALUE: lzma_index_hash_decode:ret <- $eax
	.loc	0 225 11                        # liblzma/common/index_hash.c:225:11
	cmpl	$1, %eax
.Ltmp62:
	.loc	0 225 7 is_stmt 0               # liblzma/common/index_hash.c:225:7
	jne	.LBB4_34
.Ltmp63:
# %bb.8:                                # %if.end32
                                        #   in Loop: Header=BB4_5 Depth=1
	#DEBUG_VALUE: lzma_index_hash_decode:index_hash <- $rbx
	#DEBUG_VALUE: lzma_index_hash_decode:in <- $r13
	#DEBUG_VALUE: lzma_index_hash_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma_index_hash_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_hash_decode:ret <- $eax
	#DEBUG_VALUE: lzma_index_hash_decode:ret <- 0
	.loc	0 229 19 is_stmt 1              # liblzma/common/index_hash.c:229:19
	movq	$0, 304(%rbx)
.Ltmp64:
	.loc	0 231 28                        # liblzma/common/index_hash.c:231:28
	cmpl	$2, (%rbx)
	.loc	0 0 0 is_stmt 0                 # liblzma/common/index_hash.c:0:0
	movq	288(%rbx), %rbp
.Ltmp65:
	.loc	0 231 7                         # liblzma/common/index_hash.c:231:7
	jne	.LBB4_16
.Ltmp66:
# %bb.9:                                # %if.then37
                                        #   in Loop: Header=BB4_5 Depth=1
	#DEBUG_VALUE: lzma_index_hash_decode:index_hash <- $rbx
	#DEBUG_VALUE: lzma_index_hash_decode:in <- $r13
	#DEBUG_VALUE: lzma_index_hash_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma_index_hash_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_hash_decode:ret <- 0
	.loc	0 0 7                           # liblzma/common/index_hash.c:0:7
	movabsq	$-9223372036854775805, %rax     # imm = 0x8000000000000003
.Ltmp67:
	.loc	0 233 6 is_stmt 1               # liblzma/common/index_hash.c:233:6
	addq	%rax, %rbp
	addq	$5, %rax
	movl	$3, %ecx
	cmpq	%rax, %rbp
	jae	.LBB4_3
	jmp	.LBB4_33
.Ltmp68:
.LBB4_10:                               # %sw.bb82
                                        #   in Loop: Header=BB4_5 Depth=1
	#DEBUG_VALUE: lzma_index_hash_decode:index_hash <- $rbx
	#DEBUG_VALUE: lzma_index_hash_decode:in <- $r13
	#DEBUG_VALUE: lzma_index_hash_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma_index_hash_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_hash_decode:ret <- 0
	.loc	0 268 25                        # liblzma/common/index_hash.c:268:25
	movq	160(%rbx), %rdi
	.loc	0 269 25                        # liblzma/common/index_hash.c:269:25
	movl	168(%rbx), %ebp
.Ltmp69:
	#DEBUG_VALUE: index_size_unpadded:count <- $rdi
	#DEBUG_VALUE: index_size_unpadded:index_list_size <- undef
	.loc	9 51 13                         # liblzma/common/index.h:51:13
	callq	lzma_vli_size@PLT
.Ltmp70:
                                        # kill: def $eax killed $eax def $rax
	.loc	9 51 11 is_stmt 0               # liblzma/common/index.h:51:11
	addl	%ebp, %eax
	.loc	9 51 52                         # liblzma/common/index.h:51:52
	notl	%eax
.Ltmp71:
	.loc	0 269 43 is_stmt 1              # liblzma/common/index_hash.c:269:43
	andl	$3, %eax
	.loc	0 267 19                        # liblzma/common/index_hash.c:267:19
	movq	%rax, 304(%rbx)
	.loc	0 270 24                        # liblzma/common/index_hash.c:270:24
	movl	$5, (%rbx)
.Ltmp72:
	.loc	0 275 23                        # liblzma/common/index_hash.c:275:23
	testq	%rax, %rax
.Ltmp73:
	.loc	0 275 7 is_stmt 0               # liblzma/common/index_hash.c:275:7
	jne	.LBB4_15
	jmp	.LBB4_21
.Ltmp74:
.LBB4_11:                               # %sw.bb7
                                        #   in Loop: Header=BB4_5 Depth=1
	#DEBUG_VALUE: lzma_index_hash_decode:index_hash <- $rbx
	#DEBUG_VALUE: lzma_index_hash_decode:in <- $r13
	#DEBUG_VALUE: lzma_index_hash_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma_index_hash_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_hash_decode:ret <- 0
	.loc	0 0 7                           # liblzma/common/index_hash.c:0:7
	movq	32(%rsp), %rdi                  # 8-byte Reload
.Ltmp75:
	.loc	0 199 9 is_stmt 1               # liblzma/common/index_hash.c:199:9
	movq	%r14, %rsi
	movq	%r13, %rdx
	movq	%r15, %rcx
	movq	%r12, %r8
	callq	lzma_vli_decode@PLT
.Ltmp76:
	#DEBUG_VALUE: lzma_index_hash_decode:ret <- $eax
	.loc	0 201 11                        # liblzma/common/index_hash.c:201:11
	cmpl	$1, %eax
.Ltmp77:
	.loc	0 201 7 is_stmt 0               # liblzma/common/index_hash.c:201:7
	jne	.LBB4_34
.Ltmp78:
# %bb.12:                               # %if.end11
                                        #   in Loop: Header=BB4_5 Depth=1
	#DEBUG_VALUE: lzma_index_hash_decode:index_hash <- $rbx
	#DEBUG_VALUE: lzma_index_hash_decode:in <- $r13
	#DEBUG_VALUE: lzma_index_hash_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma_index_hash_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_hash_decode:ret <- $eax
	.loc	0 205 19 is_stmt 1              # liblzma/common/index_hash.c:205:19
	movq	280(%rbx), %rax
.Ltmp79:
	.loc	0 205 29 is_stmt 0              # liblzma/common/index_hash.c:205:29
	cmpq	24(%rbx), %rax
.Ltmp80:
	.loc	0 205 7                         # liblzma/common/index_hash.c:205:7
	jne	.LBB4_33
.Ltmp81:
# %bb.13:                               # %if.end16
                                        #   in Loop: Header=BB4_5 Depth=1
	#DEBUG_VALUE: lzma_index_hash_decode:index_hash <- $rbx
	#DEBUG_VALUE: lzma_index_hash_decode:in <- $r13
	#DEBUG_VALUE: lzma_index_hash_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma_index_hash_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_hash_decode:ret <- 0
	.loc	0 209 19 is_stmt 1              # liblzma/common/index_hash.c:209:19
	movq	$0, (%r14)
	.loc	0 212 48                        # liblzma/common/index_hash.c:212:48
	xorl	%ecx, %ecx
	testq	%rax, %rax
	sete	%cl
	.loc	0 212 26 is_stmt 0              # liblzma/common/index_hash.c:212:26
	leal	2(,%rcx,2), %ecx
	jmp	.LBB4_3
.Ltmp82:
.LBB4_14:                               # %while.body.sw.bb90_crit_edge
                                        #   in Loop: Header=BB4_5 Depth=1
	#DEBUG_VALUE: lzma_index_hash_decode:index_hash <- $rbx
	#DEBUG_VALUE: lzma_index_hash_decode:in <- $r13
	#DEBUG_VALUE: lzma_index_hash_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma_index_hash_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_hash_decode:ret <- 0
	.loc	0 275 19 is_stmt 1              # liblzma/common/index_hash.c:275:19
	movq	(%r14), %rax
	.loc	0 275 23 is_stmt 0              # liblzma/common/index_hash.c:275:23
	testq	%rax, %rax
.Ltmp83:
	.loc	0 275 7                         # liblzma/common/index_hash.c:275:7
	je	.LBB4_21
.Ltmp84:
.LBB4_15:                               # %if.then94
                                        #   in Loop: Header=BB4_5 Depth=1
	#DEBUG_VALUE: lzma_index_hash_decode:index_hash <- $rbx
	#DEBUG_VALUE: lzma_index_hash_decode:in <- $r13
	#DEBUG_VALUE: lzma_index_hash_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma_index_hash_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_hash_decode:ret <- 0
	.loc	0 276 4 is_stmt 1               # liblzma/common/index_hash.c:276:4
	decq	%rax
	movq	%rax, (%r14)
.Ltmp85:
	.loc	0 277 20                        # liblzma/common/index_hash.c:277:20
	movq	(%r15), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%r15)
	.loc	0 277 24 is_stmt 0              # liblzma/common/index_hash.c:277:24
	cmpb	$0, (%r13,%rax)
.Ltmp86:
	.loc	0 277 8                         # liblzma/common/index_hash.c:277:8
	je	.LBB4_4
	jmp	.LBB4_33
.Ltmp87:
.LBB4_16:                               # %do.body
                                        #   in Loop: Header=BB4_5 Depth=1
	#DEBUG_VALUE: lzma_index_hash_decode:index_hash <- $rbx
	#DEBUG_VALUE: lzma_index_hash_decode:in <- $r13
	#DEBUG_VALUE: lzma_index_hash_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma_index_hash_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_hash_decode:ret <- 0
	.loc	0 0 8                           # liblzma/common/index_hash.c:0:8
	movq	%r13, %r12
.Ltmp88:
	#DEBUG_VALUE: lzma_index_hash_decode:in <- $r12
	.loc	0 240 4 is_stmt 1               # liblzma/common/index_hash.c:240:4
	movq	296(%rbx), %r14
.Ltmp89:
	#DEBUG_VALUE: hash_append:uncompressed_size <- $r14
	#DEBUG_VALUE: hash_append:sizes <- undef
	#DEBUG_VALUE: hash_append:info <- [DW_OP_plus_uconst 144, DW_OP_stack_value] $rbx
	#DEBUG_VALUE: hash_append:unpadded_size <- $rbp
	#DEBUG_VALUE: vli_ceil4:vli <- $rbp
	.loc	9 42 14                         # liblzma/common/index.h:42:14
	leaq	3(%rbp), %rax
	.loc	9 42 19 is_stmt 0               # liblzma/common/index.h:42:19
	andq	$-4, %rax
.Ltmp90:
	.loc	0 127 20 is_stmt 1              # liblzma/common/index_hash.c:127:20
	addq	%rax, 144(%rbx)
	.loc	0 128 26                        # liblzma/common/index_hash.c:128:26
	addq	%r14, 152(%rbx)
	.loc	0 129 27                        # liblzma/common/index_hash.c:129:27
	movq	%rbp, %rdi
	callq	lzma_vli_size@PLT
.Ltmp91:
	movl	%eax, %r13d
	.loc	0 130 6                         # liblzma/common/index_hash.c:130:6
	movq	%r14, %rdi
	callq	lzma_vli_size@PLT
.Ltmp92:
	.loc	0 130 4 is_stmt 0               # liblzma/common/index_hash.c:130:4
	addl	%r13d, %eax
	.loc	0 131 2 is_stmt 1               # liblzma/common/index_hash.c:131:2
	movdqu	160(%rbx), %xmm0
	movd	%eax, %xmm1
	movdqa	.LCPI4_0(%rip), %xmm2           # xmm2 = [1,u]
	punpcklqdq	%xmm1, %xmm2            # xmm2 = xmm2[0],xmm1[0]
	paddq	%xmm0, %xmm2
	movdqu	%xmm2, 160(%rbx)
	.loc	0 133 28                        # liblzma/common/index_hash.c:133:28
	movq	%rbp, 64(%rsp)
.Ltmp93:
	#DEBUG_VALUE: hash_append:sizes <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_LLVM_fragment 0 64] $rsp
	movq	%r14, 72(%rsp)
.Ltmp94:
	#DEBUG_VALUE: hash_append:sizes <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	.loc	0 134 2                         # liblzma/common/index_hash.c:134:2
	movl	$16, %ecx
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	$10, %esi
	leaq	64(%rsp), %rdx
	callq	lzma_check_update@PLT
.Ltmp95:
	#DEBUG_VALUE: ret_ <- 0
	.loc	0 250 27                        # liblzma/common/index_hash.c:250:27
	movq	8(%rbx), %rax
	movl	$9, %ebp
.Ltmp96:
	.loc	0 251 6                         # liblzma/common/index_hash.c:251:6
	cmpq	144(%rbx), %rax
	.loc	0 252 6                         # liblzma/common/index_hash.c:252:6
	jb	.LBB4_36
.Ltmp97:
# %bb.17:                               # %lor.lhs.false59
                                        #   in Loop: Header=BB4_5 Depth=1
	#DEBUG_VALUE: lzma_index_hash_decode:index_hash <- $rbx
	#DEBUG_VALUE: lzma_index_hash_decode:in <- $r12
	#DEBUG_VALUE: lzma_index_hash_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma_index_hash_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_hash_decode:ret <- 0
	.loc	0 252 28 is_stmt 0              # liblzma/common/index_hash.c:252:28
	movq	16(%rbx), %rax
	.loc	0 253 6 is_stmt 1               # liblzma/common/index_hash.c:253:6
	cmpq	152(%rbx), %rax
	movq	24(%rsp), %r14                  # 8-byte Reload
	.loc	0 254 6                         # liblzma/common/index_hash.c:254:6
	jb	.LBB4_36
.Ltmp98:
# %bb.18:                               # %lor.lhs.false66
                                        #   in Loop: Header=BB4_5 Depth=1
	#DEBUG_VALUE: lzma_index_hash_decode:index_hash <- $rbx
	#DEBUG_VALUE: lzma_index_hash_decode:in <- $r12
	#DEBUG_VALUE: lzma_index_hash_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma_index_hash_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_hash_decode:ret <- 0
	.loc	0 0 6 is_stmt 0                 # liblzma/common/index_hash.c:0:6
	movq	%r12, %r13
.Ltmp99:
	#DEBUG_VALUE: lzma_index_hash_decode:in <- $r13
	.loc	0 254 28                        # liblzma/common/index_hash.c:254:28
	movq	32(%rbx), %rax
	.loc	0 255 6 is_stmt 1               # liblzma/common/index_hash.c:255:6
	cmpq	168(%rbx), %rax
	movq	40(%rsp), %r12                  # 8-byte Reload
.Ltmp100:
	.loc	0 250 8                         # liblzma/common/index_hash.c:250:8
	jb	.LBB4_36
.Ltmp101:
# %bb.19:                               # %if.end73
                                        #   in Loop: Header=BB4_5 Depth=1
	#DEBUG_VALUE: lzma_index_hash_decode:index_hash <- $rbx
	#DEBUG_VALUE: lzma_index_hash_decode:in <- $r13
	#DEBUG_VALUE: lzma_index_hash_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma_index_hash_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_hash_decode:ret <- 0
	.loc	0 259 51                        # liblzma/common/index_hash.c:259:51
	xorl	%eax, %eax
	movq	32(%rsp), %rcx                  # 8-byte Reload
	.loc	0 259 27 is_stmt 0              # liblzma/common/index_hash.c:259:27
	decq	(%rcx)
	.loc	0 259 51                        # liblzma/common/index_hash.c:259:51
	sete	%al
	.loc	0 259 27                        # liblzma/common/index_hash.c:259:27
	leal	2(,%rax,2), %ecx
	jmp	.LBB4_3
.Ltmp102:
.LBB4_20:
	#DEBUG_VALUE: lzma_index_hash_decode:index_hash <- $rbx
	#DEBUG_VALUE: lzma_index_hash_decode:in <- $r13
	#DEBUG_VALUE: lzma_index_hash_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma_index_hash_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_hash_decode:ret <- 0
	.loc	0 0 27                          # liblzma/common/index_hash.c:0:27
	xorl	%ebp, %ebp
	jmp	.LBB4_35
.Ltmp103:
.LBB4_34:
	#DEBUG_VALUE: lzma_index_hash_decode:index_hash <- $rbx
	#DEBUG_VALUE: lzma_index_hash_decode:in <- $r13
	#DEBUG_VALUE: lzma_index_hash_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma_index_hash_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_hash_decode:ret <- $eax
	movl	%eax, %ebp
.Ltmp104:
.LBB4_35:                               # %out
	#DEBUG_VALUE: lzma_index_hash_decode:index_hash <- $rbx
	#DEBUG_VALUE: lzma_index_hash_decode:in <- $r13
	#DEBUG_VALUE: lzma_index_hash_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma_index_hash_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	.loc	0 329 4 is_stmt 1               # liblzma/common/index_hash.c:329:4
	movq	(%r15), %rsi
.Ltmp105:
	#DEBUG_LABEL: lzma_index_hash_decode:out
	.loc	0 0 4 is_stmt 0                 # liblzma/common/index_hash.c:0:4
	movq	16(%rsp), %rax                  # 8-byte Reload
	.loc	0 328 36 is_stmt 1              # liblzma/common/index_hash.c:328:36
	addq	%rax, %r13
.Ltmp106:
	#DEBUG_VALUE: lzma_index_hash_decode:in <- [DW_OP_LLVM_entry_value 1] $rsi
	.loc	0 329 12                        # liblzma/common/index_hash.c:329:12
	subq	%rax, %rsi
	.loc	0 329 36 is_stmt 0              # liblzma/common/index_hash.c:329:36
	movl	312(%rbx), %edx
	.loc	0 328 22 is_stmt 1              # liblzma/common/index_hash.c:328:22
	movq	%r13, %rdi
	callq	lzma_crc32@PLT
.Ltmp107:
	.loc	0 328 20 is_stmt 0              # liblzma/common/index_hash.c:328:20
	movl	%eax, 312(%rbx)
	jmp	.LBB4_36
.Ltmp108:
.LBB4_21:                               # %if.end104
	#DEBUG_VALUE: lzma_index_hash_decode:index_hash <- $rbx
	#DEBUG_VALUE: lzma_index_hash_decode:in <- $r13
	#DEBUG_VALUE: lzma_index_hash_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma_index_hash_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_hash_decode:ret <- 0
	.loc	0 284 26 is_stmt 1              # liblzma/common/index_hash.c:284:26
	movq	8(%rbx), %rax
	movl	$9, %ebp
	.loc	0 285 5                         # liblzma/common/index_hash.c:285:5
	cmpq	144(%rbx), %rax
	.loc	0 286 5                         # liblzma/common/index_hash.c:286:5
	jne	.LBB4_36
.Ltmp109:
# %bb.22:                               # %lor.lhs.false111
	#DEBUG_VALUE: lzma_index_hash_decode:index_hash <- $rbx
	#DEBUG_VALUE: lzma_index_hash_decode:in <- $r13
	#DEBUG_VALUE: lzma_index_hash_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma_index_hash_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_hash_decode:ret <- 0
	.loc	0 286 27 is_stmt 0              # liblzma/common/index_hash.c:286:27
	movq	16(%rbx), %rax
	.loc	0 287 5 is_stmt 1               # liblzma/common/index_hash.c:287:5
	cmpq	152(%rbx), %rax
	.loc	0 288 5                         # liblzma/common/index_hash.c:288:5
	jne	.LBB4_36
.Ltmp110:
# %bb.23:                               # %lor.lhs.false118
	#DEBUG_VALUE: lzma_index_hash_decode:index_hash <- $rbx
	#DEBUG_VALUE: lzma_index_hash_decode:in <- $r13
	#DEBUG_VALUE: lzma_index_hash_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma_index_hash_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_hash_decode:ret <- 0
	.loc	0 288 27 is_stmt 0              # liblzma/common/index_hash.c:288:27
	movq	32(%rbx), %rax
	.loc	0 289 5 is_stmt 1               # liblzma/common/index_hash.c:289:5
	cmpq	168(%rbx), %rax
.Ltmp111:
	.loc	0 284 7                         # liblzma/common/index_hash.c:284:7
	jne	.LBB4_36
.Ltmp112:
# %bb.24:                               # %if.end126
	#DEBUG_VALUE: lzma_index_hash_decode:index_hash <- $rbx
	#DEBUG_VALUE: lzma_index_hash_decode:in <- $r13
	#DEBUG_VALUE: lzma_index_hash_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma_index_hash_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_hash_decode:ret <- 0
	.loc	0 293 41                        # liblzma/common/index_hash.c:293:41
	leaq	40(%rbx), %r14
	.loc	0 293 3 is_stmt 0               # liblzma/common/index_hash.c:293:3
	movq	%r14, %rdi
	movl	$10, %esi
	callq	lzma_check_finish@PLT
.Ltmp113:
	.loc	0 0 3                           # liblzma/common/index_hash.c:0:3
	movq	8(%rsp), %rdi                   # 8-byte Reload
	.loc	0 294 3 is_stmt 1               # liblzma/common/index_hash.c:294:3
	movl	$10, %esi
	callq	lzma_check_finish@PLT
.Ltmp114:
	.loc	0 297 5                         # liblzma/common/index_hash.c:297:5
	movl	$10, %edi
	callq	lzma_check_size@PLT
.Ltmp115:
	movl	%eax, %edx
	.loc	0 295 7                         # liblzma/common/index_hash.c:295:7
	movq	%r14, %rdi
	movq	24(%rsp), %r14                  # 8-byte Reload
	movq	8(%rsp), %rsi                   # 8-byte Reload
	callq	bcmp@PLT
.Ltmp116:
	.loc	0 297 39                        # liblzma/common/index_hash.c:297:39
	testl	%eax, %eax
.Ltmp117:
	.loc	0 295 7                         # liblzma/common/index_hash.c:295:7
	jne	.LBB4_36
.Ltmp118:
# %bb.25:                               # %if.end142
	#DEBUG_VALUE: lzma_index_hash_decode:index_hash <- $rbx
	#DEBUG_VALUE: lzma_index_hash_decode:in <- $r13
	#DEBUG_VALUE: lzma_index_hash_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma_index_hash_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_hash_decode:ret <- 0
	.loc	0 0 7 is_stmt 0                 # liblzma/common/index_hash.c:0:7
	movq	16(%rsp), %rax                  # 8-byte Reload
	.loc	0 301 37 is_stmt 1              # liblzma/common/index_hash.c:301:37
	leaq	(%rax,%r13), %rdi
	.loc	0 302 5                         # liblzma/common/index_hash.c:302:5
	movq	(%r15), %rsi
	.loc	0 302 13 is_stmt 0              # liblzma/common/index_hash.c:302:13
	subq	%rax, %rsi
	.loc	0 302 37                        # liblzma/common/index_hash.c:302:37
	movl	312(%rbx), %edx
	.loc	0 301 23 is_stmt 1              # liblzma/common/index_hash.c:301:23
	callq	lzma_crc32@PLT
.Ltmp119:
	.loc	0 301 21 is_stmt 0              # liblzma/common/index_hash.c:301:21
	movl	%eax, 312(%rbx)
	.loc	0 304 24 is_stmt 1              # liblzma/common/index_hash.c:304:24
	movl	$6, (%rbx)
.Ltmp120:
.LBB4_26:                               # %sw.bb147
	#DEBUG_VALUE: lzma_index_hash_decode:index_hash <- $rbx
	#DEBUG_VALUE: lzma_index_hash_decode:in <- $r13
	#DEBUG_VALUE: lzma_index_hash_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma_index_hash_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_hash_decode:ret <- 0
	.loc	0 0 24 is_stmt 0                # liblzma/common/index_hash.c:0:24
	movl	$1, %ebp
.Ltmp121:
	.p2align	4, 0x90
.LBB4_27:                               # %do.body148
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_index_hash_decode:index_hash <- $rbx
	#DEBUG_VALUE: lzma_index_hash_decode:in <- $r13
	#DEBUG_VALUE: lzma_index_hash_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma_index_hash_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_hash_decode:ret <- 0
	.loc	0 310 8 is_stmt 1               # liblzma/common/index_hash.c:310:8
	movq	(%r15), %rax
	.loc	0 310 16 is_stmt 0              # liblzma/common/index_hash.c:310:16
	cmpq	%r12, %rax
.Ltmp122:
	.loc	0 310 8                         # liblzma/common/index_hash.c:310:8
	je	.LBB4_39
.Ltmp123:
# %bb.28:                               # %if.end152
                                        #   in Loop: Header=BB4_27 Depth=1
	#DEBUG_VALUE: lzma_index_hash_decode:index_hash <- $rbx
	#DEBUG_VALUE: lzma_index_hash_decode:in <- $r13
	#DEBUG_VALUE: lzma_index_hash_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma_index_hash_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_hash_decode:ret <- 0
	.loc	0 313 44 is_stmt 1              # liblzma/common/index_hash.c:313:44
	movl	304(%rbx), %ecx
	.loc	0 313 22 is_stmt 0              # liblzma/common/index_hash.c:313:22
	movl	312(%rbx), %edx
	.loc	0 313 28                        # liblzma/common/index_hash.c:313:28
	shll	$3, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %edx
	.loc	0 314 29 is_stmt 1              # liblzma/common/index_hash.c:314:29
	leaq	1(%rax), %rcx
	movq	%rcx, (%r15)
	.loc	0 314 14 is_stmt 0              # liblzma/common/index_hash.c:314:14
	cmpb	%dl, (%r13,%rax)
.Ltmp124:
	.loc	0 313 8 is_stmt 1               # liblzma/common/index_hash.c:313:8
	jne	.LBB4_33
.Ltmp125:
# %bb.29:                               # %do.cond163
                                        #   in Loop: Header=BB4_27 Depth=1
	#DEBUG_VALUE: lzma_index_hash_decode:index_hash <- $rbx
	#DEBUG_VALUE: lzma_index_hash_decode:in <- $r13
	#DEBUG_VALUE: lzma_index_hash_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma_index_hash_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_hash_decode:ret <- 0
	.loc	0 317 12                        # liblzma/common/index_hash.c:317:12
	movq	(%r14), %rax
	incq	%rax
	movq	%rax, (%r14)
	.loc	0 317 30 is_stmt 0              # liblzma/common/index_hash.c:317:30
	cmpq	$4, %rax
.Ltmp126:
	.loc	0 317 3                         # liblzma/common/index_hash.c:317:3
	jb	.LBB4_27
	jmp	.LBB4_36
.Ltmp127:
.LBB4_33:
	#DEBUG_VALUE: lzma_index_hash_decode:index_hash <- $rbx
	#DEBUG_VALUE: lzma_index_hash_decode:in <- $r13
	#DEBUG_VALUE: lzma_index_hash_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma_index_hash_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	.loc	0 0 3                           # liblzma/common/index_hash.c:0:3
	movl	$9, %ebp
.Ltmp128:
.LBB4_36:                               # %return
	#DEBUG_VALUE: lzma_index_hash_decode:index_hash <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_index_hash_decode:in <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_index_hash_decode:in_pos <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_index_hash_decode:in_size <- [DW_OP_LLVM_entry_value 1] $rcx
	.loc	0 332 1 is_stmt 1               # liblzma/common/index_hash.c:332:1
	movl	%ebp, %eax
	.loc	0 332 1 epilogue_begin is_stmt 0 # liblzma/common/index_hash.c:332:1
	addq	$88, %rsp
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
.Ltmp129:
.LBB4_32:
	.cfi_def_cfa_offset 144
	#DEBUG_VALUE: lzma_index_hash_decode:index_hash <- $rbx
	#DEBUG_VALUE: lzma_index_hash_decode:in <- $r13
	#DEBUG_VALUE: lzma_index_hash_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma_index_hash_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_hash_decode:ret <- 0
	.loc	0 0 1                           # liblzma/common/index_hash.c:0:1
	movl	$11, %ebp
	.loc	0 189 2 is_stmt 1               # liblzma/common/index_hash.c:189:2
	jmp	.LBB4_36
.Ltmp130:
.LBB4_39:
	#DEBUG_VALUE: lzma_index_hash_decode:index_hash <- $rbx
	#DEBUG_VALUE: lzma_index_hash_decode:in <- $r13
	#DEBUG_VALUE: lzma_index_hash_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma_index_hash_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_hash_decode:ret <- 0
	.loc	0 0 2 is_stmt 0                 # liblzma/common/index_hash.c:0:2
	xorl	%ebp, %ebp
.Ltmp131:
	.loc	0 310 8 is_stmt 1               # liblzma/common/index_hash.c:310:8
	jmp	.LBB4_36
.Ltmp132:
.Lfunc_end4:
	.size	lzma_index_hash_decode, .Lfunc_end4-lzma_index_hash_decode
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI4_0:
	.quad	.LBB4_2
	.quad	.LBB4_11
	.quad	.LBB4_7
	.quad	.LBB4_7
	.quad	.LBB4_10
	.quad	.LBB4_14
	.quad	.LBB4_26
                                        # -- End function
	.file	10 "liblzma/api/lzma" "index_hash.h" md5 0x93f41ec399d5b72fa726dbb2f572cbec
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
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp9-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp9-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp10-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp10-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp11-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp11-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp12-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp3-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp16-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp15-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp17-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp15-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp17-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp24-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp41-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp41-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp36-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp28-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp28-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp33-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp33-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp34-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp28-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp28-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp33-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp34-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp37-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp37-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp41-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp45-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp41-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp42-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp41-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp42-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp41-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp42-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp53-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp128-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp128-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp129-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp129-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp53-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp88-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp88-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp99-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp99-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp106-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp106-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp108-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp108-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp128-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp128-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp129-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp129-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp53-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp128-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp128-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp129-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp129-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp52-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp52-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp128-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp128-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp129-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp129-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp51-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp61-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp61-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp63-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp63-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp76-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp79-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp81-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp103-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp103-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp104-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp108-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp127-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp129-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc22:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp60-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp61-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc23:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp69-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc24:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp93-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp94-.Lfunc_begin0          #   ending offset
	.byte	5                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp94-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp97-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
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
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	11                              # DW_AT_byte_size
	.byte	5                               # DW_FORM_data2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	3                               # Abbreviation Code
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
	.byte	4                               # Abbreviation Code
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
	.byte	5                               # Abbreviation Code
	.byte	40                              # DW_TAG_enumerator
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
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
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
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
	.byte	10                              # Abbreviation Code
	.byte	23                              # DW_TAG_union_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
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
	.byte	14                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
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
	.byte	18                              # Abbreviation Code
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
	.byte	19                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	20                              # Abbreviation Code
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
	.byte	21                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	23                              # Abbreviation Code
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
	.byte	24                              # Abbreviation Code
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
	.byte	25                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	26                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	39                              # DW_AT_prototyped
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
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	28                              # Abbreviation Code
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
	.byte	29                              # Abbreviation Code
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
	.byte	30                              # Abbreviation Code
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
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	32                              # Abbreviation Code
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
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
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
	.byte	37                              # Abbreviation Code
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
	.byte	38                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	39                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
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
	.byte	10                              # DW_TAG_label
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	42                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	43                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	44                              # Abbreviation Code
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	5                               # DWARF version number
	.byte	1                               # DWARF Unit Type
	.byte	8                               # Address Size (in bytes)
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	1                               # Abbrev [1] 0xc:0x6f6 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lrnglists_table_base0          # DW_AT_rnglists_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x2b:0x72 DW_TAG_structure_type
	.byte	44                              # DW_AT_name
	.short	320                             # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x31:0x9 DW_TAG_member
	.byte	3                               # DW_AT_name
	.long	58                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	4                               # Abbrev [4] 0x3a:0x1e DW_TAG_enumeration_type
	.long	157                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x42:0x3 DW_TAG_enumerator
	.byte	5                               # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x45:0x3 DW_TAG_enumerator
	.byte	6                               # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x48:0x3 DW_TAG_enumerator
	.byte	7                               # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x4b:0x3 DW_TAG_enumerator
	.byte	8                               # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x4e:0x3 DW_TAG_enumerator
	.byte	9                               # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x51:0x3 DW_TAG_enumerator
	.byte	10                              # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x54:0x3 DW_TAG_enumerator
	.byte	11                              # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x58:0x9 DW_TAG_member
	.byte	12                              # DW_AT_name
	.long	161                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	3                               # Abbrev [3] 0x61:0x9 DW_TAG_member
	.byte	39                              # DW_AT_name
	.long	161                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x6a:0xa DW_TAG_member
	.byte	40                              # DW_AT_name
	.long	219                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.short	280                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x74:0xa DW_TAG_member
	.byte	41                              # DW_AT_name
	.long	219                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.short	288                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x7e:0xa DW_TAG_member
	.byte	18                              # DW_AT_name
	.long	219                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.short	296                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x88:0xa DW_TAG_member
	.byte	42                              # DW_AT_name
	.long	453                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.short	304                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x92:0xa DW_TAG_member
	.byte	33                              # DW_AT_name
	.long	413                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.short	312                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x9d:0x4 DW_TAG_base_type
	.byte	4                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0xa1:0x8 DW_TAG_typedef
	.long	169                             # DW_AT_type
	.byte	38                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xa9:0x32 DW_TAG_structure_type
	.byte	136                             # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0xad:0x9 DW_TAG_member
	.byte	13                              # DW_AT_name
	.long	219                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	3                               # Abbrev [3] 0xb6:0x9 DW_TAG_member
	.byte	18                              # DW_AT_name
	.long	219                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	3                               # Abbrev [3] 0xbf:0x9 DW_TAG_member
	.byte	19                              # DW_AT_name
	.long	219                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	3                               # Abbrev [3] 0xc8:0x9 DW_TAG_member
	.byte	20                              # DW_AT_name
	.long	219                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	3                               # Abbrev [3] 0xd1:0x9 DW_TAG_member
	.byte	21                              # DW_AT_name
	.long	247                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xdb:0x8 DW_TAG_typedef
	.long	227                             # DW_AT_type
	.byte	17                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xe3:0x8 DW_TAG_typedef
	.long	235                             # DW_AT_type
	.byte	16                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xeb:0x8 DW_TAG_typedef
	.long	243                             # DW_AT_type
	.byte	15                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0xf3:0x4 DW_TAG_base_type
	.byte	14                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0xf7:0x8 DW_TAG_typedef
	.long	255                             # DW_AT_type
	.byte	37                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xff:0x6e DW_TAG_structure_type
	.byte	104                             # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x103:0x9 DW_TAG_member
	.byte	22                              # DW_AT_name
	.long	268                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x10c:0x20 DW_TAG_union_type
	.byte	64                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x110:0x9 DW_TAG_member
	.byte	23                              # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	3                               # Abbrev [3] 0x119:0x9 DW_TAG_member
	.byte	28                              # DW_AT_name
	.long	401                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	3                               # Abbrev [3] 0x122:0x9 DW_TAG_member
	.byte	31                              # DW_AT_name
	.long	429                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x12c:0x9 DW_TAG_member
	.byte	32                              # DW_AT_name
	.long	309                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x135:0x37 DW_TAG_union_type
	.byte	40                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x139:0x9 DW_TAG_member
	.byte	33                              # DW_AT_name
	.long	413                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	3                               # Abbrev [3] 0x142:0x9 DW_TAG_member
	.byte	34                              # DW_AT_name
	.long	227                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	3                               # Abbrev [3] 0x14b:0x9 DW_TAG_member
	.byte	35                              # DW_AT_name
	.long	340                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x154:0x17 DW_TAG_structure_type
	.byte	40                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x158:0x9 DW_TAG_member
	.byte	32                              # DW_AT_name
	.long	441                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	3                               # Abbrev [3] 0x161:0x9 DW_TAG_member
	.byte	36                              # DW_AT_name
	.long	227                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x16d:0xc DW_TAG_array_type
	.long	377                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x172:0x6 DW_TAG_subrange_type
	.long	397                             # DW_AT_type
	.byte	64                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x179:0x8 DW_TAG_typedef
	.long	385                             # DW_AT_type
	.byte	26                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x181:0x8 DW_TAG_typedef
	.long	393                             # DW_AT_type
	.byte	25                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x189:0x4 DW_TAG_base_type
	.byte	24                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	13                              # Abbrev [13] 0x18d:0x4 DW_TAG_base_type
	.byte	27                              # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	11                              # Abbrev [11] 0x191:0xc DW_TAG_array_type
	.long	413                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x196:0x6 DW_TAG_subrange_type
	.long	397                             # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x19d:0x8 DW_TAG_typedef
	.long	421                             # DW_AT_type
	.byte	30                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x1a5:0x8 DW_TAG_typedef
	.long	157                             # DW_AT_type
	.byte	29                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x1ad:0xc DW_TAG_array_type
	.long	227                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1b2:0x6 DW_TAG_subrange_type
	.long	397                             # DW_AT_type
	.byte	8                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x1b9:0xc DW_TAG_array_type
	.long	413                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1be:0x6 DW_TAG_subrange_type
	.long	397                             # DW_AT_type
	.byte	8                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x1c5:0x8 DW_TAG_typedef
	.long	243                             # DW_AT_type
	.byte	43                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x1cd:0x15 DW_TAG_enumeration_type
	.long	157                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x1d5:0x3 DW_TAG_enumerator
	.byte	45                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x1d8:0x3 DW_TAG_enumerator
	.byte	46                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x1db:0x3 DW_TAG_enumerator
	.byte	47                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x1de:0x3 DW_TAG_enumerator
	.byte	48                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x1e2:0x2d DW_TAG_enumeration_type
	.long	157                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x1ea:0x3 DW_TAG_enumerator
	.byte	49                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x1ed:0x3 DW_TAG_enumerator
	.byte	50                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x1f0:0x3 DW_TAG_enumerator
	.byte	51                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x1f3:0x3 DW_TAG_enumerator
	.byte	52                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x1f6:0x3 DW_TAG_enumerator
	.byte	53                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x1f9:0x3 DW_TAG_enumerator
	.byte	54                              # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x1fc:0x3 DW_TAG_enumerator
	.byte	55                              # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x1ff:0x3 DW_TAG_enumerator
	.byte	56                              # DW_AT_name
	.byte	7                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x202:0x3 DW_TAG_enumerator
	.byte	57                              # DW_AT_name
	.byte	8                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x205:0x3 DW_TAG_enumerator
	.byte	58                              # DW_AT_name
	.byte	9                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x208:0x3 DW_TAG_enumerator
	.byte	59                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x20b:0x3 DW_TAG_enumerator
	.byte	60                              # DW_AT_name
	.byte	11                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x20f:0x1 DW_TAG_pointer_type
	.byte	15                              # Abbrev [15] 0x210:0x5 DW_TAG_pointer_type
	.long	533                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x215:0x5 DW_TAG_const_type
	.long	377                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x21a:0x34 DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	84                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1760                            # DW_AT_type
                                        # DW_AT_external
	.byte	18                              # Abbrev [18] 0x229:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	90                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.long	1760                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x232:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	91                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.long	609                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x23b:0x6 DW_TAG_call_site
	.long	590                             # DW_AT_call_origin
	.byte	1                               # DW_AT_call_return_pc
	.byte	19                              # Abbrev [19] 0x241:0x6 DW_TAG_call_site
	.long	702                             # DW_AT_call_origin
	.byte	2                               # DW_AT_call_return_pc
	.byte	19                              # Abbrev [19] 0x247:0x6 DW_TAG_call_site
	.long	702                             # DW_AT_call_origin
	.byte	3                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x24e:0x13 DW_TAG_subprogram
	.byte	61                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	211                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	527                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	21                              # Abbrev [21] 0x256:0x5 DW_TAG_formal_parameter
	.long	453                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x25b:0x5 DW_TAG_formal_parameter
	.long	609                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x261:0x5 DW_TAG_pointer_type
	.long	614                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x266:0x9 DW_TAG_typedef
	.long	623                             # DW_AT_type
	.byte	65                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.short	403                             # DW_AT_decl_line
	.byte	23                              # Abbrev [23] 0x26f:0x24 DW_TAG_structure_type
	.byte	24                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.short	341                             # DW_AT_decl_line
	.byte	24                              # Abbrev [24] 0x274:0xa DW_TAG_member
	.byte	62                              # DW_AT_name
	.long	659                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.short	376                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x27e:0xa DW_TAG_member
	.byte	63                              # DW_AT_name
	.long	685                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x288:0xa DW_TAG_member
	.byte	64                              # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.short	401                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x293:0x5 DW_TAG_pointer_type
	.long	664                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x298:0x15 DW_TAG_subroutine_type
	.long	527                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	21                              # Abbrev [21] 0x29d:0x5 DW_TAG_formal_parameter
	.long	527                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x2a2:0x5 DW_TAG_formal_parameter
	.long	453                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x2a7:0x5 DW_TAG_formal_parameter
	.long	453                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x2ad:0x5 DW_TAG_pointer_type
	.long	690                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x2b2:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	21                              # Abbrev [21] 0x2b3:0x5 DW_TAG_formal_parameter
	.long	527                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x2b8:0x5 DW_TAG_formal_parameter
	.long	527                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x2be:0xf DW_TAG_subprogram
	.byte	66                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	21                              # Abbrev [21] 0x2c2:0x5 DW_TAG_formal_parameter
	.long	717                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x2c7:0x5 DW_TAG_formal_parameter
	.long	722                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x2cd:0x5 DW_TAG_pointer_type
	.long	247                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x2d2:0x8 DW_TAG_typedef
	.long	461                             # DW_AT_type
	.byte	67                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	28                              # Abbrev [28] 0x2da:0x26 DW_TAG_subprogram
	.byte	4                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	86                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	29                              # Abbrev [29] 0x2e5:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	90                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.long	1760                            # DW_AT_type
	.byte	29                              # Abbrev [29] 0x2ef:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	91                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.long	609                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x2f9:0x6 DW_TAG_call_site
	.long	768                             # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	4                               # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x300:0xf DW_TAG_subprogram
	.byte	68                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	21                              # Abbrev [21] 0x304:0x5 DW_TAG_formal_parameter
	.long	527                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x309:0x5 DW_TAG_formal_parameter
	.long	609                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0x30f:0x19 DW_TAG_subprogram
	.byte	69                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	219                             # DW_AT_type
                                        # DW_AT_inline
	.byte	32                              # Abbrev [32] 0x317:0x8 DW_TAG_formal_parameter
	.byte	19                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.long	219                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x31f:0x8 DW_TAG_formal_parameter
	.byte	20                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.long	219                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0x328:0x19 DW_TAG_subprogram
	.byte	70                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	219                             # DW_AT_type
                                        # DW_AT_inline
	.byte	32                              # Abbrev [32] 0x330:0x8 DW_TAG_formal_parameter
	.byte	19                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.long	219                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x338:0x8 DW_TAG_formal_parameter
	.byte	20                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.long	219                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0x341:0x11 DW_TAG_subprogram
	.byte	71                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	219                             # DW_AT_type
                                        # DW_AT_inline
	.byte	32                              # Abbrev [32] 0x349:0x8 DW_TAG_formal_parameter
	.byte	72                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.long	219                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x352:0x62 DW_TAG_subprogram
	.byte	5                               # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	87                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	219                             # DW_AT_type
                                        # DW_AT_external
	.byte	18                              # Abbrev [18] 0x361:0x9 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	90                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.long	1773                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x36a:0x43 DW_TAG_inlined_subroutine
	.long	808                             # DW_AT_abstract_origin
	.byte	6                               # DW_AT_low_pc
	.long	.Ltmp19-.Ltmp15                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	117                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0x377:0x6 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.long	816                             # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0x37d:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	824                             # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x384:0x1b DW_TAG_inlined_subroutine
	.long	783                             # DW_AT_abstract_origin
	.byte	6                               # DW_AT_low_pc
	.long	.Ltmp18-.Ltmp15                 # DW_AT_high_pc
	.byte	9                               # DW_AT_call_file
	.byte	59                              # DW_AT_call_line
	.byte	19                              # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0x391:0x6 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_location
	.long	791                             # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0x397:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	799                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0x39f:0xd DW_TAG_inlined_subroutine
	.long	833                             # DW_AT_abstract_origin
	.byte	7                               # DW_AT_low_pc
	.long	.Ltmp19-.Ltmp18                 # DW_AT_high_pc
	.byte	9                               # DW_AT_call_file
	.byte	59                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x3ad:0x6 DW_TAG_call_site
	.long	948                             # DW_AT_call_origin
	.byte	8                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x3b4:0xe DW_TAG_subprogram
	.byte	73                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	413                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	21                              # Abbrev [21] 0x3bc:0x5 DW_TAG_formal_parameter
	.long	219                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0x3c2:0x29 DW_TAG_subprogram
	.byte	74                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1003                            # DW_AT_type
                                        # DW_AT_inline
	.byte	32                              # Abbrev [32] 0x3ca:0x8 DW_TAG_formal_parameter
	.byte	76                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.long	1011                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0x3d2:0x8 DW_TAG_formal_parameter
	.byte	41                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.long	219                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x3da:0x8 DW_TAG_formal_parameter
	.byte	18                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.long	219                             # DW_AT_type
	.byte	37                              # Abbrev [37] 0x3e2:0x8 DW_TAG_variable
	.byte	77                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.long	1016                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x3eb:0x8 DW_TAG_typedef
	.long	482                             # DW_AT_type
	.byte	75                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x3f3:0x5 DW_TAG_pointer_type
	.long	161                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x3f8:0xc DW_TAG_array_type
	.long	1028                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x3fd:0x6 DW_TAG_subrange_type
	.long	397                             # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x404:0x5 DW_TAG_const_type
	.long	219                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0x409:0x21 DW_TAG_subprogram
	.byte	78                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	219                             # DW_AT_type
                                        # DW_AT_inline
	.byte	32                              # Abbrev [32] 0x411:0x8 DW_TAG_formal_parameter
	.byte	13                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.long	219                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x419:0x8 DW_TAG_formal_parameter
	.byte	19                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.long	219                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x421:0x8 DW_TAG_formal_parameter
	.byte	20                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.long	219                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x42a:0x13e DW_TAG_subprogram
	.byte	9                               # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	88                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1003                            # DW_AT_type
                                        # DW_AT_external
	.byte	18                              # Abbrev [18] 0x439:0x9 DW_TAG_formal_parameter
	.byte	5                               # DW_AT_location
	.byte	90                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.long	1760                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x442:0x9 DW_TAG_formal_parameter
	.byte	6                               # DW_AT_location
	.byte	41                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.long	219                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x44b:0x9 DW_TAG_formal_parameter
	.byte	7                               # DW_AT_location
	.byte	18                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.long	219                             # DW_AT_type
	.byte	38                              # Abbrev [38] 0x454:0x4e DW_TAG_lexical_block
	.byte	10                              # DW_AT_low_pc
	.long	.Ltmp33-.Ltmp26                 # DW_AT_high_pc
	.byte	37                              # Abbrev [37] 0x45a:0x8 DW_TAG_variable
	.byte	92                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	153                             # DW_AT_decl_line
	.long	1783                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x462:0x3f DW_TAG_inlined_subroutine
	.long	962                             # DW_AT_abstract_origin
	.byte	10                              # DW_AT_low_pc
	.long	.Ltmp33-.Ltmp26                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	153                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	35                              # Abbrev [35] 0x46f:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	115
	.byte	8
	.byte	159
	.long	970                             # DW_AT_abstract_origin
	.byte	34                              # Abbrev [34] 0x478:0x6 DW_TAG_formal_parameter
	.byte	8                               # DW_AT_location
	.long	978                             # DW_AT_abstract_origin
	.byte	34                              # Abbrev [34] 0x47e:0x6 DW_TAG_formal_parameter
	.byte	9                               # DW_AT_location
	.long	986                             # DW_AT_abstract_origin
	.byte	39                              # Abbrev [39] 0x484:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	0
	.long	994                             # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x48c:0x14 DW_TAG_inlined_subroutine
	.long	833                             # DW_AT_abstract_origin
	.byte	10                              # DW_AT_low_pc
	.long	.Ltmp27-.Ltmp26                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	127                             # DW_AT_call_line
	.byte	23                              # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0x499:0x6 DW_TAG_formal_parameter
	.byte	10                              # DW_AT_location
	.long	841                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x4a2:0x43 DW_TAG_inlined_subroutine
	.long	808                             # DW_AT_abstract_origin
	.byte	11                              # DW_AT_low_pc
	.long	.Ltmp39-.Ltmp36                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	159                             # DW_AT_call_line
	.byte	7                               # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0x4af:0x6 DW_TAG_formal_parameter
	.byte	11                              # DW_AT_location
	.long	816                             # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0x4b5:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	95
	.long	824                             # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x4bc:0x1b DW_TAG_inlined_subroutine
	.long	783                             # DW_AT_abstract_origin
	.byte	11                              # DW_AT_low_pc
	.long	.Ltmp38-.Ltmp36                 # DW_AT_high_pc
	.byte	9                               # DW_AT_call_file
	.byte	59                              # DW_AT_call_line
	.byte	19                              # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0x4c9:0x6 DW_TAG_formal_parameter
	.byte	12                              # DW_AT_location
	.long	791                             # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0x4cf:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	95
	.long	799                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0x4d7:0xd DW_TAG_inlined_subroutine
	.long	833                             # DW_AT_abstract_origin
	.byte	12                              # DW_AT_low_pc
	.long	.Ltmp39-.Ltmp38                 # DW_AT_high_pc
	.byte	9                               # DW_AT_call_file
	.byte	59                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x4e5:0x64 DW_TAG_inlined_subroutine
	.long	1033                            # DW_AT_abstract_origin
	.byte	13                              # DW_AT_low_pc
	.long	.Ltmp46-.Ltmp41                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	162                             # DW_AT_call_line
	.byte	7                               # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0x4f2:0x6 DW_TAG_formal_parameter
	.byte	13                              # DW_AT_location
	.long	1041                            # DW_AT_abstract_origin
	.byte	34                              # Abbrev [34] 0x4f8:0x6 DW_TAG_formal_parameter
	.byte	14                              # DW_AT_location
	.long	1049                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0x4fe:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	1057                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x505:0x43 DW_TAG_inlined_subroutine
	.long	808                             # DW_AT_abstract_origin
	.byte	13                              # DW_AT_low_pc
	.long	.Ltmp44-.Ltmp41                 # DW_AT_high_pc
	.byte	9                               # DW_AT_call_file
	.byte	69                              # DW_AT_call_line
	.byte	6                               # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0x512:0x6 DW_TAG_formal_parameter
	.byte	15                              # DW_AT_location
	.long	816                             # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0x518:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	824                             # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x51f:0x1b DW_TAG_inlined_subroutine
	.long	783                             # DW_AT_abstract_origin
	.byte	13                              # DW_AT_low_pc
	.long	.Ltmp43-.Ltmp41                 # DW_AT_high_pc
	.byte	9                               # DW_AT_call_file
	.byte	59                              # DW_AT_call_line
	.byte	19                              # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0x52c:0x6 DW_TAG_formal_parameter
	.byte	16                              # DW_AT_location
	.long	791                             # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0x532:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	799                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0x53a:0xd DW_TAG_inlined_subroutine
	.long	833                             # DW_AT_abstract_origin
	.byte	14                              # DW_AT_low_pc
	.long	.Ltmp44-.Ltmp43                 # DW_AT_high_pc
	.byte	9                               # DW_AT_call_file
	.byte	59                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x549:0x6 DW_TAG_call_site
	.long	948                             # DW_AT_call_origin
	.byte	15                              # DW_AT_call_return_pc
	.byte	19                              # Abbrev [19] 0x54f:0x6 DW_TAG_call_site
	.long	948                             # DW_AT_call_origin
	.byte	16                              # DW_AT_call_return_pc
	.byte	19                              # Abbrev [19] 0x555:0x6 DW_TAG_call_site
	.long	1384                            # DW_AT_call_origin
	.byte	17                              # DW_AT_call_return_pc
	.byte	19                              # Abbrev [19] 0x55b:0x6 DW_TAG_call_site
	.long	948                             # DW_AT_call_origin
	.byte	18                              # DW_AT_call_return_pc
	.byte	19                              # Abbrev [19] 0x561:0x6 DW_TAG_call_site
	.long	948                             # DW_AT_call_origin
	.byte	19                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x568:0x19 DW_TAG_subprogram
	.byte	79                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	21                              # Abbrev [21] 0x56c:0x5 DW_TAG_formal_parameter
	.long	717                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x571:0x5 DW_TAG_formal_parameter
	.long	722                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x576:0x5 DW_TAG_formal_parameter
	.long	528                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x57b:0x5 DW_TAG_formal_parameter
	.long	453                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x581:0xfe DW_TAG_subprogram
	.byte	20                              # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	89                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1003                            # DW_AT_type
                                        # DW_AT_external
	.byte	18                              # Abbrev [18] 0x590:0x9 DW_TAG_formal_parameter
	.byte	17                              # DW_AT_location
	.byte	90                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.long	1760                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x599:0x9 DW_TAG_formal_parameter
	.byte	18                              # DW_AT_location
	.byte	93                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.long	528                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x5a2:0x9 DW_TAG_formal_parameter
	.byte	19                              # DW_AT_location
	.byte	94                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
	.long	1702                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x5ab:0x9 DW_TAG_formal_parameter
	.byte	20                              # DW_AT_location
	.byte	95                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
	.long	453                             # DW_AT_type
	.byte	40                              # Abbrev [40] 0x5b4:0x9 DW_TAG_variable
	.byte	21                              # DW_AT_location
	.byte	96                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.long	1003                            # DW_AT_type
	.byte	37                              # Abbrev [37] 0x5bd:0x8 DW_TAG_variable
	.byte	98                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.long	1788                            # DW_AT_type
	.byte	41                              # Abbrev [41] 0x5c5:0x6 DW_TAG_label
	.byte	97                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	326                             # DW_AT_decl_line
	.byte	35                              # DW_AT_low_pc
	.byte	42                              # Abbrev [42] 0x5cb:0x5c DW_TAG_lexical_block
	.byte	0                               # DW_AT_ranges
	.byte	40                              # Abbrev [40] 0x5cd:0x9 DW_TAG_variable
	.byte	22                              # DW_AT_location
	.byte	36                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	219                             # DW_AT_decl_line
	.long	1697                            # DW_AT_type
	.byte	38                              # Abbrev [38] 0x5d6:0x50 DW_TAG_lexical_block
	.byte	21                              # DW_AT_low_pc
	.long	.Ltmp95-.Ltmp88                 # DW_AT_high_pc
	.byte	37                              # Abbrev [37] 0x5dc:0x8 DW_TAG_variable
	.byte	92                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	240                             # DW_AT_decl_line
	.long	1783                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x5e4:0x41 DW_TAG_inlined_subroutine
	.long	962                             # DW_AT_abstract_origin
	.byte	22                              # DW_AT_low_pc
	.long	.Ltmp95-.Ltmp89                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	240                             # DW_AT_call_line
	.byte	4                               # DW_AT_call_column
	.byte	35                              # Abbrev [35] 0x5f1:0xa DW_TAG_formal_parameter
	.byte	4                               # DW_AT_location
	.byte	115
	.ascii	"\220\001"
	.byte	159
	.long	970                             # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0x5fb:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	86
	.long	978                             # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0x602:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.long	986                             # DW_AT_abstract_origin
	.byte	43                              # Abbrev [43] 0x609:0x6 DW_TAG_variable
	.byte	24                              # DW_AT_location
	.long	994                             # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x60f:0x15 DW_TAG_inlined_subroutine
	.long	833                             # DW_AT_abstract_origin
	.byte	22                              # DW_AT_low_pc
	.long	.Ltmp90-.Ltmp89                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	127                             # DW_AT_call_line
	.byte	23                              # DW_AT_call_column
	.byte	35                              # Abbrev [35] 0x61c:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	86
	.long	841                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	44                              # Abbrev [44] 0x627:0x15 DW_TAG_inlined_subroutine
	.long	783                             # DW_AT_abstract_origin
	.byte	23                              # DW_AT_low_pc
	.long	.Ltmp71-.Ltmp69                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	267                             # DW_AT_call_line
	.byte	38                              # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0x635:0x6 DW_TAG_formal_parameter
	.byte	23                              # DW_AT_location
	.long	791                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x63c:0x6 DW_TAG_call_site
	.long	1663                            # DW_AT_call_origin
	.byte	24                              # DW_AT_call_return_pc
	.byte	19                              # Abbrev [19] 0x642:0x6 DW_TAG_call_site
	.long	948                             # DW_AT_call_origin
	.byte	25                              # DW_AT_call_return_pc
	.byte	19                              # Abbrev [19] 0x648:0x6 DW_TAG_call_site
	.long	1663                            # DW_AT_call_origin
	.byte	26                              # DW_AT_call_return_pc
	.byte	19                              # Abbrev [19] 0x64e:0x6 DW_TAG_call_site
	.long	948                             # DW_AT_call_origin
	.byte	27                              # DW_AT_call_return_pc
	.byte	19                              # Abbrev [19] 0x654:0x6 DW_TAG_call_site
	.long	948                             # DW_AT_call_origin
	.byte	28                              # DW_AT_call_return_pc
	.byte	19                              # Abbrev [19] 0x65a:0x6 DW_TAG_call_site
	.long	1384                            # DW_AT_call_origin
	.byte	29                              # DW_AT_call_return_pc
	.byte	19                              # Abbrev [19] 0x660:0x6 DW_TAG_call_site
	.long	1707                            # DW_AT_call_origin
	.byte	30                              # DW_AT_call_return_pc
	.byte	19                              # Abbrev [19] 0x666:0x6 DW_TAG_call_site
	.long	1731                            # DW_AT_call_origin
	.byte	31                              # DW_AT_call_return_pc
	.byte	19                              # Abbrev [19] 0x66c:0x6 DW_TAG_call_site
	.long	1731                            # DW_AT_call_origin
	.byte	32                              # DW_AT_call_return_pc
	.byte	19                              # Abbrev [19] 0x672:0x6 DW_TAG_call_site
	.long	1746                            # DW_AT_call_origin
	.byte	33                              # DW_AT_call_return_pc
	.byte	19                              # Abbrev [19] 0x678:0x6 DW_TAG_call_site
	.long	1707                            # DW_AT_call_origin
	.byte	34                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x67f:0x22 DW_TAG_subprogram
	.byte	80                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1003                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	21                              # Abbrev [21] 0x687:0x5 DW_TAG_formal_parameter
	.long	1697                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x68c:0x5 DW_TAG_formal_parameter
	.long	1702                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x691:0x5 DW_TAG_formal_parameter
	.long	528                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x696:0x5 DW_TAG_formal_parameter
	.long	1702                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x69b:0x5 DW_TAG_formal_parameter
	.long	453                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x6a1:0x5 DW_TAG_pointer_type
	.long	219                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x6a6:0x5 DW_TAG_pointer_type
	.long	453                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x6ab:0x18 DW_TAG_subprogram
	.byte	81                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	413                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	21                              # Abbrev [21] 0x6b3:0x5 DW_TAG_formal_parameter
	.long	528                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x6b8:0x5 DW_TAG_formal_parameter
	.long	453                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x6bd:0x5 DW_TAG_formal_parameter
	.long	413                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x6c3:0xf DW_TAG_subprogram
	.byte	82                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	21                              # Abbrev [21] 0x6c7:0x5 DW_TAG_formal_parameter
	.long	717                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x6cc:0x5 DW_TAG_formal_parameter
	.long	722                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x6d2:0xe DW_TAG_subprogram
	.byte	83                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	95                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	413                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	21                              # Abbrev [21] 0x6da:0x5 DW_TAG_formal_parameter
	.long	722                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x6e0:0x5 DW_TAG_pointer_type
	.long	1765                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x6e5:0x8 DW_TAG_typedef
	.long	43                              # DW_AT_type
	.byte	85                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x6ed:0x5 DW_TAG_pointer_type
	.long	1778                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x6f2:0x5 DW_TAG_const_type
	.long	1765                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x6f7:0x5 DW_TAG_const_type
	.long	1003                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x6fc:0x5 DW_TAG_const_type
	.long	453                             # DW_AT_type
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
	.uleb128 .Ltmp59-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp68-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp88-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp102-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	400                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/common/index_hash.c"   # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/xz-test/src" # string offset=133
.Linfo_string3:
	.asciz	"sequence"                      # string offset=165
.Linfo_string4:
	.asciz	"unsigned int"                  # string offset=174
.Linfo_string5:
	.asciz	"SEQ_BLOCK"                     # string offset=187
.Linfo_string6:
	.asciz	"SEQ_COUNT"                     # string offset=197
.Linfo_string7:
	.asciz	"SEQ_UNPADDED"                  # string offset=207
.Linfo_string8:
	.asciz	"SEQ_UNCOMPRESSED"              # string offset=220
.Linfo_string9:
	.asciz	"SEQ_PADDING_INIT"              # string offset=237
.Linfo_string10:
	.asciz	"SEQ_PADDING"                   # string offset=254
.Linfo_string11:
	.asciz	"SEQ_CRC32"                     # string offset=266
.Linfo_string12:
	.asciz	"blocks"                        # string offset=276
.Linfo_string13:
	.asciz	"blocks_size"                   # string offset=283
.Linfo_string14:
	.asciz	"unsigned long"                 # string offset=295
.Linfo_string15:
	.asciz	"__uint64_t"                    # string offset=309
.Linfo_string16:
	.asciz	"uint64_t"                      # string offset=320
.Linfo_string17:
	.asciz	"lzma_vli"                      # string offset=329
.Linfo_string18:
	.asciz	"uncompressed_size"             # string offset=338
.Linfo_string19:
	.asciz	"count"                         # string offset=356
.Linfo_string20:
	.asciz	"index_list_size"               # string offset=362
.Linfo_string21:
	.asciz	"check"                         # string offset=378
.Linfo_string22:
	.asciz	"buffer"                        # string offset=384
.Linfo_string23:
	.asciz	"u8"                            # string offset=391
.Linfo_string24:
	.asciz	"unsigned char"                 # string offset=394
.Linfo_string25:
	.asciz	"__uint8_t"                     # string offset=408
.Linfo_string26:
	.asciz	"uint8_t"                       # string offset=418
.Linfo_string27:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=426
.Linfo_string28:
	.asciz	"u32"                           # string offset=446
.Linfo_string29:
	.asciz	"__uint32_t"                    # string offset=450
.Linfo_string30:
	.asciz	"uint32_t"                      # string offset=461
.Linfo_string31:
	.asciz	"u64"                           # string offset=470
.Linfo_string32:
	.asciz	"state"                         # string offset=474
.Linfo_string33:
	.asciz	"crc32"                         # string offset=480
.Linfo_string34:
	.asciz	"crc64"                         # string offset=486
.Linfo_string35:
	.asciz	"sha256"                        # string offset=492
.Linfo_string36:
	.asciz	"size"                          # string offset=499
.Linfo_string37:
	.asciz	"lzma_check_state"              # string offset=504
.Linfo_string38:
	.asciz	"lzma_index_hash_info"          # string offset=521
.Linfo_string39:
	.asciz	"records"                       # string offset=542
.Linfo_string40:
	.asciz	"remaining"                     # string offset=550
.Linfo_string41:
	.asciz	"unpadded_size"                 # string offset=560
.Linfo_string42:
	.asciz	"pos"                           # string offset=574
.Linfo_string43:
	.asciz	"size_t"                        # string offset=578
.Linfo_string44:
	.asciz	"lzma_index_hash_s"             # string offset=585
.Linfo_string45:
	.asciz	"LZMA_CHECK_NONE"               # string offset=603
.Linfo_string46:
	.asciz	"LZMA_CHECK_CRC32"              # string offset=619
.Linfo_string47:
	.asciz	"LZMA_CHECK_CRC64"              # string offset=636
.Linfo_string48:
	.asciz	"LZMA_CHECK_SHA256"             # string offset=653
.Linfo_string49:
	.asciz	"LZMA_OK"                       # string offset=671
.Linfo_string50:
	.asciz	"LZMA_STREAM_END"               # string offset=679
.Linfo_string51:
	.asciz	"LZMA_NO_CHECK"                 # string offset=695
.Linfo_string52:
	.asciz	"LZMA_UNSUPPORTED_CHECK"        # string offset=709
.Linfo_string53:
	.asciz	"LZMA_GET_CHECK"                # string offset=732
.Linfo_string54:
	.asciz	"LZMA_MEM_ERROR"                # string offset=747
.Linfo_string55:
	.asciz	"LZMA_MEMLIMIT_ERROR"           # string offset=762
.Linfo_string56:
	.asciz	"LZMA_FORMAT_ERROR"             # string offset=782
.Linfo_string57:
	.asciz	"LZMA_OPTIONS_ERROR"            # string offset=800
.Linfo_string58:
	.asciz	"LZMA_DATA_ERROR"               # string offset=819
.Linfo_string59:
	.asciz	"LZMA_BUF_ERROR"                # string offset=835
.Linfo_string60:
	.asciz	"LZMA_PROG_ERROR"               # string offset=850
.Linfo_string61:
	.asciz	"lzma_alloc"                    # string offset=866
.Linfo_string62:
	.asciz	"alloc"                         # string offset=877
.Linfo_string63:
	.asciz	"free"                          # string offset=883
.Linfo_string64:
	.asciz	"opaque"                        # string offset=888
.Linfo_string65:
	.asciz	"lzma_allocator"                # string offset=895
.Linfo_string66:
	.asciz	"lzma_check_init"               # string offset=910
.Linfo_string67:
	.asciz	"lzma_check"                    # string offset=926
.Linfo_string68:
	.asciz	"lzma_free"                     # string offset=937
.Linfo_string69:
	.asciz	"index_size_unpadded"           # string offset=947
.Linfo_string70:
	.asciz	"index_size"                    # string offset=967
.Linfo_string71:
	.asciz	"vli_ceil4"                     # string offset=978
.Linfo_string72:
	.asciz	"vli"                           # string offset=988
.Linfo_string73:
	.asciz	"lzma_vli_size"                 # string offset=992
.Linfo_string74:
	.asciz	"hash_append"                   # string offset=1006
.Linfo_string75:
	.asciz	"lzma_ret"                      # string offset=1018
.Linfo_string76:
	.asciz	"info"                          # string offset=1027
.Linfo_string77:
	.asciz	"sizes"                         # string offset=1032
.Linfo_string78:
	.asciz	"index_stream_size"             # string offset=1038
.Linfo_string79:
	.asciz	"lzma_check_update"             # string offset=1056
.Linfo_string80:
	.asciz	"lzma_vli_decode"               # string offset=1074
.Linfo_string81:
	.asciz	"lzma_crc32"                    # string offset=1090
.Linfo_string82:
	.asciz	"lzma_check_finish"             # string offset=1101
.Linfo_string83:
	.asciz	"lzma_check_size"               # string offset=1119
.Linfo_string84:
	.asciz	"lzma_index_hash_init"          # string offset=1135
.Linfo_string85:
	.asciz	"lzma_index_hash"               # string offset=1156
.Linfo_string86:
	.asciz	"lzma_index_hash_end"           # string offset=1172
.Linfo_string87:
	.asciz	"lzma_index_hash_size"          # string offset=1192
.Linfo_string88:
	.asciz	"lzma_index_hash_append"        # string offset=1213
.Linfo_string89:
	.asciz	"lzma_index_hash_decode"        # string offset=1236
.Linfo_string90:
	.asciz	"index_hash"                    # string offset=1259
.Linfo_string91:
	.asciz	"allocator"                     # string offset=1270
.Linfo_string92:
	.asciz	"ret_"                          # string offset=1280
.Linfo_string93:
	.asciz	"in"                            # string offset=1285
.Linfo_string94:
	.asciz	"in_pos"                        # string offset=1288
.Linfo_string95:
	.asciz	"in_size"                       # string offset=1295
.Linfo_string96:
	.asciz	"ret"                           # string offset=1303
.Linfo_string97:
	.asciz	"out"                           # string offset=1307
.Linfo_string98:
	.asciz	"in_start"                      # string offset=1311
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.Lfunc_begin0
	.quad	.Ltmp3
	.quad	.Ltmp7
	.quad	.Ltmp8
	.quad	.Lfunc_begin1
	.quad	.Lfunc_begin2
	.quad	.Ltmp15
	.quad	.Ltmp18
	.quad	.Ltmp17
	.quad	.Lfunc_begin3
	.quad	.Ltmp26
	.quad	.Ltmp36
	.quad	.Ltmp38
	.quad	.Ltmp41
	.quad	.Ltmp43
	.quad	.Ltmp30
	.quad	.Ltmp31
	.quad	.Ltmp32
	.quad	.Ltmp37
	.quad	.Ltmp42
	.quad	.Lfunc_begin4
	.quad	.Ltmp88
	.quad	.Ltmp89
	.quad	.Ltmp69
	.quad	.Ltmp61
	.quad	.Ltmp70
	.quad	.Ltmp76
	.quad	.Ltmp91
	.quad	.Ltmp92
	.quad	.Ltmp95
	.quad	.Ltmp107
	.quad	.Ltmp113
	.quad	.Ltmp114
	.quad	.Ltmp115
	.quad	.Ltmp119
	.quad	.Ltmp105
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
