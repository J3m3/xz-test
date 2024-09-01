	.text
	.file	"common.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/common/common.c" md5 0x4324f888732c15afaa7e948651790b3b
	.file	1 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.file	2 "liblzma/api/lzma" "check.h" md5 0xb07c3297e2bcc14bb477793d08325ee3
	.file	3 "liblzma/common" "common.h" md5 0xb445e74fc76042ed64f7e1908fcc1934
	.file	4 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	5 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	6 "liblzma/api/lzma" "vli.h" md5 0xe1aa51527ce08aa260777d4fb351a0b7
	.file	7 "/usr/include" "stdint.h" md5 0xa48e64edacc5b19f56c99745232c963c
	.file	8 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.file	9 "liblzma/api/lzma" "filter.h" md5 0x5eb86d86854a7619ed1d1ac1b57b2484
	.globl	lzma_version_number             # -- Begin function lzma_version_number
	.p2align	4, 0x90
	.type	lzma_version_number,@function
lzma_version_number:                    # @lzma_version_number
.Lfunc_begin0:
	.cfi_startproc
# %bb.0:                                # %entry
	.loc	0 23 2 prologue_end             # liblzma/common/common.c:23:2
	movl	$50000056, %eax                 # imm = 0x2FAF0B8
	retq
.Ltmp0:
.Lfunc_end0:
	.size	lzma_version_number, .Lfunc_end0-lzma_version_number
	.cfi_endproc
                                        # -- End function
	.globl	lzma_version_string             # -- Begin function lzma_version_string
	.p2align	4, 0x90
	.type	lzma_version_string,@function
lzma_version_string:                    # @lzma_version_string
.Lfunc_begin1:
	.cfi_startproc
# %bb.0:                                # %entry
	.loc	0 30 2 prologue_end             # liblzma/common/common.c:30:2
	movl	$.L.str, %eax
	retq
.Ltmp1:
.Lfunc_end1:
	.size	lzma_version_string, .Lfunc_end1-lzma_version_string
	.cfi_endproc
                                        # -- End function
	.globl	lzma_alloc                      # -- Begin function lzma_alloc
	.p2align	4, 0x90
	.type	lzma_alloc,@function
lzma_alloc:                             # @lzma_alloc
.Lfunc_begin2:
	.loc	0 40 0                          # liblzma/common/common.c:40:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_alloc:size <- $rdi
	#DEBUG_VALUE: lzma_alloc:allocator <- $rsi
	movq	%rdi, %rdx
.Ltmp2:
	.loc	0 42 6 prologue_end             # liblzma/common/common.c:42:6
	cmpq	$1, %rdi
	adcq	$0, %rdx
.Ltmp3:
	#DEBUG_VALUE: lzma_alloc:size <- $rdx
	.loc	0 47 16                         # liblzma/common/common.c:47:16
	testq	%rsi, %rsi
	.loc	0 47 24 is_stmt 0               # liblzma/common/common.c:47:24
	je	.LBB2_3
.Ltmp4:
# %bb.1:                                # %land.lhs.true
	#DEBUG_VALUE: lzma_alloc:size <- $rdx
	#DEBUG_VALUE: lzma_alloc:allocator <- $rsi
	.loc	0 47 38                         # liblzma/common/common.c:47:38
	movq	(%rsi), %rax
	.loc	0 47 44                         # liblzma/common/common.c:47:44
	testq	%rax, %rax
.Ltmp5:
	.loc	0 47 6                          # liblzma/common/common.c:47:6
	je	.LBB2_3
.Ltmp6:
# %bb.2:                                # %if.then3
	#DEBUG_VALUE: lzma_alloc:size <- $rdx
	#DEBUG_VALUE: lzma_alloc:allocator <- $rsi
	.loc	0 48 37 is_stmt 1               # liblzma/common/common.c:48:37
	movq	16(%rsi), %rdi
	.loc	0 48 9 is_stmt 0                # liblzma/common/common.c:48:9
	movl	$1, %esi
.Ltmp7:
	#DEBUG_VALUE: lzma_alloc:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	jmpq	*%rax                           # TAILCALL
.Ltmp8:
.LBB2_3:                                # %if.else
	#DEBUG_VALUE: lzma_alloc:size <- $rdx
	#DEBUG_VALUE: lzma_alloc:allocator <- $rsi
	.loc	0 50 9 is_stmt 1                # liblzma/common/common.c:50:9
	movq	%rdx, %rdi
.Ltmp9:
	jmp	malloc@PLT                      # TAILCALL
.Ltmp10:
.Lfunc_end2:
	.size	lzma_alloc, .Lfunc_end2-lzma_alloc
	.cfi_endproc
	.file	10 "/usr/include" "stdlib.h" md5 0x02258fad21adf111bb9df9825e61954a
                                        # -- End function
	.globl	lzma_free                       # -- Begin function lzma_free
	.p2align	4, 0x90
	.type	lzma_free,@function
lzma_free:                              # @lzma_free
.Lfunc_begin3:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_free:ptr <- $rdi
	#DEBUG_VALUE: lzma_free:allocator <- $rsi
	.loc	0 59 16 prologue_end            # liblzma/common/common.c:59:16
	testq	%rsi, %rsi
.Ltmp11:
	.loc	0 59 24 is_stmt 0               # liblzma/common/common.c:59:24
	je	free@PLT                        # TAILCALL
.Ltmp12:
# %bb.1:                                # %land.lhs.true
	#DEBUG_VALUE: lzma_free:ptr <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_free:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	.loc	0 59 38                         # liblzma/common/common.c:59:38
	movq	8(%rsi), %rcx
	.loc	0 59 43                         # liblzma/common/common.c:59:43
	testq	%rcx, %rcx
.Ltmp13:
	.loc	0 59 6                          # liblzma/common/common.c:59:6
	je	free@PLT                        # TAILCALL
.Ltmp14:
# %bb.2:                                # %if.then
	#DEBUG_VALUE: lzma_free:ptr <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_free:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	.loc	0 60 30 is_stmt 1               # liblzma/common/common.c:60:30
	movq	16(%rsi), %rax
	movq	%rdi, %rsi
	.loc	0 60 3 is_stmt 0                # liblzma/common/common.c:60:3
	movq	%rax, %rdi
.Ltmp15:
	jmpq	*%rcx                           # TAILCALL
.Ltmp16:
.Lfunc_end3:
	.size	lzma_free, .Lfunc_end3-lzma_free
	.cfi_endproc
                                        # -- End function
	.globl	lzma_bufcpy                     # -- Begin function lzma_bufcpy
	.p2align	4, 0x90
	.type	lzma_bufcpy,@function
lzma_bufcpy:                            # @lzma_bufcpy
.Lfunc_begin4:
	.loc	0 76 0 is_stmt 1                # liblzma/common/common.c:76:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_bufcpy:in <- $rdi
	#DEBUG_VALUE: lzma_bufcpy:in_pos <- $rsi
	#DEBUG_VALUE: lzma_bufcpy:in_size <- $rdx
	#DEBUG_VALUE: lzma_bufcpy:out <- $rcx
	#DEBUG_VALUE: lzma_bufcpy:out_pos <- $r8
	#DEBUG_VALUE: lzma_bufcpy:out_size <- $r9
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
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%r9, %rbx
	movq	%r8, %r14
	movq	%rsi, %r15
.Ltmp17:
	.loc	0 77 36 prologue_end            # liblzma/common/common.c:77:36
	movq	(%rsi), %r12
	.loc	0 77 34 is_stmt 0               # liblzma/common/common.c:77:34
	subq	%r12, %rdx
.Ltmp18:
	#DEBUG_VALUE: lzma_bufcpy:in_size <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_bufcpy:in_avail <- $rdx
	.loc	0 78 38 is_stmt 1               # liblzma/common/common.c:78:38
	movq	(%r8), %r13
	.loc	0 78 36 is_stmt 0               # liblzma/common/common.c:78:36
	subq	%r13, %rbx
.Ltmp19:
	#DEBUG_VALUE: lzma_bufcpy:out_avail <- $rbx
	.loc	0 79 27 is_stmt 1               # liblzma/common/common.c:79:27
	cmpq	%rbx, %rdx
	cmovbq	%rdx, %rbx
.Ltmp20:
	#DEBUG_VALUE: lzma_bufcpy:copy_size <- $rbx
	.loc	0 81 13                         # liblzma/common/common.c:81:13
	leaq	(%rcx,%r13), %rax
	.loc	0 81 28 is_stmt 0               # liblzma/common/common.c:81:28
	leaq	(%rdi,%r12), %rsi
.Ltmp21:
	#DEBUG_VALUE: lzma_bufcpy:in_pos <- $r15
	.loc	0 81 2                          # liblzma/common/common.c:81:2
	movq	%rax, %rdi
.Ltmp22:
	#DEBUG_VALUE: lzma_bufcpy:in <- [DW_OP_LLVM_entry_value 1] $rdi
	movq	%rbx, %rdx
.Ltmp23:
	callq	memcpy@PLT
.Ltmp24:
	#DEBUG_VALUE: lzma_bufcpy:out_size <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: lzma_bufcpy:out_pos <- $r14
	#DEBUG_VALUE: lzma_bufcpy:out <- [DW_OP_LLVM_entry_value 1] $rcx
	.loc	0 83 10 is_stmt 1               # liblzma/common/common.c:83:10
	addq	%rbx, %r12
	movq	%r12, (%r15)
	.loc	0 84 11                         # liblzma/common/common.c:84:11
	addq	%rbx, %r13
	movq	%r13, (%r14)
	.loc	0 86 2                          # liblzma/common/common.c:86:2
	movq	%rbx, %rax
	.loc	0 86 2 epilogue_begin is_stmt 0 # liblzma/common/common.c:86:2
	popq	%rbx
.Ltmp25:
	#DEBUG_VALUE: lzma_bufcpy:copy_size <- $rax
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp26:
	#DEBUG_VALUE: lzma_bufcpy:out_pos <- [DW_OP_LLVM_entry_value 1] $r8
	.cfi_def_cfa_offset 16
	popq	%r15
.Ltmp27:
	#DEBUG_VALUE: lzma_bufcpy:in_pos <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 8
	retq
.Ltmp28:
.Lfunc_end4:
	.size	lzma_bufcpy, .Lfunc_end4-lzma_bufcpy
	.cfi_endproc
                                        # -- End function
	.globl	lzma_next_filter_init           # -- Begin function lzma_next_filter_init
	.p2align	4, 0x90
	.type	lzma_next_filter_init,@function
lzma_next_filter_init:                  # @lzma_next_filter_init
.Lfunc_begin5:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_next_filter_init:next <- $rdi
	#DEBUG_VALUE: lzma_next_filter_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_next_filter_init:filters <- $rdx
	.loc	0 94 2 prologue_end is_stmt 1   # liblzma/common/common.c:94:2
	movq	8(%rdx), %rax
	movq	16(%rdi), %rcx
	cmpq	%rax, %rcx
	sete	%r8b
	#DEBUG_VALUE: lzma_next_end:next <- $rdi
	#DEBUG_VALUE: lzma_next_end:allocator <- undef
	testq	%rcx, %rcx
	sete	%cl
.Ltmp29:
	.loc	0 94 2 is_stmt 0                # liblzma/common/common.c:94:2
	orb	%r8b, %cl
	jne	.LBB5_8
.Ltmp30:
# %bb.1:                                # %if.then.i
	#DEBUG_VALUE: lzma_next_filter_init:next <- $rdi
	#DEBUG_VALUE: lzma_next_filter_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_next_filter_init:filters <- $rdx
	#DEBUG_VALUE: lzma_next_end:next <- $rdi
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
	.loc	0 94 2                          # liblzma/common/common.c:94:2
	leaq	16(%rdi), %rbx
.Ltmp31:
	.loc	0 0 0                           # liblzma/common/common.c:0:0
	movq	(%rdi), %rax
	.loc	0 126 13 is_stmt 1              # liblzma/common/common.c:126:13
	movq	32(%rdi), %rcx
	#DEBUG_VALUE: lzma_free:ptr <- $rax
	#DEBUG_VALUE: lzma_free:allocator <- $rsi
	movq	%rdi, %r15
.Ltmp32:
	#DEBUG_VALUE: lzma_next_end:next <- $r15
	#DEBUG_VALUE: lzma_next_filter_init:next <- $r15
	.loc	0 0 13 is_stmt 0                # liblzma/common/common.c:0:13
	movq	%rdx, %r14
.Ltmp33:
	#DEBUG_VALUE: lzma_next_filter_init:filters <- $r14
	.loc	0 126 17                        # liblzma/common/common.c:126:17
	testq	%rcx, %rcx
.Ltmp34:
	.loc	0 126 7                         # liblzma/common/common.c:126:7
	je	.LBB5_3
.Ltmp35:
# %bb.2:                                # %if.then2.i
	#DEBUG_VALUE: lzma_next_filter_init:next <- $r15
	#DEBUG_VALUE: lzma_next_filter_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_next_filter_init:filters <- $r14
	#DEBUG_VALUE: lzma_next_end:next <- $r15
	#DEBUG_VALUE: lzma_free:ptr <- $rax
	#DEBUG_VALUE: lzma_free:allocator <- $rsi
	.loc	0 127 4 is_stmt 1               # liblzma/common/common.c:127:4
	movq	%rax, %rdi
	movq	%rsi, %r12
	callq	*%rcx
.Ltmp36:
	#DEBUG_VALUE: lzma_free:allocator <- $r12
	#DEBUG_VALUE: lzma_next_filter_init:allocator <- $r12
	.loc	0 60 3                          # liblzma/common/common.c:60:3
	jmp	.LBB5_7
.Ltmp37:
.LBB5_3:                                # %if.else.i
	#DEBUG_VALUE: lzma_next_filter_init:next <- $r15
	#DEBUG_VALUE: lzma_next_filter_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_next_filter_init:filters <- $r14
	#DEBUG_VALUE: lzma_next_end:next <- $r15
	#DEBUG_VALUE: lzma_free:ptr <- $rax
	#DEBUG_VALUE: lzma_free:allocator <- $rsi
	.loc	0 59 16                         # liblzma/common/common.c:59:16
	testq	%rsi, %rsi
	.loc	0 59 24 is_stmt 0               # liblzma/common/common.c:59:24
	je	.LBB5_6
.Ltmp38:
# %bb.4:                                # %land.lhs.true.i.i
	#DEBUG_VALUE: lzma_next_filter_init:next <- $r15
	#DEBUG_VALUE: lzma_next_filter_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_next_filter_init:filters <- $r14
	#DEBUG_VALUE: lzma_next_end:next <- $r15
	#DEBUG_VALUE: lzma_free:ptr <- $rax
	#DEBUG_VALUE: lzma_free:allocator <- $rsi
	.loc	0 59 38                         # liblzma/common/common.c:59:38
	movq	8(%rsi), %rcx
	.loc	0 59 43                         # liblzma/common/common.c:59:43
	testq	%rcx, %rcx
.Ltmp39:
	.loc	0 59 6                          # liblzma/common/common.c:59:6
	je	.LBB5_6
.Ltmp40:
# %bb.5:                                # %if.then.i.i
	#DEBUG_VALUE: lzma_next_filter_init:next <- $r15
	#DEBUG_VALUE: lzma_next_filter_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_next_filter_init:filters <- $r14
	#DEBUG_VALUE: lzma_next_end:next <- $r15
	#DEBUG_VALUE: lzma_free:ptr <- $rax
	#DEBUG_VALUE: lzma_free:allocator <- $rsi
	.loc	0 0 6                           # liblzma/common/common.c:0:6
	movq	%rsi, %r12
.Ltmp41:
	.loc	0 60 30 is_stmt 1               # liblzma/common/common.c:60:30
	movq	16(%rsi), %rdi
	.loc	0 60 3 is_stmt 0                # liblzma/common/common.c:60:3
	movq	%rax, %rsi
.Ltmp42:
	#DEBUG_VALUE: lzma_free:allocator <- $r12
	#DEBUG_VALUE: lzma_next_filter_init:allocator <- $r12
	callq	*%rcx
.Ltmp43:
	jmp	.LBB5_7
.Ltmp44:
.LBB5_6:                                # %if.else.i.i
	#DEBUG_VALUE: lzma_next_filter_init:next <- $r15
	#DEBUG_VALUE: lzma_next_filter_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_next_filter_init:filters <- $r14
	#DEBUG_VALUE: lzma_next_end:next <- $r15
	#DEBUG_VALUE: lzma_free:ptr <- $rax
	#DEBUG_VALUE: lzma_free:allocator <- $rsi
	.loc	0 0 3                           # liblzma/common/common.c:0:3
	movq	%rsi, %r12
.Ltmp45:
	#DEBUG_VALUE: lzma_free:allocator <- $r12
	#DEBUG_VALUE: lzma_next_filter_init:allocator <- $r12
	.loc	0 62 3 is_stmt 1                # liblzma/common/common.c:62:3
	movq	%rax, %rdi
	callq	free@PLT
.Ltmp46:
.LBB5_7:                                # %if.end.i
	#DEBUG_VALUE: lzma_next_filter_init:next <- $r15
	#DEBUG_VALUE: lzma_next_filter_init:allocator <- $r12
	#DEBUG_VALUE: lzma_next_filter_init:filters <- $r14
	#DEBUG_VALUE: lzma_next_end:next <- $r15
	.loc	0 0 3 is_stmt 0                 # liblzma/common/common.c:0:3
	movq	%r15, %rdi
	.loc	0 133 11 is_stmt 1              # liblzma/common/common.c:133:11
	movq	$0, (%r15)
	movq	$-1, 8(%r15)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 32(%rbx)
	movups	%xmm0, 16(%rbx)
	movups	%xmm0, (%rbx)
	movq	%r14, %rdx
.Ltmp47:
	.loc	0 94 2                          # liblzma/common/common.c:94:2
	movq	8(%r14), %rax
	movq	%r12, %rsi
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
.Ltmp48:
	#DEBUG_VALUE: lzma_next_filter_init:allocator <- $rsi
	.cfi_def_cfa_offset 24
	.loc	0 0 2 is_stmt 0                 # liblzma/common/common.c:0:2
	popq	%r14
.Ltmp49:
	#DEBUG_VALUE: lzma_next_filter_init:filters <- $rdx
	.cfi_def_cfa_offset 16
	popq	%r15
.Ltmp50:
	#DEBUG_VALUE: lzma_next_end:next <- $rdi
	#DEBUG_VALUE: lzma_next_filter_init:next <- $rdi
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r14
	.cfi_restore %r15
.LBB5_8:                                # %if.end
	#DEBUG_VALUE: lzma_next_filter_init:next <- $rdi
	#DEBUG_VALUE: lzma_next_filter_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_next_filter_init:filters <- $rdx
	.loc	0 94 2                          # liblzma/common/common.c:94:2
	movq	%rax, 16(%rdi)
.Ltmp51:
	.loc	0 95 24 is_stmt 1               # liblzma/common/common.c:95:24
	movq	(%rdx), %rax
	.loc	0 95 11 is_stmt 0               # liblzma/common/common.c:95:11
	movq	%rax, 8(%rdi)
	.loc	0 96 20 is_stmt 1               # liblzma/common/common.c:96:20
	movq	8(%rdx), %rax
	.loc	0 96 25 is_stmt 0               # liblzma/common/common.c:96:25
	testq	%rax, %rax
	.loc	0 96 9                          # liblzma/common/common.c:96:9
	je	.LBB5_9
.Ltmp52:
# %bb.10:                               # %cond.false
	#DEBUG_VALUE: lzma_next_filter_init:next <- $rdi
	#DEBUG_VALUE: lzma_next_filter_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_next_filter_init:filters <- $rdx
	.loc	0 97 16 is_stmt 1               # liblzma/common/common.c:97:16
	jmpq	*%rax                           # TAILCALL
.Ltmp53:
.LBB5_9:                                # %cond.end
	#DEBUG_VALUE: lzma_next_filter_init:next <- $rdi
	#DEBUG_VALUE: lzma_next_filter_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_next_filter_init:filters <- $rdx
	.loc	0 96 2                          # liblzma/common/common.c:96:2
	xorl	%eax, %eax
	retq
.Ltmp54:
.Lfunc_end5:
	.size	lzma_next_filter_init, .Lfunc_end5-lzma_next_filter_init
	.cfi_endproc
                                        # -- End function
	.globl	lzma_next_end                   # -- Begin function lzma_next_end
	.p2align	4, 0x90
	.type	lzma_next_end,@function
lzma_next_end:                          # @lzma_next_end
.Lfunc_begin6:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_next_end:next <- $rdi
	#DEBUG_VALUE: lzma_next_end:allocator <- $rsi
	.loc	0 122 17 prologue_end           # liblzma/common/common.c:122:17
	cmpq	$0, 16(%rdi)
.Ltmp55:
	.loc	0 122 6 is_stmt 0               # liblzma/common/common.c:122:6
	je	.LBB6_8
.Ltmp56:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: lzma_next_end:next <- $rdi
	#DEBUG_VALUE: lzma_next_end:allocator <- $rsi
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
.Ltmp57:
	.loc	0 0 0                           # liblzma/common/common.c:0:0
	leaq	16(%rdi), %r14
.Ltmp58:
	movq	(%rdi), %rdi
.Ltmp59:
	#DEBUG_VALUE: lzma_next_end:next <- $rbx
	.loc	0 126 13 is_stmt 1              # liblzma/common/common.c:126:13
	movq	32(%rbx), %rax
	.loc	0 126 17 is_stmt 0              # liblzma/common/common.c:126:17
	testq	%rax, %rax
.Ltmp60:
	.loc	0 126 7                         # liblzma/common/common.c:126:7
	je	.LBB6_3
.Ltmp61:
# %bb.2:                                # %if.then2
	#DEBUG_VALUE: lzma_next_end:next <- $rbx
	#DEBUG_VALUE: lzma_next_end:allocator <- $rsi
	.loc	0 127 4 is_stmt 1               # liblzma/common/common.c:127:4
	callq	*%rax
.Ltmp62:
	#DEBUG_VALUE: lzma_next_end:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	jmp	.LBB6_7
.Ltmp63:
.LBB6_3:                                # %if.else
	#DEBUG_VALUE: lzma_next_end:next <- $rbx
	#DEBUG_VALUE: lzma_next_end:allocator <- $rsi
	#DEBUG_VALUE: lzma_free:ptr <- $rdi
	#DEBUG_VALUE: lzma_free:allocator <- $rsi
	.loc	0 59 16                         # liblzma/common/common.c:59:16
	testq	%rsi, %rsi
	.loc	0 59 24 is_stmt 0               # liblzma/common/common.c:59:24
	je	.LBB6_6
.Ltmp64:
# %bb.4:                                # %land.lhs.true.i
	#DEBUG_VALUE: lzma_next_end:next <- $rbx
	#DEBUG_VALUE: lzma_next_end:allocator <- $rsi
	#DEBUG_VALUE: lzma_free:ptr <- $rdi
	#DEBUG_VALUE: lzma_free:allocator <- $rsi
	.loc	0 59 38                         # liblzma/common/common.c:59:38
	movq	8(%rsi), %rcx
	.loc	0 59 43                         # liblzma/common/common.c:59:43
	testq	%rcx, %rcx
.Ltmp65:
	.loc	0 59 6                          # liblzma/common/common.c:59:6
	je	.LBB6_6
.Ltmp66:
# %bb.5:                                # %if.then.i
	#DEBUG_VALUE: lzma_next_end:next <- $rbx
	#DEBUG_VALUE: lzma_next_end:allocator <- $rsi
	#DEBUG_VALUE: lzma_free:ptr <- $rdi
	#DEBUG_VALUE: lzma_free:allocator <- $rsi
	.loc	0 60 30 is_stmt 1               # liblzma/common/common.c:60:30
	movq	16(%rsi), %rax
	movq	%rdi, %rsi
.Ltmp67:
	#DEBUG_VALUE: lzma_next_end:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	.loc	0 60 3 is_stmt 0                # liblzma/common/common.c:60:3
	movq	%rax, %rdi
.Ltmp68:
	#DEBUG_VALUE: lzma_free:ptr <- $rsi
	callq	*%rcx
.Ltmp69:
	jmp	.LBB6_7
.Ltmp70:
.LBB6_6:                                # %if.else.i
	#DEBUG_VALUE: lzma_next_end:next <- $rbx
	#DEBUG_VALUE: lzma_next_end:allocator <- $rsi
	#DEBUG_VALUE: lzma_free:ptr <- $rdi
	#DEBUG_VALUE: lzma_free:allocator <- $rsi
	.loc	0 62 3 is_stmt 1                # liblzma/common/common.c:62:3
	callq	free@PLT
.Ltmp71:
	#DEBUG_VALUE: lzma_next_end:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
.LBB6_7:                                # %if.end
	#DEBUG_VALUE: lzma_next_end:next <- $rbx
	#DEBUG_VALUE: lzma_next_end:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	.loc	0 133 11                        # liblzma/common/common.c:133:11
	movq	$0, (%rbx)
	movq	$-1, 8(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 32(%r14)
	movups	%xmm0, 16(%r14)
	movups	%xmm0, (%r14)
.Ltmp72:
	.loc	0 136 2 epilogue_begin          # liblzma/common/common.c:136:2
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp73:
	#DEBUG_VALUE: lzma_next_end:next <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
.Ltmp74:
.LBB6_8:                                # %if.end8
	#DEBUG_VALUE: lzma_next_end:next <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_next_end:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	retq
.Ltmp75:
.Lfunc_end6:
	.size	lzma_next_end, .Lfunc_end6-lzma_next_end
	.cfi_endproc
                                        # -- End function
	.globl	lzma_next_filter_update         # -- Begin function lzma_next_filter_update
	.p2align	4, 0x90
	.type	lzma_next_filter_update,@function
lzma_next_filter_update:                # @lzma_next_filter_update
.Lfunc_begin7:
	.loc	0 104 0                         # liblzma/common/common.c:104:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_next_filter_update:next <- $rdi
	#DEBUG_VALUE: lzma_next_filter_update:allocator <- $rsi
	#DEBUG_VALUE: lzma_next_filter_update:reversed_filters <- $rdx
	movq	%rdx, %rcx
.Ltmp76:
	.loc	0 108 26 prologue_end           # liblzma/common/common.c:108:26
	movq	(%rdx), %rdx
.Ltmp77:
	#DEBUG_VALUE: lzma_next_filter_update:reversed_filters <- $rcx
	.loc	0 0 26 is_stmt 0                # liblzma/common/common.c:0:26
	movl	$11, %eax
	.loc	0 108 29                        # liblzma/common/common.c:108:29
	cmpq	8(%rdi), %rdx
.Ltmp78:
	.loc	0 108 6                         # liblzma/common/common.c:108:6
	jne	.LBB7_3
.Ltmp79:
# %bb.1:                                # %if.end
	#DEBUG_VALUE: lzma_next_filter_update:next <- $rdi
	#DEBUG_VALUE: lzma_next_filter_update:allocator <- $rsi
	#DEBUG_VALUE: lzma_next_filter_update:reversed_filters <- $rcx
	.loc	0 111 29 is_stmt 1              # liblzma/common/common.c:111:29
	cmpq	$-1, %rdx
.Ltmp80:
	.loc	0 111 6 is_stmt 0               # liblzma/common/common.c:111:6
	je	.LBB7_2
.Ltmp81:
# %bb.4:                                # %if.end6
	#DEBUG_VALUE: lzma_next_filter_update:next <- $rdi
	#DEBUG_VALUE: lzma_next_filter_update:allocator <- $rsi
	#DEBUG_VALUE: lzma_next_filter_update:reversed_filters <- $rcx
	.loc	0 115 28 is_stmt 1              # liblzma/common/common.c:115:28
	movq	(%rdi), %rax
	.loc	0 115 15 is_stmt 0              # liblzma/common/common.c:115:15
	movq	56(%rdi), %r8
	.loc	0 115 9                         # liblzma/common/common.c:115:9
	movq	%rax, %rdi
.Ltmp82:
	#DEBUG_VALUE: lzma_next_filter_update:next <- [DW_OP_LLVM_entry_value 1] $rdi
	xorl	%edx, %edx
.Ltmp83:
	jmpq	*%r8                            # TAILCALL
.Ltmp84:
.LBB7_2:
	#DEBUG_VALUE: lzma_next_filter_update:next <- $rdi
	#DEBUG_VALUE: lzma_next_filter_update:allocator <- $rsi
	#DEBUG_VALUE: lzma_next_filter_update:reversed_filters <- $rcx
	.loc	0 0 9                           # liblzma/common/common.c:0:9
	xorl	%eax, %eax
.Ltmp85:
.LBB7_3:                                # %return
	#DEBUG_VALUE: lzma_next_filter_update:next <- $rdi
	#DEBUG_VALUE: lzma_next_filter_update:allocator <- $rsi
	#DEBUG_VALUE: lzma_next_filter_update:reversed_filters <- $rcx
	.loc	0 116 1 is_stmt 1               # liblzma/common/common.c:116:1
	retq
.Ltmp86:
.Lfunc_end7:
	.size	lzma_next_filter_update, .Lfunc_end7-lzma_next_filter_update
	.cfi_endproc
                                        # -- End function
	.globl	lzma_strm_init                  # -- Begin function lzma_strm_init
	.p2align	4, 0x90
	.type	lzma_strm_init,@function
lzma_strm_init:                         # @lzma_strm_init
.Lfunc_begin8:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_strm_init:strm <- $rdi
	.loc	0 147 11 prologue_end           # liblzma/common/common.c:147:11
	testq	%rdi, %rdi
.Ltmp87:
	.loc	0 147 6 is_stmt 0               # liblzma/common/common.c:147:6
	je	.LBB8_1
.Ltmp88:
# %bb.3:                                # %if.end
	#DEBUG_VALUE: lzma_strm_init:strm <- $rdi
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	.loc	0 150 12 is_stmt 1              # liblzma/common/common.c:150:12
	movq	56(%rdi), %rax
	.loc	0 150 21 is_stmt 0              # liblzma/common/common.c:150:21
	testq	%rax, %rax
.Ltmp89:
	.loc	0 150 6                         # liblzma/common/common.c:150:6
	jne	.LBB8_11
.Ltmp90:
# %bb.4:                                # %if.then2
	#DEBUG_VALUE: lzma_strm_init:strm <- $rdi
	.loc	0 0 6                           # liblzma/common/common.c:0:6
	movq	%rdi, %rbx
.Ltmp91:
	.loc	0 152 11 is_stmt 1              # liblzma/common/common.c:152:11
	movq	48(%rdi), %rcx
.Ltmp92:
	#DEBUG_VALUE: lzma_alloc:allocator <- $rcx
	#DEBUG_VALUE: lzma_alloc:size <- 88
	.loc	0 47 16                         # liblzma/common/common.c:47:16
	testq	%rcx, %rcx
	.loc	0 47 24 is_stmt 0               # liblzma/common/common.c:47:24
	je	.LBB8_7
.Ltmp93:
# %bb.5:                                # %land.lhs.true.i
	#DEBUG_VALUE: lzma_strm_init:strm <- $rbx
	#DEBUG_VALUE: lzma_alloc:allocator <- $rcx
	#DEBUG_VALUE: lzma_alloc:size <- 88
	.loc	0 47 38                         # liblzma/common/common.c:47:38
	movq	(%rcx), %rax
	.loc	0 47 44                         # liblzma/common/common.c:47:44
	testq	%rax, %rax
.Ltmp94:
	.loc	0 47 6                          # liblzma/common/common.c:47:6
	je	.LBB8_7
.Ltmp95:
# %bb.6:                                # %if.then3.i
	#DEBUG_VALUE: lzma_strm_init:strm <- $rbx
	#DEBUG_VALUE: lzma_alloc:allocator <- $rcx
	#DEBUG_VALUE: lzma_alloc:size <- 88
	.loc	0 48 37 is_stmt 1               # liblzma/common/common.c:48:37
	movq	16(%rcx), %rdi
	.loc	0 48 9 is_stmt 0                # liblzma/common/common.c:48:9
	movl	$1, %esi
	movl	$88, %edx
	callq	*%rax
.Ltmp96:
	#DEBUG_VALUE: lzma_alloc:ptr <- $rax
	#DEBUG_VALUE: lzma_alloc:ptr <- $rax
	.loc	0 151 18 is_stmt 1              # liblzma/common/common.c:151:18
	movq	%rax, 56(%rbx)
.Ltmp97:
	.loc	0 153 22                        # liblzma/common/common.c:153:22
	testq	%rax, %rax
.Ltmp98:
	.loc	0 153 7 is_stmt 0               # liblzma/common/common.c:153:7
	jne	.LBB8_10
.Ltmp99:
.LBB8_9:
	#DEBUG_VALUE: lzma_strm_init:strm <- $rbx
	.loc	0 0 7                           # liblzma/common/common.c:0:7
	movl	$5, %eax
	popq	%rbx
.Ltmp100:
	#DEBUG_VALUE: lzma_strm_init:strm <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.loc	0 170 1 is_stmt 1               # liblzma/common/common.c:170:1
	retq
.Ltmp101:
.LBB8_1:
	#DEBUG_VALUE: lzma_strm_init:strm <- $rdi
	.loc	0 0 1 is_stmt 0                 # liblzma/common/common.c:0:1
	movl	$11, %eax
	.loc	0 170 1                         # liblzma/common/common.c:170:1
	retq
.Ltmp102:
.LBB8_7:                                # %if.else.i
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	#DEBUG_VALUE: lzma_strm_init:strm <- $rbx
	#DEBUG_VALUE: lzma_alloc:allocator <- $rcx
	#DEBUG_VALUE: lzma_alloc:size <- 88
	.loc	0 50 9 is_stmt 1                # liblzma/common/common.c:50:9
	movl	$88, %edi
	callq	malloc@PLT
.Ltmp103:
	#DEBUG_VALUE: lzma_alloc:ptr <- $rax
	#DEBUG_VALUE: lzma_alloc:ptr <- $rax
	.loc	0 151 18                        # liblzma/common/common.c:151:18
	movq	%rax, 56(%rbx)
.Ltmp104:
	.loc	0 153 22                        # liblzma/common/common.c:153:22
	testq	%rax, %rax
.Ltmp105:
	.loc	0 153 7 is_stmt 0               # liblzma/common/common.c:153:7
	je	.LBB8_9
.Ltmp106:
.LBB8_10:                               # %if.end7
	#DEBUG_VALUE: lzma_strm_init:strm <- $rbx
	.loc	0 0 7                           # liblzma/common/common.c:0:7
	movq	%rbx, %rdi
	.loc	0 156 26 is_stmt 1              # liblzma/common/common.c:156:26
	movq	$0, (%rax)
	movq	$-1, 8(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rax)
	movups	%xmm0, 32(%rax)
	movups	%xmm0, 48(%rax)
.Ltmp107:
	.loc	0 159 8                         # liblzma/common/common.c:159:8
	movq	56(%rbx), %rax
.Ltmp108:
.LBB8_11:                               # %if.end9
	#DEBUG_VALUE: lzma_strm_init:strm <- $rdi
	.loc	0 159 46 is_stmt 0              # liblzma/common/common.c:159:46
	movb	$0, 80(%rax)
	.loc	0 160 8 is_stmt 1               # liblzma/common/common.c:160:8
	movq	56(%rdi), %rax
	.loc	0 160 53 is_stmt 0              # liblzma/common/common.c:160:53
	movb	$0, 81(%rax)
	.loc	0 161 8 is_stmt 1               # liblzma/common/common.c:161:8
	movq	56(%rdi), %rax
	.loc	0 161 53 is_stmt 0              # liblzma/common/common.c:161:53
	movb	$0, 82(%rax)
	.loc	0 162 8 is_stmt 1               # liblzma/common/common.c:162:8
	movq	56(%rdi), %rax
	.loc	0 162 49 is_stmt 0              # liblzma/common/common.c:162:49
	movb	$0, 83(%rax)
	.loc	0 163 8 is_stmt 1               # liblzma/common/common.c:163:8
	movq	56(%rdi), %rax
	.loc	0 163 27 is_stmt 0              # liblzma/common/common.c:163:27
	movl	$0, 64(%rax)
	.loc	0 164 8 is_stmt 1               # liblzma/common/common.c:164:8
	movq	56(%rdi), %rax
	.loc	0 164 34 is_stmt 0              # liblzma/common/common.c:164:34
	movb	$0, 84(%rax)
	.loc	0 166 17 is_stmt 1              # liblzma/common/common.c:166:17
	movq	$0, 16(%rdi)
	.loc	0 167 18                        # liblzma/common/common.c:167:18
	movq	$0, 40(%rdi)
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.loc	0 170 1                         # liblzma/common/common.c:170:1
	retq
.Ltmp109:
.Lfunc_end8:
	.size	lzma_strm_init, .Lfunc_end8-lzma_strm_init
	.cfi_endproc
                                        # -- End function
	.globl	lzma_code                       # -- Begin function lzma_code
	.p2align	4, 0x90
	.type	lzma_code,@function
lzma_code:                              # @lzma_code
.Lfunc_begin9:
	.loc	0 175 0                         # liblzma/common/common.c:175:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_code:strm <- $rdi
	#DEBUG_VALUE: lzma_code:action <- $esi
	movl	%esi, %r10d
.Ltmp110:
	.loc	0 177 21 prologue_end           # liblzma/common/common.c:177:21
	cmpq	$0, (%rdi)
	.loc	0 177 29 is_stmt 0              # liblzma/common/common.c:177:29
	je	.LBB9_20
.Ltmp111:
.LBB9_1:                                # %lor.lhs.false
	#DEBUG_VALUE: lzma_code:strm <- $rdi
	#DEBUG_VALUE: lzma_code:action <- $esi
	.loc	0 178 23 is_stmt 1              # liblzma/common/common.c:178:23
	cmpq	$0, 24(%rdi)
	.loc	0 178 31 is_stmt 0              # liblzma/common/common.c:178:31
	je	.LBB9_23
.Ltmp112:
.LBB9_2:                                # %lor.lhs.false5
	#DEBUG_VALUE: lzma_code:strm <- $rdi
	#DEBUG_VALUE: lzma_code:action <- $esi
	.loc	0 179 13 is_stmt 1              # liblzma/common/common.c:179:13
	movq	56(%rdi), %rcx
	.loc	0 179 22 is_stmt 0              # liblzma/common/common.c:179:22
	testq	%rcx, %rcx
	.loc	0 180 4 is_stmt 1               # liblzma/common/common.c:180:4
	je	.LBB9_22
.Ltmp113:
# %bb.3:                                # %lor.lhs.false7
	#DEBUG_VALUE: lzma_code:strm <- $rdi
	#DEBUG_VALUE: lzma_code:action <- $esi
	.loc	0 0 4 is_stmt 0                 # liblzma/common/common.c:0:4
	cmpl	$3, %r10d
	.loc	0 181 4 is_stmt 1               # liblzma/common/common.c:181:4
	ja	.LBB9_22
.Ltmp114:
# %bb.4:                                # %lor.lhs.false7
	#DEBUG_VALUE: lzma_code:strm <- $rdi
	#DEBUG_VALUE: lzma_code:action <- $esi
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	cmpq	$0, 24(%rcx)
	je	.LBB9_25
.Ltmp115:
# %bb.5:                                # %lor.lhs.false12
	#DEBUG_VALUE: lzma_code:strm <- $rdi
	#DEBUG_VALUE: lzma_code:action <- $esi
	.loc	0 182 8                         # liblzma/common/common.c:182:8
	movl	%r10d, %eax
.Ltmp116:
	.loc	0 177 6                         # liblzma/common/common.c:177:6
	cmpb	$1, 80(%rcx,%rax)
	jne	.LBB9_25
.Ltmp117:
# %bb.6:                                # %if.end
	#DEBUG_VALUE: lzma_code:strm <- $rdi
	#DEBUG_VALUE: lzma_code:action <- $esi
	.loc	0 0 6 is_stmt 0                 # liblzma/common/common.c:0:6
	movl	$8, %eax
.Ltmp118:
	.loc	0 187 26 is_stmt 1              # liblzma/common/common.c:187:26
	cmpq	$0, 64(%rdi)
	.loc	0 188 4                         # liblzma/common/common.c:188:4
	jne	.LBB9_26
.Ltmp119:
# %bb.7:                                # %lor.lhs.false15
	#DEBUG_VALUE: lzma_code:strm <- $rdi
	#DEBUG_VALUE: lzma_code:action <- $esi
	.loc	0 188 27 is_stmt 0              # liblzma/common/common.c:188:27
	cmpq	$0, 72(%rdi)
	.loc	0 189 4 is_stmt 1               # liblzma/common/common.c:189:4
	jne	.LBB9_26
.Ltmp120:
# %bb.8:                                # %lor.lhs.false17
	#DEBUG_VALUE: lzma_code:strm <- $rdi
	#DEBUG_VALUE: lzma_code:action <- $esi
	.loc	0 189 27 is_stmt 0              # liblzma/common/common.c:189:27
	cmpq	$0, 80(%rdi)
	.loc	0 190 4 is_stmt 1               # liblzma/common/common.c:190:4
	jne	.LBB9_26
.Ltmp121:
# %bb.9:                                # %lor.lhs.false19
	#DEBUG_VALUE: lzma_code:strm <- $rdi
	#DEBUG_VALUE: lzma_code:action <- $esi
	.loc	0 190 27 is_stmt 0              # liblzma/common/common.c:190:27
	cmpq	$0, 88(%rdi)
	.loc	0 191 4 is_stmt 1               # liblzma/common/common.c:191:4
	jne	.LBB9_26
.Ltmp122:
# %bb.10:                               # %lor.lhs.false21
	#DEBUG_VALUE: lzma_code:strm <- $rdi
	#DEBUG_VALUE: lzma_code:action <- $esi
	.loc	0 191 27 is_stmt 0              # liblzma/common/common.c:191:27
	cmpq	$0, 96(%rdi)
	.loc	0 192 4 is_stmt 1               # liblzma/common/common.c:192:4
	jne	.LBB9_26
.Ltmp123:
# %bb.11:                               # %lor.lhs.false23
	#DEBUG_VALUE: lzma_code:strm <- $rdi
	#DEBUG_VALUE: lzma_code:action <- $esi
	.loc	0 192 27 is_stmt 0              # liblzma/common/common.c:192:27
	cmpq	$0, 104(%rdi)
	.loc	0 193 4 is_stmt 1               # liblzma/common/common.c:193:4
	jne	.LBB9_26
.Ltmp124:
# %bb.12:                               # %lor.lhs.false25
	#DEBUG_VALUE: lzma_code:strm <- $rdi
	#DEBUG_VALUE: lzma_code:action <- $esi
	.loc	0 193 27 is_stmt 0              # liblzma/common/common.c:193:27
	cmpq	$0, 112(%rdi)
	.loc	0 194 4 is_stmt 1               # liblzma/common/common.c:194:4
	jne	.LBB9_26
.Ltmp125:
# %bb.13:                               # %lor.lhs.false27
	#DEBUG_VALUE: lzma_code:strm <- $rdi
	#DEBUG_VALUE: lzma_code:action <- $esi
	.loc	0 194 27 is_stmt 0              # liblzma/common/common.c:194:27
	cmpq	$0, 120(%rdi)
	.loc	0 195 4 is_stmt 1               # liblzma/common/common.c:195:4
	jne	.LBB9_26
.Ltmp126:
# %bb.14:                               # %lor.lhs.false29
	#DEBUG_VALUE: lzma_code:strm <- $rdi
	#DEBUG_VALUE: lzma_code:action <- $esi
	.loc	0 195 28 is_stmt 0              # liblzma/common/common.c:195:28
	cmpl	$0, 128(%rdi)
	.loc	0 196 4 is_stmt 1               # liblzma/common/common.c:196:4
	jne	.LBB9_26
.Ltmp127:
# %bb.15:                               # %lor.lhs.false31
	#DEBUG_VALUE: lzma_code:strm <- $rdi
	#DEBUG_VALUE: lzma_code:action <- $esi
	.loc	0 0 4 is_stmt 0                 # liblzma/common/common.c:0:4
	movq	%rdi, %rbx
.Ltmp128:
	#DEBUG_VALUE: lzma_code:strm <- $rbx
	.loc	0 196 28                        # liblzma/common/common.c:196:28
	cmpl	$0, 132(%rbx)
.Ltmp129:
	.loc	0 187 6 is_stmt 1               # liblzma/common/common.c:187:6
	jne	.LBB9_26
.Ltmp130:
# %bb.16:                               # %if.end34
	#DEBUG_VALUE: lzma_code:strm <- $rbx
	#DEBUG_VALUE: lzma_code:action <- $esi
	.loc	0 199 26                        # liblzma/common/common.c:199:26
	movl	64(%rcx), %eax
	cmpq	$4, %rax
	.loc	0 199 2 is_stmt 0               # liblzma/common/common.c:199:2
	ja	.LBB9_25
.Ltmp131:
# %bb.17:                               # %if.end34
	#DEBUG_VALUE: lzma_code:strm <- $rbx
	#DEBUG_VALUE: lzma_code:action <- $esi
	jmpq	*.LJTI9_0(,%rax,8)
.Ltmp132:
.LBB9_18:                               # %sw.bb
	#DEBUG_VALUE: lzma_code:strm <- $rbx
	#DEBUG_VALUE: lzma_code:action <- $esi
	.loc	0 201 3 is_stmt 1               # liblzma/common/common.c:201:3
	leal	-1(%r10), %eax
	cmpl	$3, %eax
	movq	%rbx, %r11
	jae	.LBB9_34
.Ltmp133:
# %bb.19:                               # %sw.epilog74.sink.split
	#DEBUG_VALUE: lzma_code:strm <- $rbx
	#DEBUG_VALUE: lzma_code:action <- $esi
	.loc	0 0 0 is_stmt 0                 # liblzma/common/common.c:0:0
	movl	%r10d, 64(%rcx)
	jmp	.LBB9_34
.Ltmp134:
.LBB9_20:                               # %land.lhs.true
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
	#DEBUG_VALUE: lzma_code:strm <- $rdi
	#DEBUG_VALUE: lzma_code:action <- $esi
	movl	$11, %eax
.Ltmp135:
	.loc	0 177 47 is_stmt 1              # liblzma/common/common.c:177:47
	cmpq	$0, 8(%rdi)
	jne	.LBB9_21
	jmp	.LBB9_1
.Ltmp136:
.LBB9_22:
	#DEBUG_VALUE: lzma_code:strm <- $rdi
	#DEBUG_VALUE: lzma_code:action <- $esi
	.loc	0 0 47 is_stmt 0                # liblzma/common/common.c:0:47
	movl	$11, %eax
	.loc	0 310 1 is_stmt 1               # liblzma/common/common.c:310:1
	retq
.Ltmp137:
.LBB9_23:                               # %land.lhs.true3
	#DEBUG_VALUE: lzma_code:strm <- $rdi
	#DEBUG_VALUE: lzma_code:action <- $esi
	.loc	0 0 1 is_stmt 0                 # liblzma/common/common.c:0:1
	movl	$11, %eax
.Ltmp138:
	.loc	0 178 50 is_stmt 1              # liblzma/common/common.c:178:50
	cmpq	$0, 32(%rdi)
	.loc	0 179 4                         # liblzma/common/common.c:179:4
	je	.LBB9_2
.Ltmp139:
.LBB9_21:                               # %return
	#DEBUG_VALUE: lzma_code:strm <- $rdi
	#DEBUG_VALUE: lzma_code:action <- $esi
	.loc	0 310 1                         # liblzma/common/common.c:310:1
	retq
.Ltmp140:
.LBB9_27:
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	#DEBUG_VALUE: lzma_code:strm <- $rbx
	#DEBUG_VALUE: lzma_code:action <- $esi
	.loc	0 0 1 is_stmt 0                 # liblzma/common/common.c:0:1
	movl	$1, %eax
	jmp	.LBB9_26
.Ltmp141:
.LBB9_28:                               # %sw.bb54
	#DEBUG_VALUE: lzma_code:strm <- $rbx
	#DEBUG_VALUE: lzma_code:action <- $esi
	.loc	0 230 14 is_stmt 1              # liblzma/common/common.c:230:14
	cmpl	$2, %r10d
	.loc	0 231 5                         # liblzma/common/common.c:231:5
	jne	.LBB9_25
.Ltmp142:
.LBB9_33:                               # %lor.lhs.false47
	#DEBUG_VALUE: lzma_code:strm <- $rbx
	#DEBUG_VALUE: lzma_code:action <- $esi
	.loc	0 0 0 is_stmt 0                 # liblzma/common/common.c:0:0
	movq	72(%rcx), %rcx
	movl	$11, %eax
	movq	%rbx, %r11
	cmpq	8(%rbx), %rcx
	jne	.LBB9_26
.Ltmp143:
.LBB9_34:                               # %sw.epilog74
	#DEBUG_VALUE: lzma_code:strm <- $rbx
	#DEBUG_VALUE: lzma_code:action <- $esi
	.loc	0 251 9 is_stmt 1               # liblzma/common/common.c:251:9
	movq	$0, 8(%rsp)
	.loc	0 252 9                         # liblzma/common/common.c:252:9
	movq	$0, (%rsp)
	.loc	0 253 23                        # liblzma/common/common.c:253:23
	movq	56(%r11), %rax
	.loc	0 254 25                        # liblzma/common/common.c:254:25
	movq	(%rax), %rdi
	.loc	0 254 38 is_stmt 0              # liblzma/common/common.c:254:38
	movq	48(%r11), %rsi
.Ltmp144:
	#DEBUG_VALUE: lzma_code:action <- $r10d
	.loc	0 255 10 is_stmt 1              # liblzma/common/common.c:255:10
	movq	(%r11), %rdx
	.loc	0 255 34 is_stmt 0              # liblzma/common/common.c:255:34
	movq	8(%r11), %r8
	.loc	0 256 10 is_stmt 1              # liblzma/common/common.c:256:10
	movq	24(%r11), %r9
	.loc	0 253 17                        # liblzma/common/common.c:253:17
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	8(%rsp), %r14
	leaq	16(%rsp), %rcx
	movq	%r11, %r15
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	32(%r11)
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	callq	*24(%rax)
.Ltmp145:
	#DEBUG_VALUE: lzma_code:action <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: lzma_code:ret <- $eax
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	.loc	0 258 19                        # liblzma/common/common.c:258:19
	movq	8(%rsp), %rcx
	.loc	0 258 16 is_stmt 0              # liblzma/common/common.c:258:16
	addq	%rcx, (%r15)
	.loc	0 259 17 is_stmt 1              # liblzma/common/common.c:259:17
	movq	8(%r15), %rsi
	.loc	0 266 8                         # liblzma/common/common.c:266:8
	movq	56(%r15), %rdi
	.loc	0 259 17                        # liblzma/common/common.c:259:17
	subq	%rcx, %rsi
	movq	%rsi, 8(%r15)
	.loc	0 260 17                        # liblzma/common/common.c:260:17
	addq	%rcx, 16(%r15)
	.loc	0 262 20                        # liblzma/common/common.c:262:20
	movq	(%rsp), %rdx
	.loc	0 262 17 is_stmt 0              # liblzma/common/common.c:262:17
	addq	%rdx, 24(%r15)
	.loc	0 263 18 is_stmt 1              # liblzma/common/common.c:263:18
	subq	%rdx, 32(%r15)
	.loc	0 264 18                        # liblzma/common/common.c:264:18
	addq	%rdx, 40(%r15)
	.loc	0 266 27                        # liblzma/common/common.c:266:27
	movq	%rsi, 72(%rdi)
	.loc	0 268 2                         # liblzma/common/common.c:268:2
	cmpl	$6, %eax
	ja	.LBB9_43
.Ltmp146:
# %bb.35:                               # %sw.epilog74
	#DEBUG_VALUE: lzma_code:strm <- $rbx
	#DEBUG_VALUE: lzma_code:action <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: lzma_code:ret <- $eax
	movl	%eax, %esi
	jmpq	*.LJTI9_1(,%rsi,8)
.Ltmp147:
.LBB9_36:                               # %sw.bb124
	#DEBUG_VALUE: lzma_code:strm <- $rbx
	#DEBUG_VALUE: lzma_code:action <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: lzma_code:ret <- $eax
	.loc	0 299 9                         # liblzma/common/common.c:299:9
	movq	56(%rbx), %rcx
	.loc	0 299 35 is_stmt 0              # liblzma/common/common.c:299:35
	movb	$0, 84(%rcx)
	.loc	0 300 3 is_stmt 1               # liblzma/common/common.c:300:3
	jmp	.LBB9_26
.Ltmp148:
.LBB9_30:                               # %sw.bb63
	#DEBUG_VALUE: lzma_code:strm <- $rbx
	#DEBUG_VALUE: lzma_code:action <- $esi
	.loc	0 237 14                        # liblzma/common/common.c:237:14
	cmpl	$3, %r10d
	.loc	0 238 5                         # liblzma/common/common.c:238:5
	je	.LBB9_33
.Ltmp149:
.LBB9_25:
	#DEBUG_VALUE: lzma_code:strm <- $rdi
	#DEBUG_VALUE: lzma_code:action <- $esi
	.loc	0 0 5 is_stmt 0                 # liblzma/common/common.c:0:5
	movl	$11, %eax
.Ltmp150:
.LBB9_26:
	#DEBUG_VALUE: lzma_code:strm <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_code:action <- [DW_OP_LLVM_entry_value 1] $esi
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
	.loc	0 310 1 is_stmt 1               # liblzma/common/common.c:310:1
	retq
.Ltmp151:
.LBB9_32:                               # %sw.bb45
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	#DEBUG_VALUE: lzma_code:strm <- $rbx
	#DEBUG_VALUE: lzma_code:action <- $esi
	.loc	0 223 14                        # liblzma/common/common.c:223:14
	cmpl	$1, %r10d
	.loc	0 224 5                         # liblzma/common/common.c:224:5
	jne	.LBB9_25
	jmp	.LBB9_33
.Ltmp152:
.LBB9_39:                               # %sw.bb109
	#DEBUG_VALUE: lzma_code:strm <- $rbx
	#DEBUG_VALUE: lzma_code:action <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: lzma_code:ret <- $esi
	.loc	0 285 13                        # liblzma/common/common.c:285:13
	movq	56(%rbx), %rcx
	.loc	0 285 23 is_stmt 0              # liblzma/common/common.c:285:23
	movl	64(%rcx), %edx
	.loc	0 286 5 is_stmt 1               # liblzma/common/common.c:286:5
	decl	%edx
	xorl	%esi, %esi
.Ltmp153:
	#DEBUG_VALUE: lzma_code:ret <- $eax
	cmpl	$2, %edx
	setae	%sil
	shll	$2, %esi
	.loc	0 0 0 is_stmt 0                 # liblzma/common/common.c:0:0
	movl	%esi, 64(%rcx)
	jmp	.LBB9_36
.Ltmp154:
.LBB9_40:                               # %sw.bb94
	#DEBUG_VALUE: lzma_code:strm <- $rbx
	#DEBUG_VALUE: lzma_code:action <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: lzma_code:ret <- $esi
	movq	56(%rbx), %rsi
.Ltmp155:
	#DEBUG_VALUE: lzma_code:ret <- $eax
	.loc	0 274 20 is_stmt 1              # liblzma/common/common.c:274:20
	orq	%rcx, %rdx
	jne	.LBB9_44
.Ltmp156:
# %bb.41:                               # %if.then98
	#DEBUG_VALUE: lzma_code:strm <- $rbx
	#DEBUG_VALUE: lzma_code:action <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: lzma_code:ret <- $eax
	.loc	0 0 20 is_stmt 0                # liblzma/common/common.c:0:20
	movl	$10, %eax
.Ltmp157:
	.loc	0 275 8 is_stmt 1               # liblzma/common/common.c:275:8
	cmpb	$0, 84(%rsi)
	jne	.LBB9_26
.Ltmp158:
# %bb.42:                               # %if.else
	#DEBUG_VALUE: lzma_code:strm <- $rbx
	#DEBUG_VALUE: lzma_code:action <- [DW_OP_LLVM_entry_value 1] $esi
	.loc	0 278 37                        # liblzma/common/common.c:278:37
	movb	$1, 84(%rsi)
	xorl	%eax, %eax
	jmp	.LBB9_26
.Ltmp159:
.LBB9_43:                               # %sw.default127
	#DEBUG_VALUE: lzma_code:strm <- $rbx
	#DEBUG_VALUE: lzma_code:action <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: lzma_code:ret <- $eax
	.loc	0 305 9                         # liblzma/common/common.c:305:9
	movq	56(%rbx), %rcx
	.loc	0 305 28 is_stmt 0              # liblzma/common/common.c:305:28
	movl	$5, 64(%rcx)
	jmp	.LBB9_26
.Ltmp160:
.LBB9_44:                               # %if.else105
	#DEBUG_VALUE: lzma_code:strm <- $rbx
	#DEBUG_VALUE: lzma_code:action <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: lzma_code:ret <- $eax
	.loc	0 280 36 is_stmt 1              # liblzma/common/common.c:280:36
	movb	$0, 84(%rsi)
	xorl	%eax, %eax
.Ltmp161:
	.loc	0 0 36 is_stmt 0                # liblzma/common/common.c:0:36
	jmp	.LBB9_26
.Ltmp162:
.Lfunc_end9:
	.size	lzma_code, .Lfunc_end9-lzma_code
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI9_0:
	.quad	.LBB9_18
	.quad	.LBB9_32
	.quad	.LBB9_28
	.quad	.LBB9_30
	.quad	.LBB9_27
.LJTI9_1:
	.quad	.LBB9_40
	.quad	.LBB9_39
	.quad	.LBB9_36
	.quad	.LBB9_36
	.quad	.LBB9_36
	.quad	.LBB9_43
	.quad	.LBB9_36
                                        # -- End function
	.text
	.globl	lzma_end                        # -- Begin function lzma_end
	.p2align	4, 0x90
	.type	lzma_end,@function
lzma_end:                               # @lzma_end
.Lfunc_begin10:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_end:strm <- $rdi
	.loc	0 316 11 prologue_end is_stmt 1 # liblzma/common/common.c:316:11
	testq	%rdi, %rdi
	.loc	0 316 19 is_stmt 0              # liblzma/common/common.c:316:19
	je	.LBB10_16
.Ltmp163:
# %bb.1:                                # %land.lhs.true
	#DEBUG_VALUE: lzma_end:strm <- $rdi
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
	.loc	0 316 28                        # liblzma/common/common.c:316:28
	movq	56(%rdi), %r14
	.loc	0 316 37                        # liblzma/common/common.c:316:37
	testq	%r14, %r14
.Ltmp164:
	.loc	0 316 6                         # liblzma/common/common.c:316:6
	je	.LBB10_15
.Ltmp165:
# %bb.2:                                # %if.then
	#DEBUG_VALUE: lzma_end:strm <- $rbx
	.loc	0 317 46 is_stmt 1              # liblzma/common/common.c:317:46
	movq	48(%rbx), %rsi
.Ltmp166:
	#DEBUG_VALUE: lzma_next_end:allocator <- $rsi
	#DEBUG_VALUE: lzma_next_end:next <- $r14
	.loc	0 122 17                        # liblzma/common/common.c:122:17
	cmpq	$0, 16(%r14)
.Ltmp167:
	.loc	0 122 6 is_stmt 0               # liblzma/common/common.c:122:6
	je	.LBB10_10
.Ltmp168:
# %bb.3:                                # %if.then.i
	#DEBUG_VALUE: lzma_end:strm <- $rbx
	#DEBUG_VALUE: lzma_next_end:allocator <- $rsi
	#DEBUG_VALUE: lzma_next_end:next <- $r14
	.loc	0 0 0                           # liblzma/common/common.c:0:0
	leaq	16(%r14), %r15
.Ltmp169:
	movq	(%r14), %rdi
	.loc	0 126 13 is_stmt 1              # liblzma/common/common.c:126:13
	movq	32(%r14), %rax
	.loc	0 126 17 is_stmt 0              # liblzma/common/common.c:126:17
	testq	%rax, %rax
.Ltmp170:
	.loc	0 126 7                         # liblzma/common/common.c:126:7
	je	.LBB10_5
.Ltmp171:
# %bb.4:                                # %if.then2.i
	#DEBUG_VALUE: lzma_end:strm <- $rbx
	#DEBUG_VALUE: lzma_next_end:allocator <- $rsi
	#DEBUG_VALUE: lzma_next_end:next <- $r14
	.loc	0 127 4 is_stmt 1               # liblzma/common/common.c:127:4
	callq	*%rax
.Ltmp172:
	jmp	.LBB10_9
.Ltmp173:
.LBB10_5:                               # %if.else.i
	#DEBUG_VALUE: lzma_end:strm <- $rbx
	#DEBUG_VALUE: lzma_next_end:allocator <- $rsi
	#DEBUG_VALUE: lzma_next_end:next <- $r14
	#DEBUG_VALUE: lzma_free:ptr <- $rdi
	#DEBUG_VALUE: lzma_free:allocator <- $rsi
	.loc	0 59 16                         # liblzma/common/common.c:59:16
	testq	%rsi, %rsi
	.loc	0 59 24 is_stmt 0               # liblzma/common/common.c:59:24
	je	.LBB10_8
.Ltmp174:
# %bb.6:                                # %land.lhs.true.i.i
	#DEBUG_VALUE: lzma_end:strm <- $rbx
	#DEBUG_VALUE: lzma_next_end:allocator <- $rsi
	#DEBUG_VALUE: lzma_next_end:next <- $r14
	#DEBUG_VALUE: lzma_free:ptr <- $rdi
	#DEBUG_VALUE: lzma_free:allocator <- $rsi
	.loc	0 59 38                         # liblzma/common/common.c:59:38
	movq	8(%rsi), %rcx
	.loc	0 59 43                         # liblzma/common/common.c:59:43
	testq	%rcx, %rcx
.Ltmp175:
	.loc	0 59 6                          # liblzma/common/common.c:59:6
	je	.LBB10_8
.Ltmp176:
# %bb.7:                                # %if.then.i.i
	#DEBUG_VALUE: lzma_end:strm <- $rbx
	#DEBUG_VALUE: lzma_next_end:allocator <- $rsi
	#DEBUG_VALUE: lzma_next_end:next <- $r14
	#DEBUG_VALUE: lzma_free:ptr <- $rdi
	#DEBUG_VALUE: lzma_free:allocator <- $rsi
	.loc	0 60 30 is_stmt 1               # liblzma/common/common.c:60:30
	movq	16(%rsi), %rax
	movq	%rdi, %rsi
.Ltmp177:
	.loc	0 60 3 is_stmt 0                # liblzma/common/common.c:60:3
	movq	%rax, %rdi
.Ltmp178:
	#DEBUG_VALUE: lzma_free:ptr <- $rsi
	callq	*%rcx
.Ltmp179:
	jmp	.LBB10_9
.Ltmp180:
.LBB10_8:                               # %if.else.i.i
	#DEBUG_VALUE: lzma_end:strm <- $rbx
	#DEBUG_VALUE: lzma_next_end:allocator <- $rsi
	#DEBUG_VALUE: lzma_next_end:next <- $r14
	#DEBUG_VALUE: lzma_free:ptr <- $rdi
	#DEBUG_VALUE: lzma_free:allocator <- $rsi
	.loc	0 62 3 is_stmt 1                # liblzma/common/common.c:62:3
	callq	free@PLT
.Ltmp181:
.LBB10_9:                               # %if.end.i
	#DEBUG_VALUE: lzma_end:strm <- $rbx
	#DEBUG_VALUE: lzma_next_end:next <- $r14
	.loc	0 133 11                        # liblzma/common/common.c:133:11
	movq	$0, (%r14)
	movq	$-1, 8(%r14)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 32(%r15)
	movups	%xmm0, 16(%r15)
	movups	%xmm0, (%r15)
.Ltmp182:
	.loc	0 318 35                        # liblzma/common/common.c:318:35
	movq	48(%rbx), %rsi
	.loc	0 318 19 is_stmt 0              # liblzma/common/common.c:318:19
	movq	56(%rbx), %r14
.Ltmp183:
.LBB10_10:                              # %lzma_next_end.exit
	#DEBUG_VALUE: lzma_end:strm <- $rbx
	#DEBUG_VALUE: lzma_free:ptr <- $r14
	#DEBUG_VALUE: lzma_free:allocator <- $rsi
	.loc	0 59 16 is_stmt 1               # liblzma/common/common.c:59:16
	testq	%rsi, %rsi
	.loc	0 59 24 is_stmt 0               # liblzma/common/common.c:59:24
	je	.LBB10_13
.Ltmp184:
# %bb.11:                               # %land.lhs.true.i
	#DEBUG_VALUE: lzma_end:strm <- $rbx
	#DEBUG_VALUE: lzma_free:ptr <- $r14
	#DEBUG_VALUE: lzma_free:allocator <- $rsi
	.loc	0 59 38                         # liblzma/common/common.c:59:38
	movq	8(%rsi), %rax
	.loc	0 59 43                         # liblzma/common/common.c:59:43
	testq	%rax, %rax
.Ltmp185:
	.loc	0 59 6                          # liblzma/common/common.c:59:6
	je	.LBB10_13
.Ltmp186:
# %bb.12:                               # %if.then.i14
	#DEBUG_VALUE: lzma_end:strm <- $rbx
	#DEBUG_VALUE: lzma_free:ptr <- $r14
	#DEBUG_VALUE: lzma_free:allocator <- $rsi
	.loc	0 60 30 is_stmt 1               # liblzma/common/common.c:60:30
	movq	16(%rsi), %rdi
	.loc	0 60 3 is_stmt 0                # liblzma/common/common.c:60:3
	movq	%r14, %rsi
.Ltmp187:
	callq	*%rax
.Ltmp188:
	jmp	.LBB10_14
.Ltmp189:
.LBB10_13:                              # %if.else.i16
	#DEBUG_VALUE: lzma_end:strm <- $rbx
	#DEBUG_VALUE: lzma_free:ptr <- $r14
	#DEBUG_VALUE: lzma_free:allocator <- $rsi
	.loc	0 62 3 is_stmt 1                # liblzma/common/common.c:62:3
	movq	%r14, %rdi
	callq	free@PLT
.Ltmp190:
.LBB10_14:                              # %lzma_free.exit
	#DEBUG_VALUE: lzma_end:strm <- $rbx
	.loc	0 319 18                        # liblzma/common/common.c:319:18
	movq	$0, 56(%rbx)
.Ltmp191:
.LBB10_15:
	#DEBUG_VALUE: lzma_end:strm <- $rbx
	.loc	0 0 18 is_stmt 0                # liblzma/common/common.c:0:18
	popq	%rbx
.Ltmp192:
	#DEBUG_VALUE: lzma_end:strm <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
.Ltmp193:
.LBB10_16:                              # %if.end
	#DEBUG_VALUE: lzma_end:strm <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 322 2 is_stmt 1               # liblzma/common/common.c:322:2
	retq
.Ltmp194:
.Lfunc_end10:
	.size	lzma_end, .Lfunc_end10-lzma_end
	.cfi_endproc
                                        # -- End function
	.globl	lzma_get_check                  # -- Begin function lzma_get_check
	.p2align	4, 0x90
	.type	lzma_get_check,@function
lzma_get_check:                         # @lzma_get_check
.Lfunc_begin11:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_get_check:strm <- $rdi
	.loc	0 331 12 prologue_end           # liblzma/common/common.c:331:12
	movq	56(%rdi), %rcx
	.loc	0 331 27 is_stmt 0              # liblzma/common/common.c:331:27
	movq	40(%rcx), %rax
	.loc	0 331 37                        # liblzma/common/common.c:331:37
	testq	%rax, %rax
.Ltmp195:
	.loc	0 331 6                         # liblzma/common/common.c:331:6
	je	.LBB11_1
.Ltmp196:
# %bb.2:                                # %if.end
	#DEBUG_VALUE: lzma_get_check:strm <- $rdi
	.loc	0 334 61 is_stmt 1              # liblzma/common/common.c:334:61
	movq	(%rcx), %rdi
.Ltmp197:
	#DEBUG_VALUE: lzma_get_check:strm <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 334 9 is_stmt 0               # liblzma/common/common.c:334:9
	jmpq	*%rax                           # TAILCALL
.Ltmp198:
.LBB11_1:                               # %return
	#DEBUG_VALUE: lzma_get_check:strm <- $rdi
	.loc	0 335 1 is_stmt 1               # liblzma/common/common.c:335:1
	xorl	%eax, %eax
	retq
.Ltmp199:
.Lfunc_end11:
	.size	lzma_get_check, .Lfunc_end11-lzma_get_check
	.cfi_endproc
                                        # -- End function
	.globl	lzma_memusage                   # -- Begin function lzma_memusage
	.p2align	4, 0x90
	.type	lzma_memusage,@function
lzma_memusage:                          # @lzma_memusage
.Lfunc_begin12:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_memusage:strm <- $rdi
	.loc	0 344 11 prologue_end           # liblzma/common/common.c:344:11
	testq	%rdi, %rdi
	.loc	0 344 19 is_stmt 0              # liblzma/common/common.c:344:19
	je	.LBB12_6
.Ltmp200:
# %bb.1:                                # %lor.lhs.false
	#DEBUG_VALUE: lzma_memusage:strm <- $rdi
	.loc	0 344 28                        # liblzma/common/common.c:344:28
	movq	56(%rdi), %rcx
	.loc	0 344 37                        # liblzma/common/common.c:344:37
	testq	%rcx, %rcx
	.loc	0 345 4 is_stmt 1               # liblzma/common/common.c:345:4
	je	.LBB12_6
.Ltmp201:
# %bb.2:                                # %lor.lhs.false2
	#DEBUG_VALUE: lzma_memusage:strm <- $rdi
	.loc	0 345 28 is_stmt 0              # liblzma/common/common.c:345:28
	movq	48(%rcx), %rax
	.loc	0 345 38                        # liblzma/common/common.c:345:38
	testq	%rax, %rax
	.loc	0 346 4 is_stmt 1               # liblzma/common/common.c:346:4
	je	.LBB12_6
.Ltmp202:
# %bb.3:                                # %lor.lhs.false5
	#DEBUG_VALUE: lzma_memusage:strm <- $rdi
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	.loc	0 347 26                        # liblzma/common/common.c:347:26
	movq	(%rcx), %rdi
.Ltmp203:
	#DEBUG_VALUE: lzma_memusage:strm <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 0 26 is_stmt 0                # liblzma/common/common.c:0:26
	leaq	8(%rsp), %rsi
	leaq	16(%rsp), %rdx
	.loc	0 346 7 is_stmt 1               # liblzma/common/common.c:346:7
	xorl	%ecx, %ecx
	callq	*%rax
.Ltmp204:
	movl	%eax, %ecx
	xorl	%eax, %eax
	.loc	0 348 34                        # liblzma/common/common.c:348:34
	testl	%ecx, %ecx
.Ltmp205:
	.loc	0 344 6                         # liblzma/common/common.c:344:6
	jne	.LBB12_5
.Ltmp206:
# %bb.4:                                # %lor.lhs.false5
	#DEBUG_VALUE: lzma_memusage:strm <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 0 6 is_stmt 0                 # liblzma/common/common.c:0:6
	movq	8(%rsp), %rax
.Ltmp207:
.LBB12_5:                               # %lor.lhs.false5
	#DEBUG_VALUE: lzma_memusage:strm <- [DW_OP_LLVM_entry_value 1] $rdi
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	.loc	0 352 1 is_stmt 1               # liblzma/common/common.c:352:1
	retq
.Ltmp208:
.LBB12_6:
	#DEBUG_VALUE: lzma_memusage:strm <- $rdi
	.loc	0 0 1 is_stmt 0                 # liblzma/common/common.c:0:1
	xorl	%eax, %eax
	.loc	0 352 1                         # liblzma/common/common.c:352:1
	retq
.Ltmp209:
.Lfunc_end12:
	.size	lzma_memusage, .Lfunc_end12-lzma_memusage
	.cfi_endproc
                                        # -- End function
	.globl	lzma_memlimit_get               # -- Begin function lzma_memlimit_get
	.p2align	4, 0x90
	.type	lzma_memlimit_get,@function
lzma_memlimit_get:                      # @lzma_memlimit_get
.Lfunc_begin13:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_memlimit_get:strm <- $rdi
	.loc	0 361 11 prologue_end is_stmt 1 # liblzma/common/common.c:361:11
	testq	%rdi, %rdi
	.loc	0 361 19 is_stmt 0              # liblzma/common/common.c:361:19
	je	.LBB13_6
.Ltmp210:
# %bb.1:                                # %lor.lhs.false
	#DEBUG_VALUE: lzma_memlimit_get:strm <- $rdi
	.loc	0 361 28                        # liblzma/common/common.c:361:28
	movq	56(%rdi), %rcx
	.loc	0 361 37                        # liblzma/common/common.c:361:37
	testq	%rcx, %rcx
	.loc	0 362 4 is_stmt 1               # liblzma/common/common.c:362:4
	je	.LBB13_6
.Ltmp211:
# %bb.2:                                # %lor.lhs.false2
	#DEBUG_VALUE: lzma_memlimit_get:strm <- $rdi
	.loc	0 362 28 is_stmt 0              # liblzma/common/common.c:362:28
	movq	48(%rcx), %rax
	.loc	0 362 38                        # liblzma/common/common.c:362:38
	testq	%rax, %rax
	.loc	0 363 4 is_stmt 1               # liblzma/common/common.c:363:4
	je	.LBB13_6
.Ltmp212:
# %bb.3:                                # %lor.lhs.false5
	#DEBUG_VALUE: lzma_memlimit_get:strm <- $rdi
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	.loc	0 364 26                        # liblzma/common/common.c:364:26
	movq	(%rcx), %rdi
.Ltmp213:
	#DEBUG_VALUE: lzma_memlimit_get:strm <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 0 26 is_stmt 0                # liblzma/common/common.c:0:26
	leaq	16(%rsp), %rsi
	leaq	8(%rsp), %rdx
	.loc	0 363 7 is_stmt 1               # liblzma/common/common.c:363:7
	xorl	%ecx, %ecx
	callq	*%rax
.Ltmp214:
	movl	%eax, %ecx
	xorl	%eax, %eax
	.loc	0 365 34                        # liblzma/common/common.c:365:34
	testl	%ecx, %ecx
.Ltmp215:
	.loc	0 361 6                         # liblzma/common/common.c:361:6
	jne	.LBB13_5
.Ltmp216:
# %bb.4:                                # %lor.lhs.false5
	#DEBUG_VALUE: lzma_memlimit_get:strm <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 0 6 is_stmt 0                 # liblzma/common/common.c:0:6
	movq	8(%rsp), %rax
.Ltmp217:
.LBB13_5:                               # %lor.lhs.false5
	#DEBUG_VALUE: lzma_memlimit_get:strm <- [DW_OP_LLVM_entry_value 1] $rdi
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	.loc	0 369 1 is_stmt 1               # liblzma/common/common.c:369:1
	retq
.Ltmp218:
.LBB13_6:
	#DEBUG_VALUE: lzma_memlimit_get:strm <- $rdi
	.loc	0 0 1 is_stmt 0                 # liblzma/common/common.c:0:1
	xorl	%eax, %eax
	.loc	0 369 1                         # liblzma/common/common.c:369:1
	retq
.Ltmp219:
.Lfunc_end13:
	.size	lzma_memlimit_get, .Lfunc_end13-lzma_memlimit_get
	.cfi_endproc
                                        # -- End function
	.globl	lzma_memlimit_set               # -- Begin function lzma_memlimit_set
	.p2align	4, 0x90
	.type	lzma_memlimit_set,@function
lzma_memlimit_set:                      # @lzma_memlimit_set
.Lfunc_begin14:
	.loc	0 374 0 is_stmt 1               # liblzma/common/common.c:374:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_memlimit_set:strm <- $rdi
	#DEBUG_VALUE: lzma_memlimit_set:new_memlimit <- $rsi
	movl	$11, %eax
.Ltmp220:
	.loc	0 379 11 prologue_end           # liblzma/common/common.c:379:11
	testq	%rdi, %rdi
	.loc	0 379 19 is_stmt 0              # liblzma/common/common.c:379:19
	je	.LBB14_5
.Ltmp221:
# %bb.1:                                # %lor.lhs.false
	#DEBUG_VALUE: lzma_memlimit_set:strm <- $rdi
	#DEBUG_VALUE: lzma_memlimit_set:new_memlimit <- $rsi
	.loc	0 379 28                        # liblzma/common/common.c:379:28
	movq	56(%rdi), %rdx
	.loc	0 379 37                        # liblzma/common/common.c:379:37
	testq	%rdx, %rdx
	.loc	0 380 4 is_stmt 1               # liblzma/common/common.c:380:4
	je	.LBB14_5
.Ltmp222:
# %bb.2:                                # %lor.lhs.false2
	#DEBUG_VALUE: lzma_memlimit_set:strm <- $rdi
	#DEBUG_VALUE: lzma_memlimit_set:new_memlimit <- $rsi
	.loc	0 380 28 is_stmt 0              # liblzma/common/common.c:380:28
	movq	48(%rdx), %r8
	.loc	0 380 38                        # liblzma/common/common.c:380:38
	testq	%r8, %r8
.Ltmp223:
	.loc	0 379 6 is_stmt 1               # liblzma/common/common.c:379:6
	je	.LBB14_5
.Ltmp224:
# %bb.3:                                # %if.end
	#DEBUG_VALUE: lzma_memlimit_set:strm <- $rdi
	#DEBUG_VALUE: lzma_memlimit_set:new_memlimit <- $rsi
	.loc	0 0 6 is_stmt 0                 # liblzma/common/common.c:0:6
	movq	%rsi, %rcx
.Ltmp225:
	.loc	0 383 24 is_stmt 1              # liblzma/common/common.c:383:24
	decq	%rsi
.Ltmp226:
	#DEBUG_VALUE: lzma_memlimit_set:new_memlimit <- $rcx
	.loc	0 0 24 is_stmt 0                # liblzma/common/common.c:0:24
	movl	$6, %eax
	.loc	0 383 24                        # liblzma/common/common.c:383:24
	cmpq	$32767, %rsi                    # imm = 0x7FFF
	jb	.LBB14_5
.Ltmp227:
# %bb.4:                                # %if.end8
	#DEBUG_VALUE: lzma_memlimit_set:strm <- $rdi
	#DEBUG_VALUE: lzma_memlimit_set:new_memlimit <- $rcx
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	.loc	0 386 61 is_stmt 1              # liblzma/common/common.c:386:61
	movq	(%rdx), %rdi
.Ltmp228:
	#DEBUG_VALUE: lzma_memlimit_set:strm <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 0 61 is_stmt 0                # liblzma/common/common.c:0:61
	leaq	8(%rsp), %rsi
	leaq	16(%rsp), %rdx
	.loc	0 386 9                         # liblzma/common/common.c:386:9
	callq	*%r8
.Ltmp229:
	#DEBUG_VALUE: lzma_memlimit_set:new_memlimit <- [DW_OP_LLVM_entry_value 1] $rsi
	.loc	0 0 9                           # liblzma/common/common.c:0:9
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
.Ltmp230:
.LBB14_5:                               # %cleanup
	#DEBUG_VALUE: lzma_memlimit_set:strm <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_memlimit_set:new_memlimit <- [DW_OP_LLVM_entry_value 1] $rsi
	.loc	0 388 1 is_stmt 1               # liblzma/common/common.c:388:1
	retq
.Ltmp231:
.Lfunc_end14:
	.size	lzma_memlimit_set, .Lfunc_end14-lzma_memlimit_set
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"5.0.5benchmarkcpu2017"
	.size	.L.str, 22

	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	41                              # Offset entry count
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
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp3-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp10-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp7-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp7-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp8-.Lfunc_begin0           #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp10-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp12-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp12-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp12-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp12-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp22-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp22-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp21-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp21-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp24-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp24-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp26-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	88                              # DW_OP_reg8
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp24-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	89                              # DW_OP_reg9
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp20-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp25-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp36-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp37-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp37-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp42-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp42-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp44-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp44-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp45-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp45-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp48-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp48-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp33-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp33-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp49-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp49-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp30-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp37-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp43-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp44-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp46-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp37-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp37-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp42-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp42-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp44-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp44-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp45-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp45-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp46-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin6-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp59-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp59-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp73-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp73-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end6-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin6-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp62-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp62-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp63-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp63-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp67-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp67-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp71-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp71-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end6-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp63-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp68-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp68-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp69-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp71-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc22:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp63-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp67-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp71-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc23:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin7-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp82-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp82-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp84-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp84-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end7-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc24:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin7-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp77-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp77-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end7-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc25:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin8-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp93-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp93-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp100-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp100-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp101-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp101-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp102-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp102-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp108-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp108-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end8-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc26:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp92-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp96-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp102-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp103-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc27:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp92-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp99-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	88                              # 88
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp102-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp106-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	88                              # 88
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc28:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin9-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp128-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp128-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp134-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp134-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp140-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp140-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp149-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp149-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp150-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp150-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp151-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp151-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end9-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc29:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin9-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp144-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp144-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp145-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp145-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp148-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp148-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp150-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp150-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp151-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp151-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp152-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp152-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end9-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc30:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp145-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp148-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp152-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp153-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp153-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp154-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp154-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp155-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp155-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp157-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp159-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp161-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc31:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin10-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp165-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp165-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp192-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp192-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end10-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc32:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp166-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp172-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp173-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp177-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp180-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp181-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc33:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp173-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp178-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp178-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp179-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp180-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp181-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc34:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp173-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp177-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp180-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp181-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc35:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp183-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp187-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp189-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp190-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc36:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin11-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp197-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp197-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp198-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp198-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end11-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc37:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin12-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp203-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp203-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp208-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp208-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end12-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc38:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin13-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp213-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp213-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp218-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp218-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end13-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc39:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin14-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp228-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp228-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end14-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc40:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin14-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp226-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp226-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp229-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp229-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end14-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
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
	.byte	8                               # Abbreviation Code
	.byte	40                              # DW_TAG_enumerator
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
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
	.byte	10                              # Abbreviation Code
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
	.byte	11                              # Abbreviation Code
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
	.byte	12                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
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
	.byte	14                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
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
	.byte	17                              # Abbreviation Code
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
	.byte	18                              # Abbreviation Code
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
	.byte	19                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
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
	.byte	55                              # DW_TAG_restrict_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	22                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	24                              # Abbreviation Code
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
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
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
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	26                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	27                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	28                              # Abbreviation Code
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
	.byte	29                              # Abbreviation Code
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
	.byte	32                              # Abbreviation Code
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
	.byte	33                              # Abbreviation Code
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
	.byte	34                              # Abbreviation Code
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
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
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
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.ascii	"\203\001"                      # DW_AT_call_target
	.byte	24                              # DW_FORM_exprloc
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	39                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	40                              # Abbreviation Code
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
	.byte	41                              # Abbreviation Code
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
	.byte	44                              # Abbreviation Code
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
	.byte	46                              # Abbreviation Code
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
	.byte	47                              # Abbreviation Code
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
	.byte	48                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	49                              # Abbreviation Code
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
	.byte	50                              # Abbreviation Code
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	5                               # DWARF version number
	.byte	1                               # DWARF Unit Type
	.byte	8                               # Address Size (in bytes)
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	1                               # Abbrev [1] 0xc:0x85d DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	1                               # DW_AT_low_pc
	.long	.Lfunc_end14-.Lfunc_begin0      # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lrnglists_table_base0          # DW_AT_rnglists_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x2b:0xa DW_TAG_variable
	.long	53                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	0
	.byte	3                               # Abbrev [3] 0x35:0xc DW_TAG_array_type
	.long	65                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x3a:0x6 DW_TAG_subrange_type
	.long	69                              # DW_AT_type
	.byte	22                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x41:0x4 DW_TAG_base_type
	.byte	3                               # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x45:0x4 DW_TAG_base_type
	.byte	4                               # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	7                               # Abbrev [7] 0x49:0x2d DW_TAG_enumeration_type
	.long	118                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x51:0x3 DW_TAG_enumerator
	.byte	6                               # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0x54:0x3 DW_TAG_enumerator
	.byte	7                               # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0x57:0x3 DW_TAG_enumerator
	.byte	8                               # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0x5a:0x3 DW_TAG_enumerator
	.byte	9                               # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0x5d:0x3 DW_TAG_enumerator
	.byte	10                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0x60:0x3 DW_TAG_enumerator
	.byte	11                              # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0x63:0x3 DW_TAG_enumerator
	.byte	12                              # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0x66:0x3 DW_TAG_enumerator
	.byte	13                              # DW_AT_name
	.byte	7                               # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0x69:0x3 DW_TAG_enumerator
	.byte	14                              # DW_AT_name
	.byte	8                               # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0x6c:0x3 DW_TAG_enumerator
	.byte	15                              # DW_AT_name
	.byte	9                               # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0x6f:0x3 DW_TAG_enumerator
	.byte	16                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0x72:0x3 DW_TAG_enumerator
	.byte	17                              # DW_AT_name
	.byte	11                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x76:0x4 DW_TAG_base_type
	.byte	5                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x7a:0x15 DW_TAG_enumeration_type
	.long	118                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	250                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x82:0x3 DW_TAG_enumerator
	.byte	18                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0x85:0x3 DW_TAG_enumerator
	.byte	19                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0x88:0x3 DW_TAG_enumerator
	.byte	20                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0x8b:0x3 DW_TAG_enumerator
	.byte	21                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x8f:0x15 DW_TAG_enumeration_type
	.long	118                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x97:0x3 DW_TAG_enumerator
	.byte	22                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0x9a:0x3 DW_TAG_enumerator
	.byte	23                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0x9d:0x3 DW_TAG_enumerator
	.byte	24                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0xa0:0x3 DW_TAG_enumerator
	.byte	25                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xa4:0x4e DW_TAG_structure_type
	.byte	69                              # DW_AT_name
	.byte	88                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xa9:0x9 DW_TAG_member
	.byte	26                              # DW_AT_name
	.long	242                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xb2:0x9 DW_TAG_member
	.byte	58                              # DW_AT_name
	.long	187                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0xbb:0x1b DW_TAG_enumeration_type
	.long	118                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xc3:0x3 DW_TAG_enumerator
	.byte	59                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0xc6:0x3 DW_TAG_enumerator
	.byte	60                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0xc9:0x3 DW_TAG_enumerator
	.byte	61                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0xcc:0x3 DW_TAG_enumerator
	.byte	62                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0xcf:0x3 DW_TAG_enumerator
	.byte	63                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0xd2:0x3 DW_TAG_enumerator
	.byte	64                              # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0xd6:0x9 DW_TAG_member
	.byte	65                              # DW_AT_name
	.long	522                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xdf:0x9 DW_TAG_member
	.byte	66                              # DW_AT_name
	.long	778                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xe8:0x9 DW_TAG_member
	.byte	68                              # DW_AT_name
	.long	790                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	206                             # DW_AT_decl_line
	.byte	84                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0xf2:0x8 DW_TAG_typedef
	.long	250                             # DW_AT_type
	.byte	57                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xfa:0x4e DW_TAG_structure_type
	.byte	56                              # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xff:0x9 DW_TAG_member
	.byte	27                              # DW_AT_name
	.long	328                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x108:0x9 DW_TAG_member
	.byte	29                              # DW_AT_name
	.long	337                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x111:0x9 DW_TAG_member
	.byte	34                              # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x11a:0x9 DW_TAG_member
	.byte	36                              # DW_AT_name
	.long	373                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x123:0x9 DW_TAG_member
	.byte	48                              # DW_AT_name
	.long	611                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x12c:0x9 DW_TAG_member
	.byte	50                              # DW_AT_name
	.long	636                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x135:0x9 DW_TAG_member
	.byte	52                              # DW_AT_name
	.long	670                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x13e:0x9 DW_TAG_member
	.byte	53                              # DW_AT_name
	.long	706                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x148:0x5 DW_TAG_pointer_type
	.long	333                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x14d:0x4 DW_TAG_typedef
	.byte	28                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x151:0x8 DW_TAG_typedef
	.long	345                             # DW_AT_type
	.byte	33                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x159:0x8 DW_TAG_typedef
	.long	353                             # DW_AT_type
	.byte	32                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x161:0x8 DW_TAG_typedef
	.long	361                             # DW_AT_type
	.byte	31                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x169:0x4 DW_TAG_base_type
	.byte	30                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	11                              # Abbrev [11] 0x16d:0x8 DW_TAG_typedef
	.long	361                             # DW_AT_type
	.byte	35                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x175:0x8 DW_TAG_typedef
	.long	381                             # DW_AT_type
	.byte	47                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x17d:0x5 DW_TAG_pointer_type
	.long	386                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x182:0x33 DW_TAG_subroutine_type
	.long	437                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x187:0x5 DW_TAG_formal_parameter
	.long	328                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x18c:0x5 DW_TAG_formal_parameter
	.long	445                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x191:0x5 DW_TAG_formal_parameter
	.long	547                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x196:0x5 DW_TAG_formal_parameter
	.long	582                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x19b:0x5 DW_TAG_formal_parameter
	.long	522                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x1a0:0x5 DW_TAG_formal_parameter
	.long	592                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x1a5:0x5 DW_TAG_formal_parameter
	.long	582                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x1aa:0x5 DW_TAG_formal_parameter
	.long	522                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x1af:0x5 DW_TAG_formal_parameter
	.long	602                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x1b5:0x8 DW_TAG_typedef
	.long	73                              # DW_AT_type
	.byte	37                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x1bd:0x5 DW_TAG_pointer_type
	.long	450                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x1c2:0x9 DW_TAG_typedef
	.long	459                             # DW_AT_type
	.byte	42                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	403                             # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0x1cb:0x24 DW_TAG_structure_type
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.short	341                             # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0x1d0:0xa DW_TAG_member
	.byte	38                              # DW_AT_name
	.long	495                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	376                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x1da:0xa DW_TAG_member
	.byte	40                              # DW_AT_name
	.long	530                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x1e4:0xa DW_TAG_member
	.byte	41                              # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	401                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x1ef:0x5 DW_TAG_pointer_type
	.long	500                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x1f4:0x15 DW_TAG_subroutine_type
	.long	521                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x1f9:0x5 DW_TAG_formal_parameter
	.long	521                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x1fe:0x5 DW_TAG_formal_parameter
	.long	522                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x203:0x5 DW_TAG_formal_parameter
	.long	522                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x209:0x1 DW_TAG_pointer_type
	.byte	11                              # Abbrev [11] 0x20a:0x8 DW_TAG_typedef
	.long	361                             # DW_AT_type
	.byte	39                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x212:0x5 DW_TAG_pointer_type
	.long	535                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x217:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x218:0x5 DW_TAG_formal_parameter
	.long	521                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x21d:0x5 DW_TAG_formal_parameter
	.long	521                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x223:0x5 DW_TAG_restrict_type
	.long	552                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x228:0x5 DW_TAG_pointer_type
	.long	557                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x22d:0x5 DW_TAG_const_type
	.long	562                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x232:0x8 DW_TAG_typedef
	.long	570                             # DW_AT_type
	.byte	45                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x23a:0x8 DW_TAG_typedef
	.long	578                             # DW_AT_type
	.byte	44                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x242:0x4 DW_TAG_base_type
	.byte	43                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	21                              # Abbrev [21] 0x246:0x5 DW_TAG_restrict_type
	.long	587                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x24b:0x5 DW_TAG_pointer_type
	.long	522                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x250:0x5 DW_TAG_restrict_type
	.long	597                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x255:0x5 DW_TAG_pointer_type
	.long	562                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x25a:0x9 DW_TAG_typedef
	.long	122                             # DW_AT_type
	.byte	46                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	322                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x263:0x8 DW_TAG_typedef
	.long	619                             # DW_AT_type
	.byte	49                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x26b:0x5 DW_TAG_pointer_type
	.long	624                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x270:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x271:0x5 DW_TAG_formal_parameter
	.long	328                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x276:0x5 DW_TAG_formal_parameter
	.long	445                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x27c:0x5 DW_TAG_pointer_type
	.long	641                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x281:0xb DW_TAG_subroutine_type
	.long	652                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x286:0x5 DW_TAG_formal_parameter
	.long	660                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x28c:0x8 DW_TAG_typedef
	.long	143                             # DW_AT_type
	.byte	51                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x294:0x5 DW_TAG_pointer_type
	.long	665                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x299:0x5 DW_TAG_const_type
	.long	333                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x29e:0x5 DW_TAG_pointer_type
	.long	675                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x2a3:0x1a DW_TAG_subroutine_type
	.long	437                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x2a8:0x5 DW_TAG_formal_parameter
	.long	328                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x2ad:0x5 DW_TAG_formal_parameter
	.long	701                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x2b2:0x5 DW_TAG_formal_parameter
	.long	701                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x2b7:0x5 DW_TAG_formal_parameter
	.long	345                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x2bd:0x5 DW_TAG_pointer_type
	.long	345                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2c2:0x5 DW_TAG_pointer_type
	.long	711                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x2c7:0x1a DW_TAG_subroutine_type
	.long	437                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x2cc:0x5 DW_TAG_formal_parameter
	.long	328                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x2d1:0x5 DW_TAG_formal_parameter
	.long	445                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x2d6:0x5 DW_TAG_formal_parameter
	.long	737                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x2db:0x5 DW_TAG_formal_parameter
	.long	737                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x2e1:0x5 DW_TAG_pointer_type
	.long	742                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x2e6:0x5 DW_TAG_const_type
	.long	747                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2eb:0x8 DW_TAG_typedef
	.long	755                             # DW_AT_type
	.byte	55                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	23                              # Abbrev [23] 0x2f3:0x17 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x2f7:0x9 DW_TAG_member
	.byte	29                              # DW_AT_name
	.long	337                             # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x300:0x9 DW_TAG_member
	.byte	54                              # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x30a:0xc DW_TAG_array_type
	.long	790                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x30f:0x6 DW_TAG_subrange_type
	.long	69                              # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x316:0x4 DW_TAG_base_type
	.byte	67                              # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x31a:0xc DW_TAG_enumeration_type
	.long	118                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x322:0x3 DW_TAG_enumerator
	.byte	70                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x326:0xf DW_TAG_subprogram
	.byte	1                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	78                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1804                            # DW_AT_type
                                        # DW_AT_external
	.byte	24                              # Abbrev [24] 0x335:0xf DW_TAG_subprogram
	.byte	2                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	81                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1820                            # DW_AT_type
                                        # DW_AT_external
	.byte	25                              # Abbrev [25] 0x344:0x28 DW_TAG_subprogram
	.byte	3                               # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.long	1307                            # DW_AT_abstract_origin
	.byte	26                              # Abbrev [26] 0x350:0x6 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.long	1315                            # DW_AT_abstract_origin
	.byte	26                              # Abbrev [26] 0x356:0x6 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.long	1323                            # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x35c:0x5 DW_TAG_variable
	.long	1331                            # DW_AT_abstract_origin
	.byte	28                              # Abbrev [28] 0x361:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	80
                                        # DW_AT_call_tail_call
	.byte	4                               # DW_AT_call_pc
	.byte	29                              # Abbrev [29] 0x365:0x6 DW_TAG_call_site
	.long	876                             # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	5                               # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0x36c:0xf DW_TAG_subprogram
	.byte	71                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	540                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	521                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x375:0x5 DW_TAG_formal_parameter
	.long	522                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x37b:0x29 DW_TAG_subprogram
	.byte	6                               # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.long	1066                            # DW_AT_abstract_origin
	.byte	26                              # Abbrev [26] 0x387:0x6 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.long	1070                            # DW_AT_abstract_origin
	.byte	26                              # Abbrev [26] 0x38d:0x6 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.long	1078                            # DW_AT_abstract_origin
	.byte	29                              # Abbrev [29] 0x393:0x6 DW_TAG_call_site
	.long	932                             # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	7                               # DW_AT_call_pc
	.byte	29                              # Abbrev [29] 0x399:0x6 DW_TAG_call_site
	.long	932                             # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	8                               # DW_AT_call_pc
	.byte	28                              # Abbrev [28] 0x39f:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	82
                                        # DW_AT_call_tail_call
	.byte	9                               # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0x3a4:0xb DW_TAG_subprogram
	.byte	40                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	555                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x3a9:0x5 DW_TAG_formal_parameter
	.long	521                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	32                              # Abbrev [32] 0x3af:0x61 DW_TAG_subprogram
	.byte	10                              # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	82                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	522                             # DW_AT_type
                                        # DW_AT_external
	.byte	33                              # Abbrev [33] 0x3be:0x9 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_location
	.byte	92                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.long	547                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x3c7:0x9 DW_TAG_formal_parameter
	.byte	5                               # DW_AT_location
	.byte	93                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.long	582                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x3d0:0x9 DW_TAG_formal_parameter
	.byte	6                               # DW_AT_location
	.byte	94                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.long	522                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x3d9:0x9 DW_TAG_formal_parameter
	.byte	7                               # DW_AT_location
	.byte	95                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.long	592                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x3e2:0x9 DW_TAG_formal_parameter
	.byte	8                               # DW_AT_location
	.byte	96                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.long	582                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x3eb:0x9 DW_TAG_formal_parameter
	.byte	9                               # DW_AT_location
	.byte	97                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.long	522                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0x3f4:0x9 DW_TAG_variable
	.byte	10                              # DW_AT_location
	.byte	98                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
	.long	1830                            # DW_AT_type
	.byte	34                              # Abbrev [34] 0x3fd:0x9 DW_TAG_variable
	.byte	11                              # DW_AT_location
	.byte	99                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.long	1830                            # DW_AT_type
	.byte	34                              # Abbrev [34] 0x406:0x9 DW_TAG_variable
	.byte	12                              # DW_AT_location
	.byte	100                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.long	1830                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x410:0x15 DW_TAG_subprogram
	.byte	72                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	36                              # Abbrev [36] 0x414:0x8 DW_TAG_formal_parameter
	.byte	26                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.long	1061                            # DW_AT_type
	.byte	36                              # Abbrev [36] 0x41c:0x8 DW_TAG_formal_parameter
	.byte	73                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.long	445                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x425:0x5 DW_TAG_pointer_type
	.long	242                             # DW_AT_type
	.byte	35                              # Abbrev [35] 0x42a:0x15 DW_TAG_subprogram
	.byte	74                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	36                              # Abbrev [36] 0x42e:0x8 DW_TAG_formal_parameter
	.byte	75                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.long	521                             # DW_AT_type
	.byte	36                              # Abbrev [36] 0x436:0x8 DW_TAG_formal_parameter
	.byte	73                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.long	445                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	32                              # Abbrev [32] 0x43f:0x6b DW_TAG_subprogram
	.byte	11                              # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	83                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	437                             # DW_AT_type
                                        # DW_AT_external
	.byte	33                              # Abbrev [33] 0x44e:0x9 DW_TAG_formal_parameter
	.byte	13                              # DW_AT_location
	.byte	26                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.long	1061                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x457:0x9 DW_TAG_formal_parameter
	.byte	14                              # DW_AT_location
	.byte	73                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.long	445                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x460:0x9 DW_TAG_formal_parameter
	.byte	15                              # DW_AT_location
	.byte	101                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.long	1835                            # DW_AT_type
	.byte	37                              # Abbrev [37] 0x469:0x2e DW_TAG_inlined_subroutine
	.long	1040                            # DW_AT_abstract_origin
	.byte	12                              # DW_AT_low_pc
	.long	.Ltmp47-.Ltmp31                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	94                              # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	26                              # Abbrev [26] 0x476:0x6 DW_TAG_formal_parameter
	.byte	16                              # DW_AT_location
	.long	1044                            # DW_AT_abstract_origin
	.byte	37                              # Abbrev [37] 0x47c:0x1a DW_TAG_inlined_subroutine
	.long	1066                            # DW_AT_abstract_origin
	.byte	13                              # DW_AT_low_pc
	.long	.Ltmp46-.Ltmp36                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	129                             # DW_AT_call_line
	.byte	4                               # DW_AT_call_column
	.byte	26                              # Abbrev [26] 0x489:0x6 DW_TAG_formal_parameter
	.byte	17                              # DW_AT_location
	.long	1070                            # DW_AT_abstract_origin
	.byte	26                              # Abbrev [26] 0x48f:0x6 DW_TAG_formal_parameter
	.byte	18                              # DW_AT_location
	.long	1078                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	38                              # Abbrev [38] 0x497:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	82
	.byte	13                              # DW_AT_call_return_pc
	.byte	38                              # Abbrev [38] 0x49b:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	82
	.byte	14                              # DW_AT_call_return_pc
	.byte	39                              # Abbrev [39] 0x49f:0x6 DW_TAG_call_site
	.long	932                             # DW_AT_call_origin
	.byte	15                              # DW_AT_call_return_pc
	.byte	28                              # Abbrev [28] 0x4a5:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	80
                                        # DW_AT_call_tail_call
	.byte	16                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x4aa:0x41 DW_TAG_subprogram
	.byte	17                              # DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.long	1040                            # DW_AT_abstract_origin
	.byte	26                              # Abbrev [26] 0x4b6:0x6 DW_TAG_formal_parameter
	.byte	19                              # DW_AT_location
	.long	1044                            # DW_AT_abstract_origin
	.byte	26                              # Abbrev [26] 0x4bc:0x6 DW_TAG_formal_parameter
	.byte	20                              # DW_AT_location
	.long	1052                            # DW_AT_abstract_origin
	.byte	37                              # Abbrev [37] 0x4c2:0x1a DW_TAG_inlined_subroutine
	.long	1066                            # DW_AT_abstract_origin
	.byte	18                              # DW_AT_low_pc
	.long	.Ltmp71-.Ltmp63                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	129                             # DW_AT_call_line
	.byte	4                               # DW_AT_call_column
	.byte	26                              # Abbrev [26] 0x4cf:0x6 DW_TAG_formal_parameter
	.byte	21                              # DW_AT_location
	.long	1070                            # DW_AT_abstract_origin
	.byte	26                              # Abbrev [26] 0x4d5:0x6 DW_TAG_formal_parameter
	.byte	22                              # DW_AT_location
	.long	1078                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	38                              # Abbrev [38] 0x4dc:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	80
	.byte	19                              # DW_AT_call_return_pc
	.byte	38                              # Abbrev [38] 0x4e0:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	82
	.byte	20                              # DW_AT_call_return_pc
	.byte	39                              # Abbrev [39] 0x4e4:0x6 DW_TAG_call_site
	.long	932                             # DW_AT_call_origin
	.byte	21                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	32                              # Abbrev [32] 0x4eb:0x30 DW_TAG_subprogram
	.byte	22                              # DW_AT_low_pc
	.long	.Lfunc_end7-.Lfunc_begin7       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	84                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	437                             # DW_AT_type
                                        # DW_AT_external
	.byte	33                              # Abbrev [33] 0x4fa:0x9 DW_TAG_formal_parameter
	.byte	23                              # DW_AT_location
	.byte	26                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.long	1061                            # DW_AT_type
	.byte	40                              # Abbrev [40] 0x503:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	73                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.long	445                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x50d:0x9 DW_TAG_formal_parameter
	.byte	24                              # DW_AT_location
	.byte	105                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.long	737                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0x516:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	88
                                        # DW_AT_call_tail_call
	.byte	23                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	41                              # Abbrev [41] 0x51b:0x21 DW_TAG_subprogram
	.byte	76                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	521                             # DW_AT_type
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	36                              # Abbrev [36] 0x523:0x8 DW_TAG_formal_parameter
	.byte	77                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.long	522                             # DW_AT_type
	.byte	36                              # Abbrev [36] 0x52b:0x8 DW_TAG_formal_parameter
	.byte	73                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.long	445                             # DW_AT_type
	.byte	42                              # Abbrev [42] 0x533:0x8 DW_TAG_variable
	.byte	75                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.long	521                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	32                              # Abbrev [32] 0x53c:0x39 DW_TAG_subprogram
	.byte	24                              # DW_AT_low_pc
	.long	.Lfunc_end8-.Lfunc_begin8       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	85                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	437                             # DW_AT_type
                                        # DW_AT_external
	.byte	33                              # Abbrev [33] 0x54b:0x9 DW_TAG_formal_parameter
	.byte	25                              # DW_AT_location
	.byte	106                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.long	1920                            # DW_AT_type
	.byte	43                              # Abbrev [43] 0x554:0x16 DW_TAG_inlined_subroutine
	.long	1307                            # DW_AT_abstract_origin
	.byte	0                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	151                             # DW_AT_call_line
	.byte	20                              # DW_AT_call_column
	.byte	26                              # Abbrev [26] 0x55d:0x6 DW_TAG_formal_parameter
	.byte	27                              # DW_AT_location
	.long	1315                            # DW_AT_abstract_origin
	.byte	26                              # Abbrev [26] 0x563:0x6 DW_TAG_formal_parameter
	.byte	26                              # DW_AT_location
	.long	1323                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	38                              # Abbrev [38] 0x56a:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	80
	.byte	25                              # DW_AT_call_return_pc
	.byte	39                              # Abbrev [39] 0x56e:0x6 DW_TAG_call_site
	.long	876                             # DW_AT_call_origin
	.byte	26                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	32                              # Abbrev [32] 0x575:0x48 DW_TAG_subprogram
	.byte	27                              # DW_AT_low_pc
	.long	.Lfunc_end9-.Lfunc_begin9       # DW_AT_high_pc
	.byte	4                               # DW_AT_frame_base
	.byte	156
	.byte	17
	.byte	80
	.byte	34
                                        # DW_AT_call_all_calls
	.byte	86                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	437                             # DW_AT_type
                                        # DW_AT_external
	.byte	33                              # Abbrev [33] 0x587:0x9 DW_TAG_formal_parameter
	.byte	28                              # DW_AT_location
	.byte	106                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
	.long	1920                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x590:0x9 DW_TAG_formal_parameter
	.byte	29                              # DW_AT_location
	.byte	126                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
	.long	602                             # DW_AT_type
	.byte	44                              # Abbrev [44] 0x599:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	8
	.byte	93                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	251                             # DW_AT_decl_line
	.long	522                             # DW_AT_type
	.byte	44                              # Abbrev [44] 0x5a4:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	0
	.byte	96                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	252                             # DW_AT_decl_line
	.long	522                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0x5af:0x9 DW_TAG_variable
	.byte	30                              # DW_AT_location
	.byte	127                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	253                             # DW_AT_decl_line
	.long	437                             # DW_AT_type
	.byte	38                              # Abbrev [38] 0x5b8:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	80
	.byte	28                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	45                              # Abbrev [45] 0x5bd:0x81 DW_TAG_subprogram
	.byte	29                              # DW_AT_low_pc
	.long	.Lfunc_end10-.Lfunc_begin10     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	87                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	314                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	46                              # Abbrev [46] 0x5c9:0xa DW_TAG_formal_parameter
	.byte	31                              # DW_AT_location
	.byte	106                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	314                             # DW_AT_decl_line
	.long	1920                            # DW_AT_type
	.byte	47                              # Abbrev [47] 0x5d3:0x36 DW_TAG_inlined_subroutine
	.long	1040                            # DW_AT_abstract_origin
	.byte	30                              # DW_AT_low_pc
	.long	.Ltmp182-.Ltmp166               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	317                             # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	48                              # Abbrev [48] 0x5e1:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.long	1044                            # DW_AT_abstract_origin
	.byte	26                              # Abbrev [26] 0x5e8:0x6 DW_TAG_formal_parameter
	.byte	32                              # DW_AT_location
	.long	1052                            # DW_AT_abstract_origin
	.byte	37                              # Abbrev [37] 0x5ee:0x1a DW_TAG_inlined_subroutine
	.long	1066                            # DW_AT_abstract_origin
	.byte	31                              # DW_AT_low_pc
	.long	.Ltmp181-.Ltmp173               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	129                             # DW_AT_call_line
	.byte	4                               # DW_AT_call_column
	.byte	26                              # Abbrev [26] 0x5fb:0x6 DW_TAG_formal_parameter
	.byte	33                              # DW_AT_location
	.long	1070                            # DW_AT_abstract_origin
	.byte	26                              # Abbrev [26] 0x601:0x6 DW_TAG_formal_parameter
	.byte	34                              # DW_AT_location
	.long	1078                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	47                              # Abbrev [47] 0x609:0x1c DW_TAG_inlined_subroutine
	.long	1066                            # DW_AT_abstract_origin
	.byte	32                              # DW_AT_low_pc
	.long	.Ltmp190-.Ltmp183               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	318                             # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	48                              # Abbrev [48] 0x617:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.long	1070                            # DW_AT_abstract_origin
	.byte	26                              # Abbrev [26] 0x61e:0x6 DW_TAG_formal_parameter
	.byte	35                              # DW_AT_location
	.long	1078                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	38                              # Abbrev [38] 0x625:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	80
	.byte	33                              # DW_AT_call_return_pc
	.byte	38                              # Abbrev [38] 0x629:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	82
	.byte	34                              # DW_AT_call_return_pc
	.byte	39                              # Abbrev [39] 0x62d:0x6 DW_TAG_call_site
	.long	932                             # DW_AT_call_origin
	.byte	35                              # DW_AT_call_return_pc
	.byte	38                              # Abbrev [38] 0x633:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	80
	.byte	36                              # DW_AT_call_return_pc
	.byte	39                              # Abbrev [39] 0x637:0x6 DW_TAG_call_site
	.long	932                             # DW_AT_call_origin
	.byte	37                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	49                              # Abbrev [49] 0x63e:0x1f DW_TAG_subprogram
	.byte	38                              # DW_AT_low_pc
	.long	.Lfunc_end11-.Lfunc_begin11     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	88                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	327                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	652                             # DW_AT_type
                                        # DW_AT_external
	.byte	46                              # Abbrev [46] 0x64e:0xa DW_TAG_formal_parameter
	.byte	36                              # DW_AT_location
	.byte	106                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	327                             # DW_AT_decl_line
	.long	2142                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x658:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	80
                                        # DW_AT_call_tail_call
	.byte	39                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	49                              # Abbrev [49] 0x65d:0x37 DW_TAG_subprogram
	.byte	40                              # DW_AT_low_pc
	.long	.Lfunc_end12-.Lfunc_begin12     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	89                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	339                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	345                             # DW_AT_type
                                        # DW_AT_external
	.byte	46                              # Abbrev [46] 0x66d:0xa DW_TAG_formal_parameter
	.byte	37                              # DW_AT_location
	.byte	106                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	339                             # DW_AT_decl_line
	.long	2142                            # DW_AT_type
	.byte	50                              # Abbrev [50] 0x677:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	8
	.byte	128                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	341                             # DW_AT_decl_line
	.long	345                             # DW_AT_type
	.byte	50                              # Abbrev [50] 0x683:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	16
	.byte	129                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	342                             # DW_AT_decl_line
	.long	345                             # DW_AT_type
	.byte	38                              # Abbrev [38] 0x68f:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	80
	.byte	41                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	49                              # Abbrev [49] 0x694:0x37 DW_TAG_subprogram
	.byte	42                              # DW_AT_low_pc
	.long	.Lfunc_end13-.Lfunc_begin13     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	90                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	356                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	345                             # DW_AT_type
                                        # DW_AT_external
	.byte	46                              # Abbrev [46] 0x6a4:0xa DW_TAG_formal_parameter
	.byte	38                              # DW_AT_location
	.byte	106                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	356                             # DW_AT_decl_line
	.long	2142                            # DW_AT_type
	.byte	50                              # Abbrev [50] 0x6ae:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	8
	.byte	129                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	358                             # DW_AT_decl_line
	.long	345                             # DW_AT_type
	.byte	50                              # Abbrev [50] 0x6ba:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	16
	.byte	128                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	359                             # DW_AT_decl_line
	.long	345                             # DW_AT_type
	.byte	38                              # Abbrev [38] 0x6c6:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	80
	.byte	43                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	49                              # Abbrev [49] 0x6cb:0x41 DW_TAG_subprogram
	.byte	44                              # DW_AT_low_pc
	.long	.Lfunc_end14-.Lfunc_begin14     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	91                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	373                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	437                             # DW_AT_type
                                        # DW_AT_external
	.byte	46                              # Abbrev [46] 0x6db:0xa DW_TAG_formal_parameter
	.byte	39                              # DW_AT_location
	.byte	106                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	373                             # DW_AT_decl_line
	.long	1920                            # DW_AT_type
	.byte	46                              # Abbrev [46] 0x6e5:0xa DW_TAG_formal_parameter
	.byte	40                              # DW_AT_location
	.byte	130                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	373                             # DW_AT_decl_line
	.long	345                             # DW_AT_type
	.byte	50                              # Abbrev [50] 0x6ef:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	16
	.byte	129                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	376                             # DW_AT_decl_line
	.long	345                             # DW_AT_type
	.byte	50                              # Abbrev [50] 0x6fb:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	8
	.byte	128                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	377                             # DW_AT_decl_line
	.long	345                             # DW_AT_type
	.byte	38                              # Abbrev [38] 0x707:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	88
	.byte	45                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x70c:0x8 DW_TAG_typedef
	.long	1812                            # DW_AT_type
	.byte	80                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x714:0x8 DW_TAG_typedef
	.long	118                             # DW_AT_type
	.byte	79                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x71c:0x5 DW_TAG_pointer_type
	.long	1825                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x721:0x5 DW_TAG_const_type
	.long	65                              # DW_AT_type
	.byte	22                              # Abbrev [22] 0x726:0x5 DW_TAG_const_type
	.long	522                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x72b:0x5 DW_TAG_pointer_type
	.long	1840                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x730:0x5 DW_TAG_const_type
	.long	1845                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x735:0x8 DW_TAG_typedef
	.long	1853                            # DW_AT_type
	.byte	104                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x73d:0x21 DW_TAG_structure_type
	.byte	103                             # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x742:0x9 DW_TAG_member
	.byte	29                              # DW_AT_name
	.long	337                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x74b:0x9 DW_TAG_member
	.byte	34                              # DW_AT_name
	.long	1886                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x754:0x9 DW_TAG_member
	.byte	54                              # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x75e:0x8 DW_TAG_typedef
	.long	1894                            # DW_AT_type
	.byte	102                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x766:0x5 DW_TAG_pointer_type
	.long	1899                            # DW_AT_type
	.byte	14                              # Abbrev [14] 0x76b:0x15 DW_TAG_subroutine_type
	.long	437                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x770:0x5 DW_TAG_formal_parameter
	.long	1061                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x775:0x5 DW_TAG_formal_parameter
	.long	445                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x77a:0x5 DW_TAG_formal_parameter
	.long	1835                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x780:0x5 DW_TAG_pointer_type
	.long	1925                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x785:0x9 DW_TAG_typedef
	.long	1934                            # DW_AT_type
	.byte	125                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	490                             # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0x78e:0xba DW_TAG_structure_type
	.byte	136                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.short	453                             # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0x793:0xa DW_TAG_member
	.byte	107                             # DW_AT_name
	.long	552                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	454                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x79d:0xa DW_TAG_member
	.byte	65                              # DW_AT_name
	.long	522                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	455                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x7a7:0xa DW_TAG_member
	.byte	108                             # DW_AT_name
	.long	345                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	456                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x7b1:0xa DW_TAG_member
	.byte	109                             # DW_AT_name
	.long	597                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	458                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x7bb:0xa DW_TAG_member
	.byte	110                             # DW_AT_name
	.long	522                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	459                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x7c5:0xa DW_TAG_member
	.byte	111                             # DW_AT_name
	.long	345                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	460                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x7cf:0xa DW_TAG_member
	.byte	73                              # DW_AT_name
	.long	445                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	468                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x7d9:0xa DW_TAG_member
	.byte	112                             # DW_AT_name
	.long	2120                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	471                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x7e3:0xa DW_TAG_member
	.byte	114                             # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	479                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x7ed:0xa DW_TAG_member
	.byte	115                             # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	480                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x7f7:0xa DW_TAG_member
	.byte	116                             # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	481                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x801:0xa DW_TAG_member
	.byte	117                             # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	482                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x80b:0xa DW_TAG_member
	.byte	118                             # DW_AT_name
	.long	345                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	483                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x815:0xa DW_TAG_member
	.byte	119                             # DW_AT_name
	.long	345                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	484                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x81f:0xa DW_TAG_member
	.byte	120                             # DW_AT_name
	.long	522                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	485                             # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x829:0xa DW_TAG_member
	.byte	121                             # DW_AT_name
	.long	522                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	486                             # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x833:0xa DW_TAG_member
	.byte	122                             # DW_AT_name
	.long	2134                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	487                             # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x83d:0xa DW_TAG_member
	.byte	124                             # DW_AT_name
	.long	2134                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	488                             # DW_AT_decl_line
	.byte	132                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x848:0x5 DW_TAG_pointer_type
	.long	2125                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x84d:0x9 DW_TAG_typedef
	.long	164                             # DW_AT_type
	.byte	113                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	411                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x856:0x8 DW_TAG_typedef
	.long	794                             # DW_AT_type
	.byte	123                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x85e:0x5 DW_TAG_pointer_type
	.long	2147                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x863:0x5 DW_TAG_const_type
	.long	1925                            # DW_AT_type
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
	.uleb128 .Ltmp92-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp96-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp102-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp103-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	528                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/common/common.c"       # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/xz-test/src" # string offset=129
.Linfo_string3:
	.asciz	"char"                          # string offset=161
.Linfo_string4:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=166
.Linfo_string5:
	.asciz	"unsigned int"                  # string offset=186
.Linfo_string6:
	.asciz	"LZMA_OK"                       # string offset=199
.Linfo_string7:
	.asciz	"LZMA_STREAM_END"               # string offset=207
.Linfo_string8:
	.asciz	"LZMA_NO_CHECK"                 # string offset=223
.Linfo_string9:
	.asciz	"LZMA_UNSUPPORTED_CHECK"        # string offset=237
.Linfo_string10:
	.asciz	"LZMA_GET_CHECK"                # string offset=260
.Linfo_string11:
	.asciz	"LZMA_MEM_ERROR"                # string offset=275
.Linfo_string12:
	.asciz	"LZMA_MEMLIMIT_ERROR"           # string offset=290
.Linfo_string13:
	.asciz	"LZMA_FORMAT_ERROR"             # string offset=310
.Linfo_string14:
	.asciz	"LZMA_OPTIONS_ERROR"            # string offset=328
.Linfo_string15:
	.asciz	"LZMA_DATA_ERROR"               # string offset=347
.Linfo_string16:
	.asciz	"LZMA_BUF_ERROR"                # string offset=363
.Linfo_string17:
	.asciz	"LZMA_PROG_ERROR"               # string offset=378
.Linfo_string18:
	.asciz	"LZMA_RUN"                      # string offset=394
.Linfo_string19:
	.asciz	"LZMA_SYNC_FLUSH"               # string offset=403
.Linfo_string20:
	.asciz	"LZMA_FULL_FLUSH"               # string offset=419
.Linfo_string21:
	.asciz	"LZMA_FINISH"                   # string offset=435
.Linfo_string22:
	.asciz	"LZMA_CHECK_NONE"               # string offset=447
.Linfo_string23:
	.asciz	"LZMA_CHECK_CRC32"              # string offset=463
.Linfo_string24:
	.asciz	"LZMA_CHECK_CRC64"              # string offset=480
.Linfo_string25:
	.asciz	"LZMA_CHECK_SHA256"             # string offset=497
.Linfo_string26:
	.asciz	"next"                          # string offset=515
.Linfo_string27:
	.asciz	"coder"                         # string offset=520
.Linfo_string28:
	.asciz	"lzma_coder"                    # string offset=526
.Linfo_string29:
	.asciz	"id"                            # string offset=537
.Linfo_string30:
	.asciz	"unsigned long"                 # string offset=540
.Linfo_string31:
	.asciz	"__uint64_t"                    # string offset=554
.Linfo_string32:
	.asciz	"uint64_t"                      # string offset=565
.Linfo_string33:
	.asciz	"lzma_vli"                      # string offset=574
.Linfo_string34:
	.asciz	"init"                          # string offset=583
.Linfo_string35:
	.asciz	"uintptr_t"                     # string offset=588
.Linfo_string36:
	.asciz	"code"                          # string offset=598
.Linfo_string37:
	.asciz	"lzma_ret"                      # string offset=603
.Linfo_string38:
	.asciz	"alloc"                         # string offset=612
.Linfo_string39:
	.asciz	"size_t"                        # string offset=618
.Linfo_string40:
	.asciz	"free"                          # string offset=625
.Linfo_string41:
	.asciz	"opaque"                        # string offset=630
.Linfo_string42:
	.asciz	"lzma_allocator"                # string offset=637
.Linfo_string43:
	.asciz	"unsigned char"                 # string offset=652
.Linfo_string44:
	.asciz	"__uint8_t"                     # string offset=666
.Linfo_string45:
	.asciz	"uint8_t"                       # string offset=676
.Linfo_string46:
	.asciz	"lzma_action"                   # string offset=684
.Linfo_string47:
	.asciz	"lzma_code_function"            # string offset=696
.Linfo_string48:
	.asciz	"end"                           # string offset=715
.Linfo_string49:
	.asciz	"lzma_end_function"             # string offset=719
.Linfo_string50:
	.asciz	"get_check"                     # string offset=737
.Linfo_string51:
	.asciz	"lzma_check"                    # string offset=747
.Linfo_string52:
	.asciz	"memconfig"                     # string offset=758
.Linfo_string53:
	.asciz	"update"                        # string offset=768
.Linfo_string54:
	.asciz	"options"                       # string offset=775
.Linfo_string55:
	.asciz	"lzma_filter"                   # string offset=783
.Linfo_string56:
	.asciz	"lzma_next_coder_s"             # string offset=795
.Linfo_string57:
	.asciz	"lzma_next_coder"               # string offset=813
.Linfo_string58:
	.asciz	"sequence"                      # string offset=829
.Linfo_string59:
	.asciz	"ISEQ_RUN"                      # string offset=838
.Linfo_string60:
	.asciz	"ISEQ_SYNC_FLUSH"               # string offset=847
.Linfo_string61:
	.asciz	"ISEQ_FULL_FLUSH"               # string offset=863
.Linfo_string62:
	.asciz	"ISEQ_FINISH"                   # string offset=879
.Linfo_string63:
	.asciz	"ISEQ_END"                      # string offset=891
.Linfo_string64:
	.asciz	"ISEQ_ERROR"                    # string offset=900
.Linfo_string65:
	.asciz	"avail_in"                      # string offset=911
.Linfo_string66:
	.asciz	"supported_actions"             # string offset=920
.Linfo_string67:
	.asciz	"_Bool"                         # string offset=938
.Linfo_string68:
	.asciz	"allow_buf_error"               # string offset=944
.Linfo_string69:
	.asciz	"lzma_internal_s"               # string offset=960
.Linfo_string70:
	.asciz	"LZMA_RESERVED_ENUM"            # string offset=976
.Linfo_string71:
	.asciz	"malloc"                        # string offset=995
.Linfo_string72:
	.asciz	"lzma_next_end"                 # string offset=1002
.Linfo_string73:
	.asciz	"allocator"                     # string offset=1016
.Linfo_string74:
	.asciz	"lzma_free"                     # string offset=1026
.Linfo_string75:
	.asciz	"ptr"                           # string offset=1036
.Linfo_string76:
	.asciz	"lzma_alloc"                    # string offset=1040
.Linfo_string77:
	.asciz	"size"                          # string offset=1051
.Linfo_string78:
	.asciz	"lzma_version_number"           # string offset=1056
.Linfo_string79:
	.asciz	"__uint32_t"                    # string offset=1076
.Linfo_string80:
	.asciz	"uint32_t"                      # string offset=1087
.Linfo_string81:
	.asciz	"lzma_version_string"           # string offset=1096
.Linfo_string82:
	.asciz	"lzma_bufcpy"                   # string offset=1116
.Linfo_string83:
	.asciz	"lzma_next_filter_init"         # string offset=1128
.Linfo_string84:
	.asciz	"lzma_next_filter_update"       # string offset=1150
.Linfo_string85:
	.asciz	"lzma_strm_init"                # string offset=1174
.Linfo_string86:
	.asciz	"lzma_code"                     # string offset=1189
.Linfo_string87:
	.asciz	"lzma_end"                      # string offset=1199
.Linfo_string88:
	.asciz	"lzma_get_check"                # string offset=1208
.Linfo_string89:
	.asciz	"lzma_memusage"                 # string offset=1223
.Linfo_string90:
	.asciz	"lzma_memlimit_get"             # string offset=1237
.Linfo_string91:
	.asciz	"lzma_memlimit_set"             # string offset=1255
.Linfo_string92:
	.asciz	"in"                            # string offset=1273
.Linfo_string93:
	.asciz	"in_pos"                        # string offset=1276
.Linfo_string94:
	.asciz	"in_size"                       # string offset=1283
.Linfo_string95:
	.asciz	"out"                           # string offset=1291
.Linfo_string96:
	.asciz	"out_pos"                       # string offset=1295
.Linfo_string97:
	.asciz	"out_size"                      # string offset=1303
.Linfo_string98:
	.asciz	"in_avail"                      # string offset=1312
.Linfo_string99:
	.asciz	"out_avail"                     # string offset=1321
.Linfo_string100:
	.asciz	"copy_size"                     # string offset=1331
.Linfo_string101:
	.asciz	"filters"                       # string offset=1341
.Linfo_string102:
	.asciz	"lzma_init_function"            # string offset=1349
.Linfo_string103:
	.asciz	"lzma_filter_info_s"            # string offset=1368
.Linfo_string104:
	.asciz	"lzma_filter_info"              # string offset=1387
.Linfo_string105:
	.asciz	"reversed_filters"              # string offset=1404
.Linfo_string106:
	.asciz	"strm"                          # string offset=1421
.Linfo_string107:
	.asciz	"next_in"                       # string offset=1426
.Linfo_string108:
	.asciz	"total_in"                      # string offset=1434
.Linfo_string109:
	.asciz	"next_out"                      # string offset=1443
.Linfo_string110:
	.asciz	"avail_out"                     # string offset=1452
.Linfo_string111:
	.asciz	"total_out"                     # string offset=1462
.Linfo_string112:
	.asciz	"internal"                      # string offset=1472
.Linfo_string113:
	.asciz	"lzma_internal"                 # string offset=1481
.Linfo_string114:
	.asciz	"reserved_ptr1"                 # string offset=1495
.Linfo_string115:
	.asciz	"reserved_ptr2"                 # string offset=1509
.Linfo_string116:
	.asciz	"reserved_ptr3"                 # string offset=1523
.Linfo_string117:
	.asciz	"reserved_ptr4"                 # string offset=1537
.Linfo_string118:
	.asciz	"reserved_int1"                 # string offset=1551
.Linfo_string119:
	.asciz	"reserved_int2"                 # string offset=1565
.Linfo_string120:
	.asciz	"reserved_int3"                 # string offset=1579
.Linfo_string121:
	.asciz	"reserved_int4"                 # string offset=1593
.Linfo_string122:
	.asciz	"reserved_enum1"                # string offset=1607
.Linfo_string123:
	.asciz	"lzma_reserved_enum"            # string offset=1622
.Linfo_string124:
	.asciz	"reserved_enum2"                # string offset=1641
.Linfo_string125:
	.asciz	"lzma_stream"                   # string offset=1656
.Linfo_string126:
	.asciz	"action"                        # string offset=1668
.Linfo_string127:
	.asciz	"ret"                           # string offset=1675
.Linfo_string128:
	.asciz	"memusage"                      # string offset=1679
.Linfo_string129:
	.asciz	"old_memlimit"                  # string offset=1688
.Linfo_string130:
	.asciz	"new_memlimit"                  # string offset=1701
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.L.str
	.quad	.Lfunc_begin0
	.quad	.Lfunc_begin1
	.quad	.Lfunc_begin2
	.quad	.Ltmp7
	.quad	.Ltmp9
	.quad	.Lfunc_begin3
	.quad	.Ltmp11
	.quad	.Ltmp13
	.quad	.Ltmp15
	.quad	.Lfunc_begin4
	.quad	.Lfunc_begin5
	.quad	.Ltmp31
	.quad	.Ltmp36
	.quad	.Ltmp43
	.quad	.Ltmp46
	.quad	.Ltmp52
	.quad	.Lfunc_begin6
	.quad	.Ltmp63
	.quad	.Ltmp62
	.quad	.Ltmp69
	.quad	.Ltmp71
	.quad	.Lfunc_begin7
	.quad	.Ltmp83
	.quad	.Lfunc_begin8
	.quad	.Ltmp96
	.quad	.Ltmp103
	.quad	.Lfunc_begin9
	.quad	.Ltmp145
	.quad	.Lfunc_begin10
	.quad	.Ltmp166
	.quad	.Ltmp173
	.quad	.Ltmp183
	.quad	.Ltmp172
	.quad	.Ltmp179
	.quad	.Ltmp181
	.quad	.Ltmp188
	.quad	.Ltmp190
	.quad	.Lfunc_begin11
	.quad	.Ltmp197
	.quad	.Lfunc_begin12
	.quad	.Ltmp204
	.quad	.Lfunc_begin13
	.quad	.Ltmp214
	.quad	.Lfunc_begin14
	.quad	.Ltmp229
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
