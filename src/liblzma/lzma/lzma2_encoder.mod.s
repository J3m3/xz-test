	.text
	.file	"lzma2_encoder.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/lzma/lzma2_encoder.c" md5 0x24a99a9eab13c31bc3d49edc2de38059
	.file	1 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.file	2 "liblzma/api/lzma" "check.h" md5 0xb07c3297e2bcc14bb477793d08325ee3
	.file	3 "liblzma/api/lzma" "lzma.h" md5 0xc59c540efa0aff44f03d71331089fff8
	.file	4 "liblzma/common" "common.h" md5 0xb445e74fc76042ed64f7e1908fcc1934
	.file	5 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	6 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	7 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.globl	lzma_lzma2_encoder_init         # -- Begin function lzma_lzma2_encoder_init
	.p2align	4, 0x90
	.type	lzma_lzma2_encoder_init,@function
lzma_lzma2_encoder_init:                # @lzma_lzma2_encoder_init
.Lfunc_begin0:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_lzma2_encoder_init:next <- $rdi
	#DEBUG_VALUE: lzma_lzma2_encoder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_lzma2_encoder_init:filters <- $rdx
	.loc	0 360 9 prologue_end            # liblzma/lzma/lzma2_encoder.c:360:9
	movl	$lzma2_encoder_init, %ecx
.Ltmp0:
	jmp	lzma_lz_encoder_init@PLT        # TAILCALL
.Ltmp1:
.Lfunc_end0:
	.size	lzma_lzma2_encoder_init, .Lfunc_end0-lzma_lzma2_encoder_init
	.cfi_endproc
	.file	8 "liblzma/lz" "lz_encoder.h" md5 0x780f78e6e21a3ca52f57df68bfdc6f53
	.file	9 "liblzma/api/lzma" "vli.h" md5 0xe1aa51527ce08aa260777d4fb351a0b7
	.file	10 "/usr/include" "stdint.h" md5 0xa48e64edacc5b19f56c99745232c963c
	.file	11 "liblzma/api/lzma" "filter.h" md5 0x5eb86d86854a7619ed1d1ac1b57b2484
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lzma2_encoder_init
	.type	lzma2_encoder_init,@function
lzma2_encoder_init:                     # @lzma2_encoder_init
.Lfunc_begin1:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma2_encoder_init:lz <- $rdi
	#DEBUG_VALUE: lzma2_encoder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma2_encoder_init:options <- $rdx
	#DEBUG_VALUE: lzma2_encoder_init:lz_options <- $rcx
	.loc	0 315 14 prologue_end           # liblzma/lzma/lzma2_encoder.c:315:14
	testq	%rdx, %rdx
.Ltmp2:
	.loc	0 315 6 is_stmt 0               # liblzma/lzma/lzma2_encoder.c:315:6
	je	.LBB1_1
.Ltmp3:
# %bb.3:                                # %if.end
	#DEBUG_VALUE: lzma2_encoder_init:lz <- $rdi
	#DEBUG_VALUE: lzma2_encoder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma2_encoder_init:options <- $rdx
	#DEBUG_VALUE: lzma2_encoder_init:lz_options <- $rcx
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
	movq	%rcx, %rbx
.Ltmp4:
	.loc	0 318 10 is_stmt 1              # liblzma/lzma/lzma2_encoder.c:318:10
	movq	(%rdi), %rax
	.loc	0 318 16 is_stmt 0              # liblzma/lzma/lzma2_encoder.c:318:16
	testq	%rax, %rax
.Ltmp5:
	.loc	0 318 6                         # liblzma/lzma/lzma2_encoder.c:318:6
	jne	.LBB1_7
.Ltmp6:
# %bb.4:                                # %if.then2
	#DEBUG_VALUE: lzma2_encoder_init:lz <- $rdi
	#DEBUG_VALUE: lzma2_encoder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma2_encoder_init:options <- $rdx
	#DEBUG_VALUE: lzma2_encoder_init:lz_options <- $rbx
	.loc	0 0 6                           # liblzma/lzma/lzma2_encoder.c:0:6
	movq	%rdx, %r14
.Ltmp7:
	#DEBUG_VALUE: lzma2_encoder_init:options <- $r14
	movq	%rdi, %r12
.Ltmp8:
	#DEBUG_VALUE: lzma2_encoder_init:lz <- $r12
	.loc	0 319 15 is_stmt 1              # liblzma/lzma/lzma2_encoder.c:319:15
	movl	$65704, %edi                    # imm = 0x100A8
	movq	%rsi, %r15
	callq	lzma_alloc@PLT
.Ltmp9:
	#DEBUG_VALUE: lzma2_encoder_init:allocator <- $r15
	.loc	0 319 13 is_stmt 0              # liblzma/lzma/lzma2_encoder.c:319:13
	movq	%rax, (%r12)
.Ltmp10:
	.loc	0 320 17 is_stmt 1              # liblzma/lzma/lzma2_encoder.c:320:17
	testq	%rax, %rax
.Ltmp11:
	.loc	0 320 7 is_stmt 0               # liblzma/lzma/lzma2_encoder.c:320:7
	je	.LBB1_5
.Ltmp12:
# %bb.6:                                # %if.end7
	#DEBUG_VALUE: lzma2_encoder_init:lz <- $r12
	#DEBUG_VALUE: lzma2_encoder_init:allocator <- $r15
	#DEBUG_VALUE: lzma2_encoder_init:options <- $r14
	#DEBUG_VALUE: lzma2_encoder_init:lz_options <- $rbx
	.loc	0 0 7                           # liblzma/lzma/lzma2_encoder.c:0:7
	movq	%r12, %rdi
	.loc	0 323 12 is_stmt 1              # liblzma/lzma/lzma2_encoder.c:323:12
	movq	$lzma2_encode, 8(%r12)
	.loc	0 324 11                        # liblzma/lzma/lzma2_encoder.c:324:11
	movq	$lzma2_encoder_end, 16(%r12)
	.loc	0 325 22                        # liblzma/lzma/lzma2_encoder.c:325:22
	movq	$lzma2_encoder_options_update, 24(%r12)
	.loc	0 327 43                        # liblzma/lzma/lzma2_encoder.c:327:43
	movq	$0, 8(%rax)
.Ltmp13:
	.loc	0 330 29                        # liblzma/lzma/lzma2_encoder.c:330:29
	movq	(%r12), %rax
	movq	%r15, %rsi
	movq	%r14, %rdx
.Ltmp14:
.LBB1_7:                                # %if.end9
	#DEBUG_VALUE: lzma2_encoder_init:lz <- $rdi
	#DEBUG_VALUE: lzma2_encoder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma2_encoder_init:options <- $rdx
	#DEBUG_VALUE: lzma2_encoder_init:lz_options <- $rbx
	.loc	0 330 47 is_stmt 0              # liblzma/lzma/lzma2_encoder.c:330:47
	movups	96(%rdx), %xmm0
	movups	%xmm0, 112(%rax)
	movups	80(%rdx), %xmm0
	movups	%xmm0, 96(%rax)
	movups	64(%rdx), %xmm0
	movups	%xmm0, 80(%rax)
	movups	(%rdx), %xmm0
	movups	16(%rdx), %xmm1
	movups	32(%rdx), %xmm2
	movups	48(%rdx), %xmm3
	movups	%xmm3, 64(%rax)
	movups	%xmm2, 48(%rax)
	movups	%xmm1, 32(%rax)
	movups	%xmm0, 16(%rax)
	.loc	0 332 29 is_stmt 1              # liblzma/lzma/lzma2_encoder.c:332:29
	movq	(%rdi), %rax
	.loc	0 332 46 is_stmt 0              # liblzma/lzma/lzma2_encoder.c:332:46
	movl	$0, (%rax)
	.loc	0 333 29 is_stmt 1              # liblzma/lzma/lzma2_encoder.c:333:29
	movq	(%rdi), %rax
	.loc	0 333 53 is_stmt 0              # liblzma/lzma/lzma2_encoder.c:333:53
	movb	$1, 128(%rax)
	.loc	0 334 29 is_stmt 1              # liblzma/lzma/lzma2_encoder.c:334:29
	movq	(%rdi), %rax
	.loc	0 334 54 is_stmt 0              # liblzma/lzma/lzma2_encoder.c:334:54
	movb	$0, 129(%rax)
	.loc	0 336 33 is_stmt 1              # liblzma/lzma/lzma2_encoder.c:336:33
	movq	(%rdi), %rax
	.loc	0 336 61 is_stmt 0              # liblzma/lzma/lzma2_encoder.c:336:61
	cmpq	$0, 24(%rax)
	.loc	0 337 4 is_stmt 1               # liblzma/lzma/lzma2_encoder.c:337:4
	je	.LBB1_8
.Ltmp15:
# %bb.9:                                # %lor.rhs
	#DEBUG_VALUE: lzma2_encoder_init:lz <- $rdi
	#DEBUG_VALUE: lzma2_encoder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma2_encoder_init:options <- $rdx
	#DEBUG_VALUE: lzma2_encoder_init:lz_options <- $rbx
	.loc	0 337 67 is_stmt 0              # liblzma/lzma/lzma2_encoder.c:337:67
	cmpl	$0, 32(%rax)
	sete	%cl
	jmp	.LBB1_10
.Ltmp16:
.LBB1_1:
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r14
	.cfi_restore %r15
	#DEBUG_VALUE: lzma2_encoder_init:lz <- $rdi
	#DEBUG_VALUE: lzma2_encoder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma2_encoder_init:options <- $rdx
	#DEBUG_VALUE: lzma2_encoder_init:lz_options <- $rcx
	.loc	0 0 67                          # liblzma/lzma/lzma2_encoder.c:0:67
	movl	$11, %eax
	.loc	0 353 1 is_stmt 1               # liblzma/lzma/lzma2_encoder.c:353:1
	retq
.Ltmp17:
.LBB1_8:
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	#DEBUG_VALUE: lzma2_encoder_init:lz <- $rdi
	#DEBUG_VALUE: lzma2_encoder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma2_encoder_init:options <- $rdx
	#DEBUG_VALUE: lzma2_encoder_init:lz_options <- $rbx
	.loc	0 0 1 is_stmt 0                 # liblzma/lzma/lzma2_encoder.c:0:1
	movb	$1, %cl
.Ltmp18:
.LBB1_10:                               # %lor.end
	#DEBUG_VALUE: lzma2_encoder_init:lz <- $rdi
	#DEBUG_VALUE: lzma2_encoder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma2_encoder_init:options <- $rdx
	#DEBUG_VALUE: lzma2_encoder_init:lz_options <- $rbx
	.loc	0 336 4 is_stmt 1               # liblzma/lzma/lzma2_encoder.c:336:4
	movb	%cl, 130(%rax)
.Ltmp19:
	.loc	0 340 2                         # liblzma/lzma/lzma2_encoder.c:340:2
	movq	(%rdi), %rdx
.Ltmp20:
	#DEBUG_VALUE: lzma2_encoder_init:options <- [DW_OP_LLVM_entry_value 1] $rdx
	leaq	8(%rdx), %rdi
.Ltmp21:
	#DEBUG_VALUE: lzma2_encoder_init:lz <- [DW_OP_LLVM_entry_value 1] $rdi
	addq	$16, %rdx
	movq	%rbx, %rcx
	callq	lzma_lzma_encoder_create@PLT
.Ltmp22:
	#DEBUG_VALUE: lzma2_encoder_init:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 340 2 is_stmt 0               # liblzma/lzma/lzma2_encoder.c:340:2
	testl	%eax, %eax
	jne	.LBB1_13
.Ltmp23:
# %bb.11:                               # %do.end
	#DEBUG_VALUE: lzma2_encoder_init:lz <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma2_encoder_init:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma2_encoder_init:options <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma2_encoder_init:lz_options <- $rbx
	.loc	0 348 44 is_stmt 1              # liblzma/lzma/lzma2_encoder.c:348:44
	movq	8(%rbx), %rcx
	movq	(%rbx), %rdx
	.loc	0 348 30 is_stmt 0              # liblzma/lzma/lzma2_encoder.c:348:30
	addq	%rcx, %rdx
	xorl	%eax, %eax
	.loc	0 348 54                        # liblzma/lzma/lzma2_encoder.c:348:54
	cmpq	$65535, %rdx                    # imm = 0xFFFF
.Ltmp24:
	.loc	0 348 6                         # liblzma/lzma/lzma2_encoder.c:348:6
	ja	.LBB1_13
.Ltmp25:
# %bb.12:                               # %if.then30
	#DEBUG_VALUE: lzma2_encoder_init:lz <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma2_encoder_init:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma2_encoder_init:options <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma2_encoder_init:lz_options <- $rbx
	.loc	0 0 6                           # liblzma/lzma/lzma2_encoder.c:0:6
	movl	$65536, %edx                    # imm = 0x10000
.Ltmp26:
	.loc	0 350 23 is_stmt 1              # liblzma/lzma/lzma2_encoder.c:350:23
	subq	%rcx, %rdx
	.loc	0 350 5 is_stmt 0               # liblzma/lzma/lzma2_encoder.c:350:5
	movq	%rdx, (%rbx)
	jmp	.LBB1_13
.Ltmp27:
.LBB1_5:
	#DEBUG_VALUE: lzma2_encoder_init:lz <- $r12
	#DEBUG_VALUE: lzma2_encoder_init:allocator <- $r15
	#DEBUG_VALUE: lzma2_encoder_init:options <- $r14
	#DEBUG_VALUE: lzma2_encoder_init:lz_options <- $rbx
	.loc	0 0 5                           # liblzma/lzma/lzma2_encoder.c:0:5
	movl	$5, %eax
.Ltmp28:
.LBB1_13:
	#DEBUG_VALUE: lzma2_encoder_init:lz <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma2_encoder_init:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma2_encoder_init:options <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma2_encoder_init:lz_options <- $rbx
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
.Ltmp29:
	#DEBUG_VALUE: lzma2_encoder_init:lz_options <- [DW_OP_LLVM_entry_value 1] $rcx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r14
	.cfi_restore %r15
	.loc	0 353 1 is_stmt 1               # liblzma/lzma/lzma2_encoder.c:353:1
	retq
.Ltmp30:
.Lfunc_end1:
	.size	lzma2_encoder_init, .Lfunc_end1-lzma2_encoder_init
	.cfi_endproc
	.file	12 "liblzma/lzma" "lzma_encoder.h" md5 0xf040cedafb3694586d90cdd6536f6965
                                        # -- End function
	.globl	lzma_lzma2_encoder_memusage     # -- Begin function lzma_lzma2_encoder_memusage
	.p2align	4, 0x90
	.type	lzma_lzma2_encoder_memusage,@function
lzma_lzma2_encoder_memusage:            # @lzma_lzma2_encoder_memusage
.Lfunc_begin2:
	.loc	0 367 0                         # liblzma/lzma/lzma2_encoder.c:367:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_lzma2_encoder_memusage:options <- $rdi
	pushq	%rax
	.cfi_def_cfa_offset 16
.Ltmp31:
	.loc	0 368 28 prologue_end           # liblzma/lzma/lzma2_encoder.c:368:28
	callq	lzma_lzma_encoder_memusage@PLT
.Ltmp32:
	#DEBUG_VALUE: lzma_lzma2_encoder_memusage:options <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_lzma2_encoder_memusage:lzma_mem <- $rax
	.loc	0 369 6                         # liblzma/lzma/lzma2_encoder.c:369:6
	leaq	65704(%rax), %rcx
.Ltmp33:
	.loc	0 369 15 is_stmt 0              # liblzma/lzma/lzma2_encoder.c:369:15
	cmpq	$-1, %rax
.Ltmp34:
	.loc	0 369 6                         # liblzma/lzma/lzma2_encoder.c:369:6
	cmovneq	%rcx, %rax
.Ltmp35:
	.loc	0 373 1 epilogue_begin is_stmt 1 # liblzma/lzma/lzma2_encoder.c:373:1
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Ltmp36:
.Lfunc_end2:
	.size	lzma_lzma2_encoder_memusage, .Lfunc_end2-lzma_lzma2_encoder_memusage
	.cfi_endproc
                                        # -- End function
	.globl	lzma_lzma2_props_encode         # -- Begin function lzma_lzma2_props_encode
	.p2align	4, 0x90
	.type	lzma_lzma2_props_encode,@function
lzma_lzma2_props_encode:                # @lzma_lzma2_props_encode
.Lfunc_begin3:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_lzma2_props_encode:options <- $rdi
	#DEBUG_VALUE: lzma_lzma2_props_encode:out <- $rsi
	#DEBUG_VALUE: lzma_lzma2_props_encode:opt <- $rdi
	.loc	0 380 15 prologue_end           # liblzma/lzma/lzma2_encoder.c:380:15
	movl	(%rdi), %eax
	leal	-1(%rax), %ecx
	cmpl	$4097, %eax                     # imm = 0x1001
	movl	$4095, %eax                     # imm = 0xFFF
	cmovael	%ecx, %eax
.Ltmp37:
	#DEBUG_VALUE: lzma_lzma2_props_encode:d <- $eax
	.loc	0 385 9                         # liblzma/lzma/lzma2_encoder.c:385:9
	movl	%eax, %ecx
	shrl	$2, %ecx
	.loc	0 385 4 is_stmt 0               # liblzma/lzma/lzma2_encoder.c:385:4
	orl	%eax, %ecx
.Ltmp38:
	#DEBUG_VALUE: lzma_lzma2_props_encode:d <- $ecx
	.loc	0 386 9 is_stmt 1               # liblzma/lzma/lzma2_encoder.c:386:9
	movl	%ecx, %eax
	shrl	$3, %eax
	.loc	0 386 4 is_stmt 0               # liblzma/lzma/lzma2_encoder.c:386:4
	orl	%ecx, %eax
.Ltmp39:
	#DEBUG_VALUE: lzma_lzma2_props_encode:d <- $eax
	.loc	0 387 9 is_stmt 1               # liblzma/lzma/lzma2_encoder.c:387:9
	movl	%eax, %ecx
	shrl	$4, %ecx
	.loc	0 387 4 is_stmt 0               # liblzma/lzma/lzma2_encoder.c:387:4
	orl	%eax, %ecx
.Ltmp40:
	#DEBUG_VALUE: lzma_lzma2_props_encode:d <- $ecx
	.loc	0 388 9 is_stmt 1               # liblzma/lzma/lzma2_encoder.c:388:9
	movl	%ecx, %eax
	shrl	$8, %eax
	.loc	0 388 4 is_stmt 0               # liblzma/lzma/lzma2_encoder.c:388:4
	orl	%ecx, %eax
.Ltmp41:
	#DEBUG_VALUE: lzma_lzma2_props_encode:d <- $eax
	.loc	0 389 9 is_stmt 1               # liblzma/lzma/lzma2_encoder.c:389:9
	movl	%eax, %ecx
	shrl	$16, %ecx
	.loc	0 389 4 is_stmt 0               # liblzma/lzma/lzma2_encoder.c:389:4
	orl	%eax, %ecx
.Ltmp42:
	#DEBUG_VALUE: lzma_lzma2_props_encode:d <- $ecx
	.loc	0 392 8 is_stmt 1               # liblzma/lzma/lzma2_encoder.c:392:8
	cmpl	$-1, %ecx
.Ltmp43:
	.loc	0 392 6 is_stmt 0               # liblzma/lzma/lzma2_encoder.c:392:6
	je	.LBB3_1
.Ltmp44:
# %bb.3:                                # %if.else
	#DEBUG_VALUE: lzma_lzma2_props_encode:options <- $rdi
	#DEBUG_VALUE: lzma_lzma2_props_encode:out <- $rsi
	#DEBUG_VALUE: lzma_lzma2_props_encode:opt <- $rdi
	#DEBUG_VALUE: lzma_lzma2_props_encode:d <- $ecx
	.loc	0 0 6                           # liblzma/lzma/lzma2_encoder.c:0:6
	movl	%ecx, %eax
.Ltmp45:
	.loc	0 395 27 is_stmt 1              # liblzma/lzma/lzma2_encoder.c:395:27
	incq	%rax
.Ltmp46:
	#DEBUG_VALUE: get_pos_slot:pos <- $eax
	.file	13 "liblzma/lzma" "fastpos.h" md5 0xcbaa9cd9040be4a8dee21ea4da47c8df
	.loc	13 112 10                       # liblzma/lzma/fastpos.h:112:10
	cmpl	$8190, %ecx                     # imm = 0x1FFE
.Ltmp47:
	.loc	13 112 6 is_stmt 0              # liblzma/lzma/fastpos.h:112:6
	ja	.LBB3_5
.Ltmp48:
# %bb.4:                                # %if.then.i
	#DEBUG_VALUE: lzma_lzma2_props_encode:options <- $rdi
	#DEBUG_VALUE: lzma_lzma2_props_encode:out <- $rsi
	#DEBUG_VALUE: lzma_lzma2_props_encode:opt <- $rdi
	#DEBUG_VALUE: lzma_lzma2_props_encode:d <- $ecx
	#DEBUG_VALUE: get_pos_slot:pos <- $eax
	.loc	13 113 10 is_stmt 1             # liblzma/lzma/fastpos.h:113:10
	movq	lzma_fastpos@GOTPCREL(%rip), %rcx
.Ltmp49:
	movzbl	(%rcx,%rax), %eax
.Ltmp50:
	.loc	0 395 12                        # liblzma/lzma/lzma2_encoder.c:395:12
	addb	$-24, %al
	.loc	0 0 0 is_stmt 0                 # liblzma/lzma/lzma2_encoder.c:0:0
	movb	%al, (%rsi)
.Ltmp51:
	.loc	0 397 2 is_stmt 1               # liblzma/lzma/lzma2_encoder.c:397:2
	xorl	%eax, %eax
	retq
.Ltmp52:
.LBB3_1:
	#DEBUG_VALUE: lzma_lzma2_props_encode:options <- $rdi
	#DEBUG_VALUE: lzma_lzma2_props_encode:out <- $rsi
	#DEBUG_VALUE: lzma_lzma2_props_encode:opt <- $rdi
	#DEBUG_VALUE: lzma_lzma2_props_encode:d <- $ecx
	.loc	0 0 2 is_stmt 0                 # liblzma/lzma/lzma2_encoder.c:0:2
	movb	$40, %al
.Ltmp53:
	movb	%al, (%rsi)
.Ltmp54:
	.loc	0 397 2                         # liblzma/lzma/lzma2_encoder.c:397:2
	xorl	%eax, %eax
	retq
.Ltmp55:
.LBB3_5:                                # %if.end.i
	#DEBUG_VALUE: lzma_lzma2_props_encode:options <- $rdi
	#DEBUG_VALUE: lzma_lzma2_props_encode:out <- $rsi
	#DEBUG_VALUE: lzma_lzma2_props_encode:opt <- $rdi
	#DEBUG_VALUE: lzma_lzma2_props_encode:d <- $ecx
	#DEBUG_VALUE: get_pos_slot:pos <- $eax
	.loc	13 115 10 is_stmt 1             # liblzma/lzma/fastpos.h:115:10
	cmpl	$33554430, %ecx                 # imm = 0x1FFFFFE
.Ltmp56:
	.loc	13 115 6 is_stmt 0              # liblzma/lzma/fastpos.h:115:6
	ja	.LBB3_7
.Ltmp57:
# %bb.6:                                # %if.then3.i
	#DEBUG_VALUE: lzma_lzma2_props_encode:options <- $rdi
	#DEBUG_VALUE: lzma_lzma2_props_encode:out <- $rsi
	#DEBUG_VALUE: lzma_lzma2_props_encode:opt <- $rdi
	#DEBUG_VALUE: lzma_lzma2_props_encode:d <- $ecx
	#DEBUG_VALUE: get_pos_slot:pos <- $eax
	.loc	13 116 10 is_stmt 1             # liblzma/lzma/fastpos.h:116:10
	shrl	$12, %eax
.Ltmp58:
	movq	lzma_fastpos@GOTPCREL(%rip), %rcx
.Ltmp59:
	movzbl	(%rcx,%rax), %eax
	addb	$24, %al
.Ltmp60:
	.loc	0 395 12                        # liblzma/lzma/lzma2_encoder.c:395:12
	addb	$-24, %al
	.loc	0 0 0 is_stmt 0                 # liblzma/lzma/lzma2_encoder.c:0:0
	movb	%al, (%rsi)
.Ltmp61:
	.loc	0 397 2 is_stmt 1               # liblzma/lzma/lzma2_encoder.c:397:2
	xorl	%eax, %eax
	retq
.Ltmp62:
.LBB3_7:                                # %if.end7.i
	#DEBUG_VALUE: lzma_lzma2_props_encode:options <- $rdi
	#DEBUG_VALUE: lzma_lzma2_props_encode:out <- $rsi
	#DEBUG_VALUE: lzma_lzma2_props_encode:opt <- $rdi
	#DEBUG_VALUE: lzma_lzma2_props_encode:d <- $ecx
	#DEBUG_VALUE: get_pos_slot:pos <- $eax
	.loc	13 118 9                        # liblzma/lzma/fastpos.h:118:9
	shrl	$24, %eax
.Ltmp63:
	movq	lzma_fastpos@GOTPCREL(%rip), %rcx
.Ltmp64:
	movzbl	(%rcx,%rax), %eax
	addb	$48, %al
.Ltmp65:
	.loc	0 395 12                        # liblzma/lzma/lzma2_encoder.c:395:12
	addb	$-24, %al
	.loc	0 0 0 is_stmt 0                 # liblzma/lzma/lzma2_encoder.c:0:0
	movb	%al, (%rsi)
.Ltmp66:
	.loc	0 397 2 is_stmt 1               # liblzma/lzma/lzma2_encoder.c:397:2
	xorl	%eax, %eax
	retq
.Ltmp67:
.Lfunc_end3:
	.size	lzma_lzma2_props_encode, .Lfunc_end3-lzma_lzma2_props_encode
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function lzma2_encode
.LCPI4_0:
	.zero	16
	.text
	.p2align	4, 0x90
	.type	lzma2_encode,@function
lzma2_encode:                           # @lzma2_encode
.Lfunc_begin4:
	.loc	0 141 0                         # liblzma/lzma/lzma2_encoder.c:141:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma2_encode:pcoder <- $rdi
	#DEBUG_VALUE: lzma2_encode:mf <- $rsi
	#DEBUG_VALUE: lzma2_encode:out <- $rdx
	#DEBUG_VALUE: lzma2_encode:out_pos <- $rcx
	#DEBUG_VALUE: lzma2_encode:out_size <- $r8
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
.Ltmp68:
	#DEBUG_VALUE: lzma2_encode:coder <- $rdi
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
.Ltmp69:
	#DEBUG_VALUE: lzma2_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	movq	%rsi, 16(%rsp)                  # 8-byte Spill
.Ltmp70:
	#DEBUG_VALUE: lzma2_encode:mf <- [DW_OP_plus_uconst 16] [$rsp+0]
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
.Ltmp71:
	#DEBUG_VALUE: lzma2_encode:out_pos <- [DW_OP_plus_uconst 8] [$rsp+0]
	.loc	0 143 9 prologue_end            # liblzma/lzma/lzma2_encoder.c:143:9
	movq	(%rcx), %rbx
	.loc	0 143 18 is_stmt 0              # liblzma/lzma/lzma2_encoder.c:143:18
	cmpq	%r8, %rbx
	.loc	0 143 2                         # liblzma/lzma/lzma2_encoder.c:143:2
	jae	.LBB4_35
.Ltmp72:
# %bb.1:                                # %while.body.lr.ph
	#DEBUG_VALUE: lzma2_encode:pcoder <- $rdi
	#DEBUG_VALUE: lzma2_encode:mf <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_pos <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_size <- $r8
	#DEBUG_VALUE: lzma2_encode:coder <- $rdi
	.loc	0 0 2                           # liblzma/lzma/lzma2_encoder.c:0:2
	movq	%r8, %r15
	movq	%rdi, %rbp
	leaq	160(%rdi), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	leaq	152(%rdi), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	leaq	136(%rdi), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	leaq	16(%rdi), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	leaq	144(%rdi), %r14
	leaq	166(%rdi), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	.loc	0 144 17 is_stmt 1              # liblzma/lzma/lzma2_encoder.c:144:17
	movl	(%rdi), %r13d
	movq	%r8, 48(%rsp)                   # 8-byte Spill
.Ltmp73:
	#DEBUG_VALUE: lzma2_encode:out_size <- [DW_OP_plus_uconst 48] [$rsp+0]
	.loc	0 0 17 is_stmt 0                # liblzma/lzma/lzma2_encoder.c:0:17
	movq	%rdi, 80(%rsp)                  # 8-byte Spill
.Ltmp74:
	#DEBUG_VALUE: lzma2_encode:coder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:pcoder <- [DW_OP_plus_uconst 80] [$rsp+0]
	movq	%r14, 64(%rsp)                  # 8-byte Spill
	jmp	.LBB4_2
.Ltmp75:
.LBB4_27:                               # %cleanup54
                                        #   in Loop: Header=BB4_2 Depth=1
	#DEBUG_VALUE: lzma2_encode:pcoder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:mf <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_pos <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_size <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:coder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: ret <- $eax
	.loc	0 209 29 is_stmt 1              # liblzma/lzma/lzma2_encoder.c:209:29
	addq	%rcx, %rbx
	movq	%rbx, 136(%rbp)
	movq	16(%rsp), %rax                  # 8-byte Reload
.Ltmp76:
	.loc	0 212 19                        # liblzma/lzma/lzma2_encoder.c:212:19
	movl	$0, 28(%rax)
.Ltmp77:
	#DEBUG_VALUE: lzma2_header_uncompressed:pcoder <- [DW_OP_plus_uconst 80, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma2_header_uncompressed:coder <- [DW_OP_plus_uconst 80, DW_OP_deref] $rsp
	.loc	0 120 6                         # liblzma/lzma/lzma2_encoder.c:120:6
	movb	$2, %al
	subb	130(%rbp), %al
.Ltmp78:
	.loc	0 0 0 is_stmt 0                 # liblzma/lzma/lzma2_encoder.c:0:0
	movb	%al, 160(%rbp)
.Ltmp79:
	.loc	0 128 44 is_stmt 1              # liblzma/lzma/lzma2_encoder.c:128:44
	leal	-1(%rbx), %eax
	.loc	0 128 16 is_stmt 0              # liblzma/lzma/lzma2_encoder.c:128:16
	movb	%ah, 161(%rbp)
	.loc	0 129 18 is_stmt 1              # liblzma/lzma/lzma2_encoder.c:129:18
	decb	%bl
	.loc	0 129 16 is_stmt 0              # liblzma/lzma/lzma2_encoder.c:129:16
	movb	%bl, 162(%rbp)
	.loc	0 132 17 is_stmt 1              # liblzma/lzma/lzma2_encoder.c:132:17
	movq	$0, 152(%rbp)
.Ltmp80:
	.loc	0 214 28                        # liblzma/lzma/lzma2_encoder.c:214:28
	movw	$1, 129(%rbp)
	movl	$3, %r13d
.Ltmp81:
	.p2align	4, 0x90
.LBB4_33:                               # %sw.epilog.sink.split
                                        #   in Loop: Header=BB4_2 Depth=1
	#DEBUG_VALUE: lzma2_encode:pcoder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:mf <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_pos <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_size <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:coder <- [DW_OP_plus_uconst 80] [$rsp+0]
	.loc	0 0 0 is_stmt 0                 # liblzma/lzma/lzma2_encoder.c:0:0
	movl	%r13d, (%rbp)
.Ltmp82:
.LBB4_34:                               # %sw.epilog
                                        #   in Loop: Header=BB4_2 Depth=1
	#DEBUG_VALUE: lzma2_encode:pcoder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:mf <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_pos <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_size <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:coder <- [DW_OP_plus_uconst 80] [$rsp+0]
	movq	8(%rsp), %rax                   # 8-byte Reload
	.loc	0 143 9 is_stmt 1               # liblzma/lzma/lzma2_encoder.c:143:9
	movq	(%rax), %rbx
	.loc	0 143 18 is_stmt 0              # liblzma/lzma/lzma2_encoder.c:143:18
	cmpq	%r15, %rbx
	.loc	0 143 2                         # liblzma/lzma/lzma2_encoder.c:143:2
	jae	.LBB4_35
.Ltmp83:
.LBB4_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma2_encode:pcoder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:mf <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_pos <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_size <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:coder <- [DW_OP_plus_uconst 80] [$rsp+0]
	.loc	0 144 2 is_stmt 1               # liblzma/lzma/lzma2_encoder.c:144:2
	cmpl	$4, %r13d
	ja	.LBB4_34
.Ltmp84:
# %bb.3:                                # %while.body
                                        #   in Loop: Header=BB4_2 Depth=1
	#DEBUG_VALUE: lzma2_encode:pcoder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:mf <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_pos <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_size <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:coder <- [DW_OP_plus_uconst 80] [$rsp+0]
	movl	%r13d, %eax
	jmpq	*.LJTI4_0(,%rax,8)
.Ltmp85:
.LBB4_6:                                # %sw.bb
                                        #   in Loop: Header=BB4_2 Depth=1
	#DEBUG_VALUE: lzma2_encode:pcoder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:mf <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_pos <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_size <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:coder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: mf_unencoded:mf <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	.loc	0 0 2 is_stmt 0                 # liblzma/lzma/lzma2_encoder.c:0:2
	movq	16(%rsp), %rcx                  # 8-byte Reload
.Ltmp86:
	.loc	8 241 13 is_stmt 1              # liblzma/lz/lz_encoder.h:241:13
	movl	36(%rcx), %eax
	.loc	8 241 23 is_stmt 0              # liblzma/lz/lz_encoder.h:241:23
	subl	24(%rcx), %eax
.Ltmp87:
	.loc	0 148 24 is_stmt 1              # liblzma/lzma/lzma2_encoder.c:148:24
	addl	28(%rcx), %eax
.Ltmp88:
	.loc	0 148 7 is_stmt 0               # liblzma/lzma/lzma2_encoder.c:148:7
	je	.LBB4_7
.Ltmp89:
# %bb.10:                               # %if.end6
                                        #   in Loop: Header=BB4_2 Depth=1
	#DEBUG_VALUE: lzma2_encode:pcoder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:mf <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_pos <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_size <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:coder <- [DW_OP_plus_uconst 80] [$rsp+0]
	.loc	0 157 7 is_stmt 1               # liblzma/lzma/lzma2_encoder.c:157:7
	cmpb	$1, 129(%rbp)
	jne	.LBB4_13
.Ltmp90:
# %bb.11:                               # %do.body
                                        #   in Loop: Header=BB4_2 Depth=1
	#DEBUG_VALUE: lzma2_encode:pcoder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:mf <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_pos <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_size <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:coder <- [DW_OP_plus_uconst 80] [$rsp+0]
	.loc	0 158 4                         # liblzma/lzma/lzma2_encoder.c:158:4
	movq	8(%rbp), %rdi
	movq	56(%rsp), %rsi                  # 8-byte Reload
	callq	lzma_lzma_encoder_reset@PLT
.Ltmp91:
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 158 4 is_stmt 0               # liblzma/lzma/lzma2_encoder.c:158:4
	testl	%eax, %eax
	jne	.LBB4_12
.Ltmp92:
.LBB4_13:                               # %if.end12
                                        #   in Loop: Header=BB4_2 Depth=1
	#DEBUG_VALUE: lzma2_encode:pcoder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:mf <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_pos <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_size <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:coder <- [DW_OP_plus_uconst 80] [$rsp+0]
	.loc	0 0 4                           # liblzma/lzma/lzma2_encoder.c:0:4
	movq	40(%rsp), %rax                  # 8-byte Reload
	.loc	0 162 26 is_stmt 1              # liblzma/lzma/lzma2_encoder.c:162:26
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	.loc	0 163 19                        # liblzma/lzma/lzma2_encoder.c:163:19
	movl	$1, (%rbp)
	xorl	%eax, %eax
	jmp	.LBB4_14
.Ltmp93:
.LBB4_4:                                #   in Loop: Header=BB4_2 Depth=1
	#DEBUG_VALUE: lzma2_encode:pcoder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:mf <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_pos <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_size <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:coder <- [DW_OP_plus_uconst 80] [$rsp+0]
	.loc	0 0 19 is_stmt 0                # liblzma/lzma/lzma2_encoder.c:0:19
	movq	8(%rsp), %r12                   # 8-byte Reload
	.loc	0 144 2 is_stmt 1               # liblzma/lzma/lzma2_encoder.c:144:2
	jmp	.LBB4_32
.Ltmp94:
.LBB4_28:                               # %while.body.sw.bb60_crit_edge
                                        #   in Loop: Header=BB4_2 Depth=1
	#DEBUG_VALUE: lzma2_encode:pcoder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:mf <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_pos <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_size <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:coder <- [DW_OP_plus_uconst 80] [$rsp+0]
	.loc	0 232 12                        # liblzma/lzma/lzma2_encoder.c:232:12
	movq	(%r14), %rdx
	movq	(%rsp), %rdi                    # 8-byte Reload
	jmp	.LBB4_29
.Ltmp95:
.LBB4_30:                               # %sw.bb72
                                        #   in Loop: Header=BB4_2 Depth=1
	#DEBUG_VALUE: lzma2_encode:pcoder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:mf <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_pos <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_size <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:coder <- [DW_OP_plus_uconst 80] [$rsp+0]
	.loc	0 242 3                         # liblzma/lzma/lzma2_encoder.c:242:3
	movl	$3, %edx
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	32(%rsp), %rbx                  # 8-byte Reload
	movq	%rbx, %rsi
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	8(%rsp), %r8                    # 8-byte Reload
	movq	%r15, %r9
	callq	lzma_bufcpy@PLT
.Ltmp96:
	.loc	0 245 22                        # liblzma/lzma/lzma2_encoder.c:245:22
	cmpq	$3, (%rbx)
.Ltmp97:
	.loc	0 245 7 is_stmt 0               # liblzma/lzma/lzma2_encoder.c:245:7
	jne	.LBB4_35
.Ltmp98:
# %bb.31:                               # %if.end81
                                        #   in Loop: Header=BB4_2 Depth=1
	#DEBUG_VALUE: lzma2_encode:pcoder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:mf <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_pos <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_size <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:coder <- [DW_OP_plus_uconst 80] [$rsp+0]
	.loc	0 248 19 is_stmt 1              # liblzma/lzma/lzma2_encoder.c:248:19
	movl	$4, (%rbp)
	movq	8(%rsp), %r12                   # 8-byte Reload
.Ltmp99:
	.loc	8 283 38                        # liblzma/lz/lz_encoder.h:283:38
	movq	(%r12), %rbx
.Ltmp100:
.LBB4_32:                               # %sw.bb83
                                        #   in Loop: Header=BB4_2 Depth=1
	#DEBUG_VALUE: lzma2_encode:pcoder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:mf <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_pos <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_size <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:coder <- [DW_OP_plus_uconst 80] [$rsp+0]
	.loc	8 0 38 is_stmt 0                # liblzma/lz/lz_encoder.h:0:38
	movq	16(%rsp), %rcx                  # 8-byte Reload
	.loc	0 255 3 is_stmt 1               # liblzma/lzma/lzma2_encoder.c:255:3
	movl	24(%rcx), %esi
.Ltmp101:
	#DEBUG_VALUE: mf_read:mf <- undef
	#DEBUG_VALUE: mf_read:out <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: mf_read:out_pos <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: mf_read:out_size <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: mf_read:left <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	.loc	0 0 3 is_stmt 0                 # liblzma/lzma/lzma2_encoder.c:0:3
	movq	48(%rsp), %r15                  # 8-byte Reload
.Ltmp102:
	.loc	8 283 36 is_stmt 1              # liblzma/lz/lz_encoder.h:283:36
	subq	%rbx, %r15
.Ltmp103:
	#DEBUG_VALUE: mf_read:out_avail <- $r15
	.loc	8 0 36 is_stmt 0                # liblzma/lz/lz_encoder.h:0:36
	movq	40(%rsp), %rbp                  # 8-byte Reload
	.loc	8 284 27 is_stmt 1              # liblzma/lz/lz_encoder.h:284:27
	movq	(%rbp), %r14
	cmpq	%r14, %r15
	movq	%r14, %r13
	cmovbq	%r15, %r13
.Ltmp104:
	#DEBUG_VALUE: mf_read:copy_size <- $r13
	.loc	8 0 27 is_stmt 0                # liblzma/lz/lz_encoder.h:0:27
	movq	24(%rsp), %rax                  # 8-byte Reload
	.loc	8 289 13 is_stmt 1              # liblzma/lz/lz_encoder.h:289:13
	leaq	(%rax,%rbx), %rdi
	.loc	8 289 36 is_stmt 0              # liblzma/lz/lz_encoder.h:289:36
	addq	(%rcx), %rsi
	.loc	8 289 51                        # liblzma/lz/lz_encoder.h:289:51
	subq	%r14, %rsi
	.loc	8 289 2                         # liblzma/lz/lz_encoder.h:289:2
	movq	%r13, %rdx
	callq	memcpy@PLT
.Ltmp105:
	.loc	8 292 11 is_stmt 1              # liblzma/lz/lz_encoder.h:292:11
	addq	%r13, %rbx
	movq	%rbx, (%r12)
	.loc	8 293 8                         # liblzma/lz/lz_encoder.h:293:8
	movq	%r14, %rax
	subq	%r13, %rax
	movq	%rax, (%rbp)
	xorl	%r13d, %r13d
.Ltmp106:
	.loc	0 256 32                        # liblzma/lzma/lzma2_encoder.c:256:32
	cmpq	%r15, %r14
	movq	48(%rsp), %r15                  # 8-byte Reload
.Ltmp107:
	.loc	0 0 32 is_stmt 0                # liblzma/lzma/lzma2_encoder.c:0:32
	movq	80(%rsp), %rbp                  # 8-byte Reload
	movq	64(%rsp), %r14                  # 8-byte Reload
	jbe	.LBB4_33
	jmp	.LBB4_36
.Ltmp108:
.LBB4_5:                                # %while.body.sw.bb14_crit_edge
                                        #   in Loop: Header=BB4_2 Depth=1
	#DEBUG_VALUE: lzma2_encode:pcoder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:mf <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_pos <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_size <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:coder <- [DW_OP_plus_uconst 80] [$rsp+0]
	movq	40(%rsp), %rax                  # 8-byte Reload
.Ltmp109:
	.loc	0 171 14 is_stmt 1              # liblzma/lzma/lzma2_encoder.c:171:14
	movq	(%rax), %rax
.Ltmp110:
.LBB4_14:                               # %sw.bb14
                                        #   in Loop: Header=BB4_2 Depth=1
	#DEBUG_VALUE: lzma2_encode:pcoder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:mf <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_pos <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_size <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:coder <- [DW_OP_plus_uconst 80] [$rsp+0]
	.loc	0 170 25                        # liblzma/lzma/lzma2_encoder.c:170:25
	movl	$2097152, %ecx                  # imm = 0x200000
	subl	%eax, %ecx
.Ltmp111:
	#DEBUG_VALUE: left <- $ecx
	.loc	0 0 25 is_stmt 0                # liblzma/lzma/lzma2_encoder.c:0:25
	movq	16(%rsp), %r12                  # 8-byte Reload
.Ltmp112:
	.loc	0 174 18 is_stmt 1              # liblzma/lzma/lzma2_encoder.c:174:18
	movl	100(%r12), %eax
.Ltmp113:
	.loc	0 188 35                        # liblzma/lzma/lzma2_encoder.c:188:35
	movl	24(%r12), %r15d
	.loc	0 188 50 is_stmt 0              # liblzma/lzma/lzma2_encoder.c:188:50
	movl	28(%r12), %ebx
	.loc	0 174 7 is_stmt 1               # liblzma/lzma/lzma2_encoder.c:174:7
	leal	(%rcx,%r15), %r9d
	subl	%eax, %r9d
	subl	%ebx, %r9d
	xorl	%r13d, %r13d
.Ltmp114:
	.loc	0 174 12 is_stmt 0              # liblzma/lzma/lzma2_encoder.c:174:12
	cmpl	%eax, %ecx
.Ltmp115:
	.loc	0 174 7                         # liblzma/lzma/lzma2_encoder.c:174:7
	cmovbl	%r13d, %r9d
.Ltmp116:
	#DEBUG_VALUE: limit <- $r9d
	#DEBUG_VALUE: read_start <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_minus, DW_OP_stack_value] $r15d, $ebx
	.loc	0 191 48 is_stmt 1              # liblzma/lzma/lzma2_encoder.c:191:48
	movq	8(%rbp), %rdi
	.loc	0 191 24 is_stmt 0              # liblzma/lzma/lzma2_encoder.c:191:24
	movl	$65536, %r8d                    # imm = 0x10000
	movq	%r12, %rsi
	movq	72(%rsp), %rdx                  # 8-byte Reload
	movq	64(%rsp), %r14                  # 8-byte Reload
	movq	%r14, %rcx
.Ltmp117:
	callq	lzma_lzma_encode@PLT
.Ltmp118:
	#DEBUG_VALUE: ret <- $eax
	.loc	0 196 50 is_stmt 1              # liblzma/lzma/lzma2_encoder.c:196:50
	movl	28(%r12), %ecx
	.loc	0 197 5                         # liblzma/lzma/lzma2_encoder.c:197:5
	addl	24(%r12), %ebx
.Ltmp119:
	subl	%ecx, %ebx
	subl	%r15d, %ebx
	.loc	0 196 28                        # liblzma/lzma/lzma2_encoder.c:196:28
	addq	136(%rbp), %rbx
	movq	%rbx, 136(%rbp)
.Ltmp120:
	.loc	0 202 11                        # liblzma/lzma/lzma2_encoder.c:202:11
	cmpl	$1, %eax
	movq	48(%rsp), %r15                  # 8-byte Reload
.Ltmp121:
	.loc	0 202 7 is_stmt 0               # liblzma/lzma/lzma2_encoder.c:202:7
	jne	.LBB4_36
.Ltmp122:
# %bb.15:                               # %if.end39
                                        #   in Loop: Header=BB4_2 Depth=1
	#DEBUG_VALUE: lzma2_encode:pcoder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:mf <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_pos <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_size <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:coder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: ret <- $eax
	.loc	0 208 14 is_stmt 1              # liblzma/lzma/lzma2_encoder.c:208:14
	movq	(%r14), %rdx
	.loc	0 208 30 is_stmt 0              # liblzma/lzma/lzma2_encoder.c:208:30
	cmpq	%rbx, %rdx
.Ltmp123:
	.loc	0 208 7                         # liblzma/lzma/lzma2_encoder.c:208:7
	jae	.LBB4_27
.Ltmp124:
# %bb.16:                               # %if.end52
                                        #   in Loop: Header=BB4_2 Depth=1
	#DEBUG_VALUE: lzma2_encode:pcoder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:mf <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_pos <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_size <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:coder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: ret <- $eax
	#DEBUG_VALUE: lzma2_header_lzma:pcoder <- [DW_OP_plus_uconst 80, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma2_header_lzma:coder <- [DW_OP_plus_uconst 80, DW_OP_deref] $rsp
	.loc	0 65 13 is_stmt 1               # liblzma/lzma/lzma2_encoder.c:65:13
	movzbl	128(%rbp), %eax
.Ltmp125:
	.loc	0 65 6 is_stmt 0                # liblzma/lzma/lzma2_encoder.c:65:6
	cmpb	$1, %al
	jne	.LBB4_20
.Ltmp126:
# %bb.17:                               # %if.then.i
                                        #   in Loop: Header=BB4_2 Depth=1
	#DEBUG_VALUE: lzma2_encode:pcoder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:mf <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_pos <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_size <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:coder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma2_header_lzma:pcoder <- [DW_OP_plus_uconst 80, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma2_header_lzma:coder <- [DW_OP_plus_uconst 80, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma2_header_lzma:pos <- 0
	.loc	0 68 7 is_stmt 1                # liblzma/lzma/lzma2_encoder.c:68:7
	cmpb	$1, 130(%rbp)
	jne	.LBB4_19
.Ltmp127:
# %bb.18:                               # %if.then2.i
                                        #   in Loop: Header=BB4_2 Depth=1
	#DEBUG_VALUE: lzma2_encode:pcoder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:mf <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_pos <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_size <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:coder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma2_header_lzma:pcoder <- [DW_OP_plus_uconst 80, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma2_header_lzma:coder <- [DW_OP_plus_uconst 80, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma2_header_lzma:pos <- 0
	.loc	0 0 7 is_stmt 0                 # liblzma/lzma/lzma2_encoder.c:0:7
	movq	(%rsp), %rdi                    # 8-byte Reload
.Ltmp128:
	.loc	0 69 20 is_stmt 1               # liblzma/lzma/lzma2_encoder.c:69:20
	movb	$-32, (%rdi)
	xorl	%esi, %esi
	jmp	.LBB4_24
.Ltmp129:
.LBB4_20:                               # %if.else5.i
                                        #   in Loop: Header=BB4_2 Depth=1
	#DEBUG_VALUE: lzma2_encode:pcoder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:mf <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_pos <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_size <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:coder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma2_header_lzma:pcoder <- [DW_OP_plus_uconst 80, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma2_header_lzma:coder <- [DW_OP_plus_uconst 80, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma2_header_lzma:pos <- 1
	.loc	0 75 7                          # liblzma/lzma/lzma2_encoder.c:75:7
	cmpb	$1, 129(%rbp)
	jne	.LBB4_22
.Ltmp130:
# %bb.21:                               # %if.then7.i
                                        #   in Loop: Header=BB4_2 Depth=1
	#DEBUG_VALUE: lzma2_encode:pcoder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:mf <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_pos <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_size <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:coder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma2_header_lzma:pcoder <- [DW_OP_plus_uconst 80, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma2_header_lzma:coder <- [DW_OP_plus_uconst 80, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma2_header_lzma:pos <- 1
	.loc	0 76 20                         # liblzma/lzma/lzma2_encoder.c:76:20
	movb	$-96, 161(%rbp)
	jmp	.LBB4_23
.Ltmp131:
.LBB4_19:                               # %if.else.i
                                        #   in Loop: Header=BB4_2 Depth=1
	#DEBUG_VALUE: lzma2_encode:pcoder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:mf <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_pos <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_size <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:coder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma2_header_lzma:pcoder <- [DW_OP_plus_uconst 80, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma2_header_lzma:coder <- [DW_OP_plus_uconst 80, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma2_header_lzma:pos <- 0
	.loc	0 0 20 is_stmt 0                # liblzma/lzma/lzma2_encoder.c:0:20
	movq	(%rsp), %rdi                    # 8-byte Reload
.Ltmp132:
	.loc	0 71 20 is_stmt 1               # liblzma/lzma/lzma2_encoder.c:71:20
	movb	$-64, (%rdi)
	xorl	%esi, %esi
	jmp	.LBB4_24
.Ltmp133:
.LBB4_22:                               # %if.else10.i
                                        #   in Loop: Header=BB4_2 Depth=1
	#DEBUG_VALUE: lzma2_encode:pcoder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:mf <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_pos <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_size <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:coder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma2_header_lzma:pcoder <- [DW_OP_plus_uconst 80, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma2_header_lzma:coder <- [DW_OP_plus_uconst 80, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma2_header_lzma:pos <- 1
	.loc	0 78 20                         # liblzma/lzma/lzma2_encoder.c:78:20
	movb	$-128, 161(%rbp)
.Ltmp134:
.LBB4_23:                               # %if.end14.i
                                        #   in Loop: Header=BB4_2 Depth=1
	#DEBUG_VALUE: lzma2_encode:pcoder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:mf <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_pos <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_size <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:coder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma2_header_lzma:pcoder <- [DW_OP_plus_uconst 80, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma2_header_lzma:coder <- [DW_OP_plus_uconst 80, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma2_header_lzma:pos <- 1
	.loc	0 0 20 is_stmt 0                # liblzma/lzma/lzma2_encoder.c:0:20
	movl	$1, %esi
	movq	(%rsp), %rdi                    # 8-byte Reload
.Ltmp135:
.LBB4_24:                               # %if.end14.i
                                        #   in Loop: Header=BB4_2 Depth=1
	#DEBUG_VALUE: lzma2_encode:pcoder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:mf <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_pos <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_size <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:coder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma2_header_lzma:pcoder <- [DW_OP_plus_uconst 80, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma2_header_lzma:coder <- [DW_OP_plus_uconst 80, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma2_header_lzma:pos <- $rsi
	movq	32(%rsp), %rcx                  # 8-byte Reload
	.loc	0 82 17 is_stmt 1               # liblzma/lzma/lzma2_encoder.c:82:17
	movq	%rsi, (%rcx)
	.loc	0 85 41                         # liblzma/lzma/lzma2_encoder.c:85:41
	decq	%rbx
.Ltmp136:
	#DEBUG_VALUE: lzma2_header_lzma:size <- $rbx
	.loc	0 86 28                         # liblzma/lzma/lzma2_encoder.c:86:28
	movl	%ebx, %ecx
	shrl	$16, %ecx
.Ltmp137:
	#DEBUG_VALUE: lzma2_header_lzma:pos <- undef
	.loc	0 86 20 is_stmt 0               # liblzma/lzma/lzma2_encoder.c:86:20
	addb	%cl, (%rdi,%rsi)
	.loc	0 87 20 is_stmt 1               # liblzma/lzma/lzma2_encoder.c:87:20
	movb	%bh, 1(%rdi,%rsi)
	.loc	0 88 20                         # liblzma/lzma/lzma2_encoder.c:88:20
	movb	%bl, 2(%rdi,%rsi)
	.loc	0 91 32                         # liblzma/lzma/lzma2_encoder.c:91:32
	leaq	-1(%rdx), %rcx
.Ltmp138:
	#DEBUG_VALUE: lzma2_header_lzma:size <- $rcx
	.loc	0 92 20                         # liblzma/lzma/lzma2_encoder.c:92:20
	movb	%ch, 3(%rdi,%rsi)
	.loc	0 93 20                         # liblzma/lzma/lzma2_encoder.c:93:20
	movb	%cl, 4(%rdi,%rsi)
	.loc	0 96 6                          # liblzma/lzma/lzma2_encoder.c:96:6
	testb	%al, %al
	je	.LBB4_26
.Ltmp139:
# %bb.25:                               # %if.then41.i
                                        #   in Loop: Header=BB4_2 Depth=1
	#DEBUG_VALUE: lzma2_encode:pcoder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:mf <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_pos <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_size <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:coder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma2_header_lzma:pcoder <- [DW_OP_plus_uconst 80, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma2_header_lzma:coder <- [DW_OP_plus_uconst 80, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma2_header_lzma:size <- $rcx
	.loc	0 0 0 is_stmt 0                 # liblzma/lzma/lzma2_encoder.c:0:0
	addq	%rdi, %rsi
.Ltmp140:
	#DEBUG_VALUE: lzma2_header_lzma:pos <- [DW_OP_plus_uconst 5, DW_OP_stack_value] undef
	.loc	0 97 55 is_stmt 1               # liblzma/lzma/lzma2_encoder.c:97:55
	addq	$5, %rsi
	movq	%rdi, %rbx
	movq	56(%rsp), %rdi                  # 8-byte Reload
	.loc	0 97 3 is_stmt 0                # liblzma/lzma/lzma2_encoder.c:97:3
	callq	lzma_lzma_lclppb_encode@PLT
.Ltmp141:
	.loc	0 0 3                           # liblzma/lzma/lzma2_encoder.c:0:3
	movq	%rbx, %rdi
.Ltmp142:
	.loc	0 105 25 is_stmt 1              # liblzma/lzma/lzma2_encoder.c:105:25
	movq	(%r14), %rdx
.Ltmp143:
.LBB4_26:                               # %cleanup54.thread165
                                        #   in Loop: Header=BB4_2 Depth=1
	#DEBUG_VALUE: lzma2_encode:pcoder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:mf <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_pos <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_size <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:coder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma2_header_lzma:pcoder <- [DW_OP_plus_uconst 80, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma2_header_lzma:coder <- [DW_OP_plus_uconst 80, DW_OP_deref] $rsp
	.loc	0 99 25                         # liblzma/lzma/lzma2_encoder.c:99:25
	movw	$0, 128(%rbp)
	.loc	0 101 31                        # liblzma/lzma/lzma2_encoder.c:101:31
	movb	$0, 130(%rbp)
	.loc	0 105 25                        # liblzma/lzma/lzma2_encoder.c:105:25
	addq	$6, %rdx
	movq	%rdx, 144(%rbp)
.Ltmp144:
	.loc	0 223 19                        # liblzma/lzma/lzma2_encoder.c:223:19
	movl	$2, (%rbp)
.Ltmp145:
.LBB4_29:                               # %sw.bb60
                                        #   in Loop: Header=BB4_2 Depth=1
	#DEBUG_VALUE: lzma2_encode:pcoder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:mf <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_pos <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_size <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:coder <- [DW_OP_plus_uconst 80] [$rsp+0]
	.loc	0 0 19 is_stmt 0                # liblzma/lzma/lzma2_encoder.c:0:19
	movq	32(%rsp), %rbx                  # 8-byte Reload
	.loc	0 231 3 is_stmt 1               # liblzma/lzma/lzma2_encoder.c:231:3
	movq	%rbx, %rsi
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	8(%rsp), %r8                    # 8-byte Reload
	movq	%r15, %r9
	callq	lzma_bufcpy@PLT
.Ltmp146:
	.loc	0 234 14                        # liblzma/lzma/lzma2_encoder.c:234:14
	movq	(%rbx), %rax
	xorl	%r13d, %r13d
	.loc	0 234 22 is_stmt 0              # liblzma/lzma/lzma2_encoder.c:234:22
	cmpq	(%r14), %rax
	je	.LBB4_33
	jmp	.LBB4_36
.Ltmp147:
.LBB4_35:
	#DEBUG_VALUE: lzma2_encode:pcoder <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma2_encode:mf <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_pos <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_size <- [DW_OP_LLVM_entry_value 1] $r8
	.loc	0 0 22                          # liblzma/lzma/lzma2_encoder.c:0:22
	xorl	%r13d, %r13d
.Ltmp148:
.LBB4_36:                               # %cleanup91
	#DEBUG_VALUE: lzma2_encode:pcoder <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma2_encode:mf <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_pos <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_size <- [DW_OP_LLVM_entry_value 1] $r8
	.loc	0 264 1 is_stmt 1               # liblzma/lzma/lzma2_encoder.c:264:1
	movl	%r13d, %eax
	.loc	0 264 1 epilogue_begin is_stmt 0 # liblzma/lzma/lzma2_encoder.c:264:1
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
.Ltmp149:
.LBB4_7:                                # %if.then
	.cfi_def_cfa_offset 144
	#DEBUG_VALUE: lzma2_encode:pcoder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:mf <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_pos <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_size <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:coder <- [DW_OP_plus_uconst 80] [$rsp+0]
	.loc	0 0 1                           # liblzma/lzma/lzma2_encoder.c:0:1
	movq	16(%rsp), %rax                  # 8-byte Reload
.Ltmp150:
	.loc	0 150 12 is_stmt 1              # liblzma/lzma/lzma2_encoder.c:150:12
	movl	104(%rax), %eax
	.loc	0 150 19 is_stmt 0              # liblzma/lzma/lzma2_encoder.c:150:19
	cmpl	$3, %eax
.Ltmp151:
	.loc	0 150 8                         # liblzma/lzma/lzma2_encoder.c:150:8
	jne	.LBB4_9
.Ltmp152:
# %bb.8:                                # %if.then3
	#DEBUG_VALUE: lzma2_encode:pcoder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:mf <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_pos <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_size <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:coder <- [DW_OP_plus_uconst 80] [$rsp+0]
	.loc	0 151 19 is_stmt 1              # liblzma/lzma/lzma2_encoder.c:151:19
	leaq	1(%rbx), %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	24(%rsp), %rcx                  # 8-byte Reload
	.loc	0 151 23 is_stmt 0              # liblzma/lzma/lzma2_encoder.c:151:23
	movb	$0, (%rcx,%rbx)
.Ltmp153:
.LBB4_9:                                # %if.end
	#DEBUG_VALUE: lzma2_encode:pcoder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:mf <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_pos <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_size <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:coder <- [DW_OP_plus_uconst 80] [$rsp+0]
	.loc	0 153 22 is_stmt 1              # liblzma/lzma/lzma2_encoder.c:153:22
	xorl	%r13d, %r13d
	testl	%eax, %eax
	setne	%r13b
	.loc	0 153 4 is_stmt 0               # liblzma/lzma/lzma2_encoder.c:153:4
	jmp	.LBB4_36
.Ltmp154:
.LBB4_12:
	#DEBUG_VALUE: lzma2_encode:pcoder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:mf <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_pos <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:out_size <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: lzma2_encode:coder <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 0 4                           # liblzma/lzma/lzma2_encoder.c:0:4
	movl	%eax, %r13d
	jmp	.LBB4_36
.Lfunc_end4:
	.size	lzma2_encode, .Lfunc_end4-lzma2_encode
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI4_0:
	.quad	.LBB4_6
	.quad	.LBB4_5
	.quad	.LBB4_28
	.quad	.LBB4_30
	.quad	.LBB4_4
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function lzma2_encoder_end
	.type	lzma2_encoder_end,@function
lzma2_encoder_end:                      # @lzma2_encoder_end
.Lfunc_begin5:
	.loc	0 269 0 is_stmt 1               # liblzma/lzma/lzma2_encoder.c:269:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma2_encoder_end:pcoder <- $rdi
	#DEBUG_VALUE: lzma2_encoder_end:allocator <- $rsi
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
.Ltmp155:
	#DEBUG_VALUE: lzma2_encoder_end:coder <- $rdi
	movq	%rsi, %rbx
	movq	%rdi, %r14
.Ltmp156:
	.loc	0 271 19 prologue_end           # liblzma/lzma/lzma2_encoder.c:271:19
	movq	8(%rdi), %rdi
.Ltmp157:
	#DEBUG_VALUE: lzma2_encoder_end:coder <- $r14
	#DEBUG_VALUE: lzma2_encoder_end:pcoder <- $r14
	.loc	0 271 2 is_stmt 0               # liblzma/lzma/lzma2_encoder.c:271:2
	callq	lzma_free@PLT
.Ltmp158:
	#DEBUG_VALUE: lzma2_encoder_end:allocator <- $rbx
	.loc	0 272 2 is_stmt 1               # liblzma/lzma/lzma2_encoder.c:272:2
	movq	%r14, %rdi
	movq	%rbx, %rsi
	.loc	0 272 2 epilogue_begin is_stmt 0 # liblzma/lzma/lzma2_encoder.c:272:2
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp159:
	#DEBUG_VALUE: lzma2_encoder_end:allocator <- $rsi
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp160:
	#DEBUG_VALUE: lzma2_encoder_end:coder <- $rdi
	#DEBUG_VALUE: lzma2_encoder_end:pcoder <- $rdi
	.cfi_def_cfa_offset 8
	jmp	lzma_free@PLT                   # TAILCALL
.Ltmp161:
.Lfunc_end5:
	.size	lzma2_encoder_end, .Lfunc_end5-lzma2_encoder_end
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lzma2_encoder_options_update
	.type	lzma2_encoder_options_update,@function
lzma2_encoder_options_update:           # @lzma2_encoder_options_update
.Lfunc_begin6:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma2_encoder_options_update:pcoder <- $rdi
	#DEBUG_VALUE: lzma2_encoder_options_update:filter <- $rsi
	#DEBUG_VALUE: lzma2_encoder_options_update:coder <- $rdi
	.loc	0 284 14 prologue_end is_stmt 1 # liblzma/lzma/lzma2_encoder.c:284:14
	movq	8(%rsi), %rcx
	movl	$11, %eax
	.loc	0 284 22 is_stmt 0              # liblzma/lzma/lzma2_encoder.c:284:22
	testq	%rcx, %rcx
	.loc	0 284 30                        # liblzma/lzma/lzma2_encoder.c:284:30
	je	.LBB6_9
.Ltmp162:
# %bb.1:                                # %lor.lhs.false
	#DEBUG_VALUE: lzma2_encoder_options_update:pcoder <- $rdi
	#DEBUG_VALUE: lzma2_encoder_options_update:filter <- $rsi
	#DEBUG_VALUE: lzma2_encoder_options_update:coder <- $rdi
	.loc	0 284 49                        # liblzma/lzma/lzma2_encoder.c:284:49
	cmpl	$0, (%rdi)
.Ltmp163:
	.loc	0 284 6                         # liblzma/lzma/lzma2_encoder.c:284:6
	je	.LBB6_2
.Ltmp164:
.LBB6_9:                                # %cleanup38
	#DEBUG_VALUE: lzma2_encoder_options_update:pcoder <- $rdi
	#DEBUG_VALUE: lzma2_encoder_options_update:filter <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma2_encoder_options_update:coder <- $rdi
	.loc	0 308 1 is_stmt 1               # liblzma/lzma/lzma2_encoder.c:308:1
	retq
.Ltmp165:
.LBB6_2:                                # %if.end
	#DEBUG_VALUE: lzma2_encoder_options_update:pcoder <- $rdi
	#DEBUG_VALUE: lzma2_encoder_options_update:filter <- $rsi
	#DEBUG_VALUE: lzma2_encoder_options_update:coder <- $rdi
	#DEBUG_VALUE: lzma2_encoder_options_update:opt <- $rcx
	.loc	0 290 32                        # liblzma/lzma/lzma2_encoder.c:290:32
	movl	20(%rcx), %edx
	.loc	0 290 24 is_stmt 0              # liblzma/lzma/lzma2_encoder.c:290:24
	cmpl	%edx, 36(%rdi)
	.loc	0 290 35                        # liblzma/lzma/lzma2_encoder.c:290:35
	jne	.LBB6_5
.Ltmp166:
# %bb.3:                                # %lor.lhs.false5
	#DEBUG_VALUE: lzma2_encoder_options_update:pcoder <- $rdi
	#DEBUG_VALUE: lzma2_encoder_options_update:filter <- $rsi
	#DEBUG_VALUE: lzma2_encoder_options_update:coder <- $rdi
	#DEBUG_VALUE: lzma2_encoder_options_update:opt <- $rcx
	.loc	0 290 53                        # liblzma/lzma/lzma2_encoder.c:290:53
	movl	40(%rdi), %eax
	.loc	0 290 56                        # liblzma/lzma/lzma2_encoder.c:290:56
	cmpl	24(%rcx), %eax
	.loc	0 291 4 is_stmt 1               # liblzma/lzma/lzma2_encoder.c:291:4
	jne	.LBB6_5
.Ltmp167:
# %bb.4:                                # %lor.lhs.false9
	#DEBUG_VALUE: lzma2_encoder_options_update:pcoder <- $rdi
	#DEBUG_VALUE: lzma2_encoder_options_update:filter <- $rsi
	#DEBUG_VALUE: lzma2_encoder_options_update:coder <- $rdi
	#DEBUG_VALUE: lzma2_encoder_options_update:opt <- $rcx
	.loc	0 291 22 is_stmt 0              # liblzma/lzma/lzma2_encoder.c:291:22
	movl	44(%rdi), %esi
.Ltmp168:
	#DEBUG_VALUE: lzma2_encoder_options_update:filter <- [DW_OP_LLVM_entry_value 1] $rsi
	.loc	0 0 22                          # liblzma/lzma/lzma2_encoder.c:0:22
	xorl	%eax, %eax
	.loc	0 291 25                        # liblzma/lzma/lzma2_encoder.c:291:25
	cmpl	28(%rcx), %esi
.Ltmp169:
	.loc	0 290 6 is_stmt 1               # liblzma/lzma/lzma2_encoder.c:290:6
	je	.LBB6_9
.Ltmp170:
.LBB6_5:                                # %if.then13
	#DEBUG_VALUE: lzma2_encoder_options_update:pcoder <- $rdi
	#DEBUG_VALUE: lzma2_encoder_options_update:filter <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma2_encoder_options_update:coder <- $rdi
	#DEBUG_VALUE: lzma2_encoder_options_update:opt <- $rcx
	.loc	0 0 6 is_stmt 0                 # liblzma/lzma/lzma2_encoder.c:0:6
	movl	$8, %eax
.Ltmp171:
	.loc	0 293 15 is_stmt 1              # liblzma/lzma/lzma2_encoder.c:293:15
	cmpl	$4, %edx
	.loc	0 293 31 is_stmt 0              # liblzma/lzma/lzma2_encoder.c:293:31
	ja	.LBB6_9
.Ltmp172:
# %bb.6:                                # %lor.lhs.false16
	#DEBUG_VALUE: lzma2_encoder_options_update:pcoder <- $rdi
	#DEBUG_VALUE: lzma2_encoder_options_update:filter <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma2_encoder_options_update:coder <- $rdi
	#DEBUG_VALUE: lzma2_encoder_options_update:opt <- $rcx
	.loc	0 293 39                        # liblzma/lzma/lzma2_encoder.c:293:39
	movl	24(%rcx), %esi
	.loc	0 293 42                        # liblzma/lzma/lzma2_encoder.c:293:42
	cmpl	$5, %esi
	setae	%r8b
	addl	%edx, %esi
	cmpl	$5, %esi
	setae	%sil
	.loc	0 294 5 is_stmt 1               # liblzma/lzma/lzma2_encoder.c:294:5
	orb	%r8b, %sil
	jne	.LBB6_9
.Ltmp173:
# %bb.7:                                # %lor.lhs.false23
	#DEBUG_VALUE: lzma2_encoder_options_update:pcoder <- $rdi
	#DEBUG_VALUE: lzma2_encoder_options_update:filter <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma2_encoder_options_update:coder <- $rdi
	#DEBUG_VALUE: lzma2_encoder_options_update:opt <- $rcx
	.loc	0 295 16                        # liblzma/lzma/lzma2_encoder.c:295:16
	cmpl	$4, 28(%rcx)
.Ltmp174:
	.loc	0 293 7                         # liblzma/lzma/lzma2_encoder.c:293:7
	ja	.LBB6_9
.Ltmp175:
# %bb.8:                                # %if.end27
	#DEBUG_VALUE: lzma2_encoder_options_update:pcoder <- $rdi
	#DEBUG_VALUE: lzma2_encoder_options_update:filter <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma2_encoder_options_update:coder <- $rdi
	#DEBUG_VALUE: lzma2_encoder_options_update:opt <- $rcx
	.loc	0 300 21                        # liblzma/lzma/lzma2_encoder.c:300:21
	movl	%edx, 36(%rdi)
	.loc	0 301 28                        # liblzma/lzma/lzma2_encoder.c:301:28
	movl	24(%rcx), %eax
	.loc	0 301 21 is_stmt 0              # liblzma/lzma/lzma2_encoder.c:301:21
	movl	%eax, 40(%rdi)
	.loc	0 302 28 is_stmt 1              # liblzma/lzma/lzma2_encoder.c:302:28
	movl	28(%rcx), %eax
	.loc	0 302 21 is_stmt 0              # liblzma/lzma/lzma2_encoder.c:302:21
	movl	%eax, 44(%rdi)
	.loc	0 303 26 is_stmt 1              # liblzma/lzma/lzma2_encoder.c:303:26
	movw	$257, 128(%rdi)                 # imm = 0x101
	xorl	%eax, %eax
.Ltmp176:
	.loc	0 308 1                         # liblzma/lzma/lzma2_encoder.c:308:1
	retq
.Ltmp177:
.Lfunc_end6:
	.size	lzma2_encoder_options_update, .Lfunc_end6-lzma2_encoder_options_update
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
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp8-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp14-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp14-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp21-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp21-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp28-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp28-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp9-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp9-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp14-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp14-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp22-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp22-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp28-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp28-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp7-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp7-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp14-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp14-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp20-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp28-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp28-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp6-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp16-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp17-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp17-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp22-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp35-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp37-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp38-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp38-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp39-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp39-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp40-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp40-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp41-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp41-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp42-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp42-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp49-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp52-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp59-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp62-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp64-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp46-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp58-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp62-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp63-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp74-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp74-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp147-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	208                             # 80
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp147-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp149-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp149-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	208                             # 80
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp69-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp69-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp71-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp71-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp73-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp73-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp147-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp147-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp149-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	88                              # DW_OP_reg8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp149-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp68-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp74-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp74-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp147-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	208                             # 80
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp149-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	208                             # 80
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp118-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp125-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp91-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp92-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp101-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp108-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp101-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp108-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp101-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp108-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp101-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp108-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp103-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp107-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc22:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp104-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp106-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc23:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp111-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp117-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc24:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp116-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp118-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc25:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp116-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp119-.Lfunc_begin0         #   ending offset
	.byte	20                              # Loc expr size
	.byte	127                             # DW_OP_breg15
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	115                             # DW_OP_breg3
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	28                              # DW_OP_minus
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc26:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp126-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp129-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp129-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp131-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp131-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp133-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp133-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp135-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp135-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp137-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc27:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp136-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp138-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp138-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp141-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc28:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp157-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp157-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp160-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp160-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp161-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc29:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp158-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp158-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp159-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp159-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp161-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc30:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp155-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp157-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp157-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp160-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp160-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp161-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc31:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin6-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp164-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp164-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp165-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp165-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp168-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp168-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end6-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc32:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp165-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end6-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
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
	.byte	6                               # DW_FORM_data4
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
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	8                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
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
	.byte	10                              # Abbreviation Code
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
	.byte	11                              # Abbreviation Code
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
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
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
	.byte	20                              # Abbreviation Code
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
	.byte	24                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	25                              # Abbreviation Code
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
	.byte	26                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	27                              # Abbreviation Code
	.byte	55                              # DW_TAG_restrict_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	28                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
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
	.byte	5                               # DW_FORM_data2
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	30                              # Abbreviation Code
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
	.byte	31                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	32                              # Abbreviation Code
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
	.byte	33                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
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
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	5                               # DW_FORM_data2
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	38                              # Abbreviation Code
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
	.byte	39                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
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
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	41                              # Abbreviation Code
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
	.byte	42                              # Abbreviation Code
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
	.byte	43                              # Abbreviation Code
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
	.byte	44                              # Abbreviation Code
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
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	47                              # Abbreviation Code
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
	.byte	48                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	49                              # Abbreviation Code
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
	.byte	50                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	51                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	52                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	53                              # Abbreviation Code
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
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	55                              # Abbreviation Code
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	5                               # DWARF version number
	.byte	1                               # DWARF Unit Type
	.byte	8                               # Address Size (in bytes)
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	1                               # Abbrev [1] 0xc:0xb66 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin0       # DW_AT_high_pc
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
	.byte	2                               # Abbrev [2] 0x86:0x18 DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x8e:0x3 DW_TAG_enumerator
	.byte	24                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x91:0x3 DW_TAG_enumerator
	.byte	25                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x94:0x3 DW_TAG_enumerator
	.byte	26                              # DW_AT_name
	.byte	18                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x97:0x3 DW_TAG_enumerator
	.byte	27                              # DW_AT_name
	.byte	19                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x9a:0x3 DW_TAG_enumerator
	.byte	28                              # DW_AT_name
	.byte	20                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x9e:0xf DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0xa6:0x3 DW_TAG_enumerator
	.byte	29                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xa9:0x3 DW_TAG_enumerator
	.byte	30                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0xad:0xc DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0xb5:0x3 DW_TAG_enumerator
	.byte	31                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xb9:0x7b DW_TAG_structure_type
	.byte	85                              # DW_AT_name
	.long	65704                           # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0xc1:0x9 DW_TAG_member
	.byte	32                              # DW_AT_name
	.long	202                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	2                               # Abbrev [2] 0xca:0x18 DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0xd2:0x3 DW_TAG_enumerator
	.byte	33                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xd5:0x3 DW_TAG_enumerator
	.byte	34                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xd8:0x3 DW_TAG_enumerator
	.byte	35                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xdb:0x3 DW_TAG_enumerator
	.byte	36                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xde:0x3 DW_TAG_enumerator
	.byte	37                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0xe2:0x9 DW_TAG_member
	.byte	38                              # DW_AT_name
	.long	308                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xeb:0x9 DW_TAG_member
	.byte	40                              # DW_AT_name
	.long	317                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xf4:0x9 DW_TAG_member
	.byte	74                              # DW_AT_name
	.long	639                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xfd:0x9 DW_TAG_member
	.byte	76                              # DW_AT_name
	.long	639                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	129                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x106:0x9 DW_TAG_member
	.byte	77                              # DW_AT_name
	.long	639                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	130                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x10f:0x9 DW_TAG_member
	.byte	78                              # DW_AT_name
	.long	643                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x118:0x9 DW_TAG_member
	.byte	81                              # DW_AT_name
	.long	643                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x121:0x9 DW_TAG_member
	.byte	82                              # DW_AT_name
	.long	643                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	152                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x12a:0x9 DW_TAG_member
	.byte	83                              # DW_AT_name
	.long	655                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	160                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x134:0x5 DW_TAG_pointer_type
	.long	313                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x139:0x4 DW_TAG_typedef
	.byte	39                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x13d:0x9 DW_TAG_typedef
	.long	326                             # DW_AT_type
	.byte	73                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	399                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x146:0xf2 DW_TAG_structure_type
	.byte	112                             # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x14a:0x9 DW_TAG_member
	.byte	41                              # DW_AT_name
	.long	568                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x153:0x9 DW_TAG_member
	.byte	44                              # DW_AT_name
	.long	584                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	240                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x15c:0x9 DW_TAG_member
	.byte	48                              # DW_AT_name
	.long	568                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	254                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x165:0xa DW_TAG_member
	.byte	49                              # DW_AT_name
	.long	568                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	281                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x16f:0xa DW_TAG_member
	.byte	50                              # DW_AT_name
	.long	568                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	293                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x179:0xa DW_TAG_member
	.byte	51                              # DW_AT_name
	.long	568                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	316                             # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x183:0xa DW_TAG_member
	.byte	52                              # DW_AT_name
	.long	614                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	322                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x18d:0xa DW_TAG_member
	.byte	54                              # DW_AT_name
	.long	568                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	342                             # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x197:0xa DW_TAG_member
	.byte	55                              # DW_AT_name
	.long	622                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	345                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1a1:0xa DW_TAG_member
	.byte	57                              # DW_AT_name
	.long	568                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	375                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1ab:0xa DW_TAG_member
	.byte	58                              # DW_AT_name
	.long	568                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	384                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1b5:0xa DW_TAG_member
	.byte	59                              # DW_AT_name
	.long	568                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	385                             # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1bf:0xa DW_TAG_member
	.byte	60                              # DW_AT_name
	.long	568                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	386                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1c9:0xa DW_TAG_member
	.byte	61                              # DW_AT_name
	.long	568                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	387                             # DW_AT_decl_line
	.byte	60                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1d3:0xa DW_TAG_member
	.byte	62                              # DW_AT_name
	.long	568                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	388                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1dd:0xa DW_TAG_member
	.byte	63                              # DW_AT_name
	.long	568                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	389                             # DW_AT_decl_line
	.byte	68                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1e7:0xa DW_TAG_member
	.byte	64                              # DW_AT_name
	.long	568                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1f1:0xa DW_TAG_member
	.byte	65                              # DW_AT_name
	.long	568                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	391                             # DW_AT_decl_line
	.byte	76                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1fb:0xa DW_TAG_member
	.byte	66                              # DW_AT_name
	.long	630                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	392                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x205:0xa DW_TAG_member
	.byte	68                              # DW_AT_name
	.long	630                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	393                             # DW_AT_decl_line
	.byte	84                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x20f:0xa DW_TAG_member
	.byte	69                              # DW_AT_name
	.long	630                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	394                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x219:0xa DW_TAG_member
	.byte	70                              # DW_AT_name
	.long	630                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	395                             # DW_AT_decl_line
	.byte	92                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x223:0xa DW_TAG_member
	.byte	71                              # DW_AT_name
	.long	638                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	396                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x22d:0xa DW_TAG_member
	.byte	72                              # DW_AT_name
	.long	638                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	397                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x238:0x8 DW_TAG_typedef
	.long	576                             # DW_AT_type
	.byte	43                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x240:0x8 DW_TAG_typedef
	.long	88                              # DW_AT_type
	.byte	42                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x248:0x5 DW_TAG_pointer_type
	.long	589                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x24d:0x5 DW_TAG_const_type
	.long	594                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x252:0x8 DW_TAG_typedef
	.long	602                             # DW_AT_type
	.byte	47                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x25a:0x8 DW_TAG_typedef
	.long	610                             # DW_AT_type
	.byte	46                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x262:0x4 DW_TAG_base_type
	.byte	45                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	12                              # Abbrev [12] 0x266:0x8 DW_TAG_typedef
	.long	158                             # DW_AT_type
	.byte	53                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	155                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x26e:0x8 DW_TAG_typedef
	.long	134                             # DW_AT_type
	.byte	56                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x276:0x8 DW_TAG_typedef
	.long	173                             # DW_AT_type
	.byte	67                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x27e:0x1 DW_TAG_pointer_type
	.byte	4                               # Abbrev [4] 0x27f:0x4 DW_TAG_base_type
	.byte	75                              # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	12                              # Abbrev [12] 0x283:0x8 DW_TAG_typedef
	.long	651                             # DW_AT_type
	.byte	80                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x28b:0x4 DW_TAG_base_type
	.byte	79                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	15                              # Abbrev [15] 0x28f:0xf DW_TAG_array_type
	.long	594                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x294:0x9 DW_TAG_subrange_type
	.long	670                             # DW_AT_type
	.long	65542                           # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x29e:0x4 DW_TAG_base_type
	.byte	84                              # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	7                               # Abbrev [7] 0x2a2:0x5 DW_TAG_pointer_type
	.long	185                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x2a7:0x5 DW_TAG_pointer_type
	.long	684                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x2ac:0x5 DW_TAG_const_type
	.long	317                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x2b1:0x38 DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	168                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	357                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	775                             # DW_AT_type
                                        # DW_AT_external
	.byte	19                              # Abbrev [19] 0x2c1:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	175                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	357                             # DW_AT_decl_line
	.long	783                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x2cc:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	176                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	357                             # DW_AT_decl_line
	.long	970                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x2d7:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.byte	177                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	358                             # DW_AT_decl_line
	.long	1264                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0x2e2:0x6 DW_TAG_call_site
	.long	745                             # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	1                               # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x2e9:0x1e DW_TAG_subprogram
	.byte	86                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.short	298                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	775                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0x2f2:0x5 DW_TAG_formal_parameter
	.long	783                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x2f7:0x5 DW_TAG_formal_parameter
	.long	970                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x2fc:0x5 DW_TAG_formal_parameter
	.long	1264                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x301:0x5 DW_TAG_formal_parameter
	.long	1349                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x307:0x8 DW_TAG_typedef
	.long	43                              # DW_AT_type
	.byte	87                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x30f:0x5 DW_TAG_pointer_type
	.long	788                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x314:0x8 DW_TAG_typedef
	.long	796                             # DW_AT_type
	.byte	111                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.byte	23                              # Abbrev [23] 0x31c:0x4e DW_TAG_structure_type
	.byte	110                             # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x321:0x9 DW_TAG_member
	.byte	88                              # DW_AT_name
	.long	308                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x32a:0x9 DW_TAG_member
	.byte	89                              # DW_AT_name
	.long	874                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x333:0x9 DW_TAG_member
	.byte	93                              # DW_AT_name
	.long	898                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x33c:0x9 DW_TAG_member
	.byte	95                              # DW_AT_name
	.long	906                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x345:0x9 DW_TAG_member
	.byte	102                             # DW_AT_name
	.long	1097                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x34e:0x9 DW_TAG_member
	.byte	104                             # DW_AT_name
	.long	1122                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x357:0x9 DW_TAG_member
	.byte	106                             # DW_AT_name
	.long	1156                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x360:0x9 DW_TAG_member
	.byte	107                             # DW_AT_name
	.long	1192                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x36a:0x8 DW_TAG_typedef
	.long	882                             # DW_AT_type
	.byte	92                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x372:0x8 DW_TAG_typedef
	.long	890                             # DW_AT_type
	.byte	91                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x37a:0x8 DW_TAG_typedef
	.long	651                             # DW_AT_type
	.byte	90                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x382:0x8 DW_TAG_typedef
	.long	651                             # DW_AT_type
	.byte	94                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x38a:0x8 DW_TAG_typedef
	.long	914                             # DW_AT_type
	.byte	101                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x392:0x5 DW_TAG_pointer_type
	.long	919                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x397:0x33 DW_TAG_subroutine_type
	.long	775                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	22                              # Abbrev [22] 0x39c:0x5 DW_TAG_formal_parameter
	.long	308                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x3a1:0x5 DW_TAG_formal_parameter
	.long	970                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x3a6:0x5 DW_TAG_formal_parameter
	.long	1063                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x3ab:0x5 DW_TAG_formal_parameter
	.long	1068                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x3b0:0x5 DW_TAG_formal_parameter
	.long	643                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x3b5:0x5 DW_TAG_formal_parameter
	.long	1078                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x3ba:0x5 DW_TAG_formal_parameter
	.long	1068                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x3bf:0x5 DW_TAG_formal_parameter
	.long	643                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x3c4:0x5 DW_TAG_formal_parameter
	.long	1088                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x3ca:0x5 DW_TAG_pointer_type
	.long	975                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x3cf:0x9 DW_TAG_typedef
	.long	984                             # DW_AT_type
	.byte	99                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	403                             # DW_AT_decl_line
	.byte	25                              # Abbrev [25] 0x3d8:0x24 DW_TAG_structure_type
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.short	341                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x3dd:0xa DW_TAG_member
	.byte	96                              # DW_AT_name
	.long	1020                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	376                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3e7:0xa DW_TAG_member
	.byte	97                              # DW_AT_name
	.long	1046                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3f1:0xa DW_TAG_member
	.byte	98                              # DW_AT_name
	.long	638                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	401                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x3fc:0x5 DW_TAG_pointer_type
	.long	1025                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0x401:0x15 DW_TAG_subroutine_type
	.long	638                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	22                              # Abbrev [22] 0x406:0x5 DW_TAG_formal_parameter
	.long	638                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x40b:0x5 DW_TAG_formal_parameter
	.long	643                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x410:0x5 DW_TAG_formal_parameter
	.long	643                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x416:0x5 DW_TAG_pointer_type
	.long	1051                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0x41b:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	22                              # Abbrev [22] 0x41c:0x5 DW_TAG_formal_parameter
	.long	638                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x421:0x5 DW_TAG_formal_parameter
	.long	638                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x427:0x5 DW_TAG_restrict_type
	.long	584                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x42c:0x5 DW_TAG_restrict_type
	.long	1073                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x431:0x5 DW_TAG_pointer_type
	.long	643                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x436:0x5 DW_TAG_restrict_type
	.long	1083                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x43b:0x5 DW_TAG_pointer_type
	.long	594                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x440:0x9 DW_TAG_typedef
	.long	92                              # DW_AT_type
	.byte	100                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	322                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x449:0x8 DW_TAG_typedef
	.long	1105                            # DW_AT_type
	.byte	103                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x451:0x5 DW_TAG_pointer_type
	.long	1110                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0x456:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	22                              # Abbrev [22] 0x457:0x5 DW_TAG_formal_parameter
	.long	308                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x45c:0x5 DW_TAG_formal_parameter
	.long	970                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x462:0x5 DW_TAG_pointer_type
	.long	1127                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0x467:0xb DW_TAG_subroutine_type
	.long	1138                            # DW_AT_type
                                        # DW_AT_prototyped
	.byte	22                              # Abbrev [22] 0x46c:0x5 DW_TAG_formal_parameter
	.long	1146                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x472:0x8 DW_TAG_typedef
	.long	113                             # DW_AT_type
	.byte	105                             # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x47a:0x5 DW_TAG_pointer_type
	.long	1151                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x47f:0x5 DW_TAG_const_type
	.long	313                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x484:0x5 DW_TAG_pointer_type
	.long	1161                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0x489:0x1a DW_TAG_subroutine_type
	.long	775                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	22                              # Abbrev [22] 0x48e:0x5 DW_TAG_formal_parameter
	.long	308                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x493:0x5 DW_TAG_formal_parameter
	.long	1187                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x498:0x5 DW_TAG_formal_parameter
	.long	1187                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x49d:0x5 DW_TAG_formal_parameter
	.long	882                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x4a3:0x5 DW_TAG_pointer_type
	.long	882                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x4a8:0x5 DW_TAG_pointer_type
	.long	1197                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0x4ad:0x1a DW_TAG_subroutine_type
	.long	775                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	22                              # Abbrev [22] 0x4b2:0x5 DW_TAG_formal_parameter
	.long	308                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x4b7:0x5 DW_TAG_formal_parameter
	.long	970                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x4bc:0x5 DW_TAG_formal_parameter
	.long	1223                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x4c1:0x5 DW_TAG_formal_parameter
	.long	1223                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x4c7:0x5 DW_TAG_pointer_type
	.long	1228                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x4cc:0x5 DW_TAG_const_type
	.long	1233                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x4d1:0x8 DW_TAG_typedef
	.long	1241                            # DW_AT_type
	.byte	109                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x4d9:0x17 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x4dd:0x9 DW_TAG_member
	.byte	89                              # DW_AT_name
	.long	874                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x4e6:0x9 DW_TAG_member
	.byte	108                             # DW_AT_name
	.long	638                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x4f0:0x5 DW_TAG_pointer_type
	.long	1269                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x4f5:0x5 DW_TAG_const_type
	.long	1274                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x4fa:0x8 DW_TAG_typedef
	.long	1282                            # DW_AT_type
	.byte	114                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	23                              # Abbrev [23] 0x502:0x21 DW_TAG_structure_type
	.byte	113                             # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x507:0x9 DW_TAG_member
	.byte	89                              # DW_AT_name
	.long	874                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x510:0x9 DW_TAG_member
	.byte	93                              # DW_AT_name
	.long	1315                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x519:0x9 DW_TAG_member
	.byte	108                             # DW_AT_name
	.long	638                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x523:0x8 DW_TAG_typedef
	.long	1323                            # DW_AT_type
	.byte	112                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x52b:0x5 DW_TAG_pointer_type
	.long	1328                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0x530:0x15 DW_TAG_subroutine_type
	.long	775                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	22                              # Abbrev [22] 0x535:0x5 DW_TAG_formal_parameter
	.long	783                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x53a:0x5 DW_TAG_formal_parameter
	.long	970                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x53f:0x5 DW_TAG_formal_parameter
	.long	1264                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x545:0x5 DW_TAG_pointer_type
	.long	1354                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0x54a:0x1a DW_TAG_subroutine_type
	.long	775                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	22                              # Abbrev [22] 0x54f:0x5 DW_TAG_formal_parameter
	.long	1380                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x554:0x5 DW_TAG_formal_parameter
	.long	970                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x559:0x5 DW_TAG_formal_parameter
	.long	1806                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x55e:0x5 DW_TAG_formal_parameter
	.long	1812                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x564:0x5 DW_TAG_pointer_type
	.long	1385                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x569:0x8 DW_TAG_typedef
	.long	1393                            # DW_AT_type
	.byte	142                             # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	208                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x571:0x29 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	8                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x575:0x9 DW_TAG_member
	.byte	88                              # DW_AT_name
	.long	308                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x57e:0x9 DW_TAG_member
	.byte	95                              # DW_AT_name
	.long	1434                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x587:0x9 DW_TAG_member
	.byte	102                             # DW_AT_name
	.long	1105                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x590:0x9 DW_TAG_member
	.byte	141                             # DW_AT_name
	.long	1785                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x59a:0x5 DW_TAG_pointer_type
	.long	1439                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0x59f:0x1f DW_TAG_subroutine_type
	.long	775                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	22                              # Abbrev [22] 0x5a4:0x5 DW_TAG_formal_parameter
	.long	1470                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x5a9:0x5 DW_TAG_formal_parameter
	.long	1475                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x5ae:0x5 DW_TAG_formal_parameter
	.long	1078                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x5b3:0x5 DW_TAG_formal_parameter
	.long	1068                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x5b8:0x5 DW_TAG_formal_parameter
	.long	643                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x5be:0x5 DW_TAG_restrict_type
	.long	308                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x5c3:0x5 DW_TAG_restrict_type
	.long	1480                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x5c8:0x5 DW_TAG_pointer_type
	.long	1485                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x5cd:0x8 DW_TAG_typedef
	.long	1493                            # DW_AT_type
	.byte	140                             # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	23                              # Abbrev [23] 0x5d5:0xd5 DW_TAG_structure_type
	.byte	139                             # DW_AT_name
	.byte	120                             # DW_AT_byte_size
	.byte	8                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x5da:0x9 DW_TAG_member
	.byte	115                             # DW_AT_name
	.long	1083                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x5e3:0x9 DW_TAG_member
	.byte	116                             # DW_AT_name
	.long	568                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x5ec:0x9 DW_TAG_member
	.byte	117                             # DW_AT_name
	.long	568                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x5f5:0x9 DW_TAG_member
	.byte	118                             # DW_AT_name
	.long	568                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x5fe:0x9 DW_TAG_member
	.byte	119                             # DW_AT_name
	.long	568                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x607:0x9 DW_TAG_member
	.byte	120                             # DW_AT_name
	.long	568                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x610:0x9 DW_TAG_member
	.byte	121                             # DW_AT_name
	.long	568                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x619:0x9 DW_TAG_member
	.byte	122                             # DW_AT_name
	.long	568                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x622:0x9 DW_TAG_member
	.byte	123                             # DW_AT_name
	.long	568                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x62b:0x9 DW_TAG_member
	.byte	124                             # DW_AT_name
	.long	568                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x634:0x9 DW_TAG_member
	.byte	125                             # DW_AT_name
	.long	1706                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x63d:0x9 DW_TAG_member
	.byte	129                             # DW_AT_name
	.long	1763                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x646:0x9 DW_TAG_member
	.byte	130                             # DW_AT_name
	.long	1780                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x64f:0x9 DW_TAG_member
	.byte	131                             # DW_AT_name
	.long	1780                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x658:0x9 DW_TAG_member
	.byte	132                             # DW_AT_name
	.long	568                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x661:0x9 DW_TAG_member
	.byte	133                             # DW_AT_name
	.long	568                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.byte	84                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x66a:0x9 DW_TAG_member
	.byte	134                             # DW_AT_name
	.long	568                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x673:0x9 DW_TAG_member
	.byte	57                              # DW_AT_name
	.long	568                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.byte	92                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x67c:0x9 DW_TAG_member
	.byte	54                              # DW_AT_name
	.long	568                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x685:0x9 DW_TAG_member
	.byte	135                             # DW_AT_name
	.long	568                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	100                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x68e:0x9 DW_TAG_member
	.byte	136                             # DW_AT_name
	.long	1088                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x697:0x9 DW_TAG_member
	.byte	137                             # DW_AT_name
	.long	568                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	122                             # DW_AT_decl_line
	.byte	108                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x6a0:0x9 DW_TAG_member
	.byte	138                             # DW_AT_name
	.long	568                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x6aa:0x5 DW_TAG_pointer_type
	.long	1711                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0x6af:0x10 DW_TAG_subroutine_type
	.long	568                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	22                              # Abbrev [22] 0x6b4:0x5 DW_TAG_formal_parameter
	.long	1480                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x6b9:0x5 DW_TAG_formal_parameter
	.long	1727                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x6bf:0x5 DW_TAG_pointer_type
	.long	1732                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x6c4:0x8 DW_TAG_typedef
	.long	1740                            # DW_AT_type
	.byte	128                             # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x6cc:0x17 DW_TAG_structure_type
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x6d0:0x9 DW_TAG_member
	.byte	126                             # DW_AT_name
	.long	568                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x6d9:0x9 DW_TAG_member
	.byte	127                             # DW_AT_name
	.long	568                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x6e3:0x5 DW_TAG_pointer_type
	.long	1768                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0x6e8:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	22                              # Abbrev [22] 0x6e9:0x5 DW_TAG_formal_parameter
	.long	1480                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x6ee:0x5 DW_TAG_formal_parameter
	.long	568                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x6f4:0x5 DW_TAG_pointer_type
	.long	568                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x6f9:0x5 DW_TAG_pointer_type
	.long	1790                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0x6fe:0x10 DW_TAG_subroutine_type
	.long	775                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	22                              # Abbrev [22] 0x703:0x5 DW_TAG_formal_parameter
	.long	308                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x708:0x5 DW_TAG_formal_parameter
	.long	1223                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x70e:0x5 DW_TAG_pointer_type
	.long	1811                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x713:0x1 DW_TAG_const_type
	.byte	7                               # Abbrev [7] 0x714:0x5 DW_TAG_pointer_type
	.long	1817                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x719:0x8 DW_TAG_typedef
	.long	1825                            # DW_AT_type
	.byte	146                             # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	161                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x721:0x56 DW_TAG_structure_type
	.byte	64                              # DW_AT_byte_size
	.byte	8                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x725:0x9 DW_TAG_member
	.byte	143                             # DW_AT_name
	.long	643                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x72e:0x9 DW_TAG_member
	.byte	41                              # DW_AT_name
	.long	643                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x737:0x9 DW_TAG_member
	.byte	144                             # DW_AT_name
	.long	643                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x740:0x9 DW_TAG_member
	.byte	135                             # DW_AT_name
	.long	643                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x749:0x9 DW_TAG_member
	.byte	54                              # DW_AT_name
	.long	643                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x752:0x9 DW_TAG_member
	.byte	145                             # DW_AT_name
	.long	622                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x75b:0x9 DW_TAG_member
	.byte	57                              # DW_AT_name
	.long	568                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x764:0x9 DW_TAG_member
	.byte	44                              # DW_AT_name
	.long	584                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x76d:0x9 DW_TAG_member
	.byte	48                              # DW_AT_name
	.long	568                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x777:0x56 DW_TAG_subprogram
	.byte	2                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	169                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	312                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	775                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x787:0xa DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	178                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	312                             # DW_AT_decl_line
	.long	1380                            # DW_AT_type
	.byte	30                              # Abbrev [30] 0x791:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	176                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	312                             # DW_AT_decl_line
	.long	970                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x79b:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	108                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	313                             # DW_AT_decl_line
	.long	1806                            # DW_AT_type
	.byte	30                              # Abbrev [30] 0x7a5:0xa DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	179                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	313                             # DW_AT_decl_line
	.long	1812                            # DW_AT_type
	.byte	31                              # Abbrev [31] 0x7af:0x11 DW_TAG_lexical_block
	.byte	3                               # DW_AT_low_pc
	.long	.Ltmp23-.Ltmp19                 # DW_AT_high_pc
	.byte	32                              # Abbrev [32] 0x7b5:0xa DW_TAG_variable
	.byte	4                               # DW_AT_location
	.byte	180                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	340                             # DW_AT_decl_line
	.long	2904                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x7c0:0x6 DW_TAG_call_site
	.long	1997                            # DW_AT_call_origin
	.byte	4                               # DW_AT_call_return_pc
	.byte	33                              # Abbrev [33] 0x7c6:0x6 DW_TAG_call_site
	.long	2016                            # DW_AT_call_origin
	.byte	5                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	34                              # Abbrev [34] 0x7cd:0x13 DW_TAG_subprogram
	.byte	147                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	211                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	638                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0x7d5:0x5 DW_TAG_formal_parameter
	.long	643                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x7da:0x5 DW_TAG_formal_parameter
	.long	970                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	34                              # Abbrev [34] 0x7e0:0x1d DW_TAG_subprogram
	.byte	148                             # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	775                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0x7e8:0x5 DW_TAG_formal_parameter
	.long	2045                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x7ed:0x5 DW_TAG_formal_parameter
	.long	970                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x7f2:0x5 DW_TAG_formal_parameter
	.long	679                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x7f7:0x5 DW_TAG_formal_parameter
	.long	1812                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x7fd:0x5 DW_TAG_pointer_type
	.long	308                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x802:0x2b DW_TAG_subprogram
	.byte	6                               # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	170                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	366                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	882                             # DW_AT_type
                                        # DW_AT_external
	.byte	30                              # Abbrev [30] 0x812:0xa DW_TAG_formal_parameter
	.byte	5                               # DW_AT_location
	.byte	108                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	366                             # DW_AT_decl_line
	.long	1806                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0x81c:0xa DW_TAG_variable
	.byte	6                               # DW_AT_location
	.byte	181                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	368                             # DW_AT_decl_line
	.long	2909                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x826:0x6 DW_TAG_call_site
	.long	2093                            # DW_AT_call_origin
	.byte	7                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	34                              # Abbrev [34] 0x82d:0xe DW_TAG_subprogram
	.byte	149                             # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	882                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0x835:0x5 DW_TAG_formal_parameter
	.long	1806                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x83b:0x11 DW_TAG_subprogram
	.byte	150                             # DW_AT_name
	.byte	13                              # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	568                             # DW_AT_type
                                        # DW_AT_inline
	.byte	36                              # Abbrev [36] 0x843:0x8 DW_TAG_formal_parameter
	.byte	151                             # DW_AT_name
	.byte	13                              # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.long	568                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x84c:0x4d DW_TAG_subprogram
	.byte	8                               # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	171                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	377                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	775                             # DW_AT_type
                                        # DW_AT_external
	.byte	19                              # Abbrev [19] 0x85c:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	108                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	377                             # DW_AT_decl_line
	.long	1806                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x867:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	156                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	377                             # DW_AT_decl_line
	.long	1083                            # DW_AT_type
	.byte	37                              # Abbrev [37] 0x872:0xb DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	182                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	379                             # DW_AT_decl_line
	.long	2914                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0x87d:0xa DW_TAG_variable
	.byte	7                               # DW_AT_location
	.byte	183                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	380                             # DW_AT_decl_line
	.long	568                             # DW_AT_type
	.byte	38                              # Abbrev [38] 0x887:0x11 DW_TAG_inlined_subroutine
	.long	2107                            # DW_AT_abstract_origin
	.byte	0                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.short	395                             # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	39                              # Abbrev [39] 0x891:0x6 DW_TAG_formal_parameter
	.byte	8                               # DW_AT_location
	.long	2115                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x899:0x15 DW_TAG_subprogram
	.byte	152                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	36                              # Abbrev [36] 0x89d:0x8 DW_TAG_formal_parameter
	.byte	153                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.long	308                             # DW_AT_type
	.byte	41                              # Abbrev [41] 0x8a5:0x8 DW_TAG_variable
	.byte	88                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.long	674                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x8ae:0x11 DW_TAG_subprogram
	.byte	154                             # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	239                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	568                             # DW_AT_type
                                        # DW_AT_inline
	.byte	36                              # Abbrev [36] 0x8b6:0x8 DW_TAG_formal_parameter
	.byte	55                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	239                             # DW_AT_decl_line
	.long	2239                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x8bf:0x5 DW_TAG_pointer_type
	.long	2244                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x8c4:0x5 DW_TAG_const_type
	.long	1485                            # DW_AT_type
	.byte	42                              # Abbrev [42] 0x8c9:0x45 DW_TAG_subprogram
	.byte	155                             # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.short	280                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	43                              # Abbrev [43] 0x8ce:0x9 DW_TAG_formal_parameter
	.byte	55                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.short	280                             # DW_AT_decl_line
	.long	1480                            # DW_AT_type
	.byte	43                              # Abbrev [43] 0x8d7:0x9 DW_TAG_formal_parameter
	.byte	156                             # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.short	280                             # DW_AT_decl_line
	.long	1083                            # DW_AT_type
	.byte	43                              # Abbrev [43] 0x8e0:0x9 DW_TAG_formal_parameter
	.byte	157                             # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.short	280                             # DW_AT_decl_line
	.long	1073                            # DW_AT_type
	.byte	43                              # Abbrev [43] 0x8e9:0x9 DW_TAG_formal_parameter
	.byte	158                             # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.short	280                             # DW_AT_decl_line
	.long	643                             # DW_AT_type
	.byte	43                              # Abbrev [43] 0x8f2:0x9 DW_TAG_formal_parameter
	.byte	159                             # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.short	281                             # DW_AT_decl_line
	.long	1073                            # DW_AT_type
	.byte	44                              # Abbrev [44] 0x8fb:0x9 DW_TAG_variable
	.byte	160                             # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.short	283                             # DW_AT_decl_line
	.long	2318                            # DW_AT_type
	.byte	44                              # Abbrev [44] 0x904:0x9 DW_TAG_variable
	.byte	161                             # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.short	284                             # DW_AT_decl_line
	.long	2318                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x90e:0x5 DW_TAG_const_type
	.long	643                             # DW_AT_type
	.byte	40                              # Abbrev [40] 0x913:0x25 DW_TAG_subprogram
	.byte	162                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	36                              # Abbrev [36] 0x917:0x8 DW_TAG_formal_parameter
	.byte	153                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.long	308                             # DW_AT_type
	.byte	41                              # Abbrev [41] 0x91f:0x8 DW_TAG_variable
	.byte	88                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.long	674                             # DW_AT_type
	.byte	41                              # Abbrev [41] 0x927:0x8 DW_TAG_variable
	.byte	151                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.long	643                             # DW_AT_type
	.byte	41                              # Abbrev [41] 0x92f:0x8 DW_TAG_variable
	.byte	116                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.long	643                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	45                              # Abbrev [45] 0x938:0x12b DW_TAG_subprogram
	.byte	9                               # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	172                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	775                             # DW_AT_type
	.byte	46                              # Abbrev [46] 0x947:0x9 DW_TAG_formal_parameter
	.byte	9                               # DW_AT_location
	.byte	153                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.long	308                             # DW_AT_type
	.byte	46                              # Abbrev [46] 0x950:0x9 DW_TAG_formal_parameter
	.byte	10                              # DW_AT_location
	.byte	55                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.long	1475                            # DW_AT_type
	.byte	46                              # Abbrev [46] 0x959:0x9 DW_TAG_formal_parameter
	.byte	11                              # DW_AT_location
	.byte	156                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.long	1078                            # DW_AT_type
	.byte	46                              # Abbrev [46] 0x962:0x9 DW_TAG_formal_parameter
	.byte	12                              # DW_AT_location
	.byte	157                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.long	1068                            # DW_AT_type
	.byte	46                              # Abbrev [46] 0x96b:0x9 DW_TAG_formal_parameter
	.byte	13                              # DW_AT_location
	.byte	158                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	140                             # DW_AT_decl_line
	.long	643                             # DW_AT_type
	.byte	47                              # Abbrev [47] 0x974:0x9 DW_TAG_variable
	.byte	14                              # DW_AT_location
	.byte	88                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.long	2919                            # DW_AT_type
	.byte	48                              # Abbrev [48] 0x97d:0x73 DW_TAG_lexical_block
	.byte	1                               # DW_AT_ranges
	.byte	47                              # Abbrev [47] 0x97f:0x9 DW_TAG_variable
	.byte	15                              # DW_AT_location
	.byte	184                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.long	2904                            # DW_AT_type
	.byte	47                              # Abbrev [47] 0x988:0x9 DW_TAG_variable
	.byte	23                              # DW_AT_location
	.byte	159                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.long	2924                            # DW_AT_type
	.byte	47                              # Abbrev [47] 0x991:0x9 DW_TAG_variable
	.byte	24                              # DW_AT_location
	.byte	185                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.long	568                             # DW_AT_type
	.byte	47                              # Abbrev [47] 0x99a:0x9 DW_TAG_variable
	.byte	25                              # DW_AT_location
	.byte	186                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.long	2924                            # DW_AT_type
	.byte	49                              # Abbrev [49] 0x9a3:0x20 DW_TAG_inlined_subroutine
	.long	2201                            # DW_AT_abstract_origin
	.byte	10                              # DW_AT_low_pc
	.long	.Ltmp80-.Ltmp77                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	213                             # DW_AT_call_line
	.byte	4                               # DW_AT_call_column
	.byte	50                              # Abbrev [50] 0x9b0:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.asciz	"\320"
	.long	2205                            # DW_AT_abstract_origin
	.byte	51                              # Abbrev [51] 0x9b9:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.asciz	"\320"
	.long	2213                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	49                              # Abbrev [49] 0x9c3:0x2c DW_TAG_inlined_subroutine
	.long	2323                            # DW_AT_abstract_origin
	.byte	11                              # DW_AT_low_pc
	.long	.Ltmp144-.Ltmp124               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	221                             # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	50                              # Abbrev [50] 0x9d0:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.asciz	"\320"
	.long	2327                            # DW_AT_abstract_origin
	.byte	51                              # Abbrev [51] 0x9d9:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.asciz	"\320"
	.long	2335                            # DW_AT_abstract_origin
	.byte	52                              # Abbrev [52] 0x9e2:0x6 DW_TAG_variable
	.byte	26                              # DW_AT_location
	.long	2343                            # DW_AT_abstract_origin
	.byte	52                              # Abbrev [52] 0x9e8:0x6 DW_TAG_variable
	.byte	27                              # DW_AT_location
	.long	2351                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	49                              # Abbrev [49] 0x9f0:0x16 DW_TAG_inlined_subroutine
	.long	2222                            # DW_AT_abstract_origin
	.byte	12                              # DW_AT_low_pc
	.long	.Ltmp87-.Ltmp86                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	148                             # DW_AT_call_line
	.byte	7                               # DW_AT_call_column
	.byte	50                              # Abbrev [50] 0x9fd:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	16
	.long	2230                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0xa06:0x10 DW_TAG_lexical_block
	.byte	13                              # DW_AT_low_pc
	.long	.Ltmp92-.Ltmp90                 # DW_AT_high_pc
	.byte	47                              # Abbrev [47] 0xa0c:0x9 DW_TAG_variable
	.byte	16                              # DW_AT_location
	.byte	180                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.long	2904                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	53                              # Abbrev [53] 0xa16:0x2e DW_TAG_inlined_subroutine
	.long	2249                            # DW_AT_abstract_origin
	.byte	2                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	255                             # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	39                              # Abbrev [39] 0xa1f:0x6 DW_TAG_formal_parameter
	.byte	17                              # DW_AT_location
	.long	2263                            # DW_AT_abstract_origin
	.byte	39                              # Abbrev [39] 0xa25:0x6 DW_TAG_formal_parameter
	.byte	18                              # DW_AT_location
	.long	2272                            # DW_AT_abstract_origin
	.byte	39                              # Abbrev [39] 0xa2b:0x6 DW_TAG_formal_parameter
	.byte	19                              # DW_AT_location
	.long	2281                            # DW_AT_abstract_origin
	.byte	39                              # Abbrev [39] 0xa31:0x6 DW_TAG_formal_parameter
	.byte	20                              # DW_AT_location
	.long	2290                            # DW_AT_abstract_origin
	.byte	52                              # Abbrev [52] 0xa37:0x6 DW_TAG_variable
	.byte	21                              # DW_AT_location
	.long	2299                            # DW_AT_abstract_origin
	.byte	52                              # Abbrev [52] 0xa3d:0x6 DW_TAG_variable
	.byte	22                              # DW_AT_location
	.long	2308                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0xa44:0x6 DW_TAG_call_site
	.long	2659                            # DW_AT_call_origin
	.byte	14                              # DW_AT_call_return_pc
	.byte	33                              # Abbrev [33] 0xa4a:0x6 DW_TAG_call_site
	.long	2678                            # DW_AT_call_origin
	.byte	15                              # DW_AT_call_return_pc
	.byte	33                              # Abbrev [33] 0xa50:0x6 DW_TAG_call_site
	.long	2717                            # DW_AT_call_origin
	.byte	16                              # DW_AT_call_return_pc
	.byte	33                              # Abbrev [33] 0xa56:0x6 DW_TAG_call_site
	.long	2756                            # DW_AT_call_origin
	.byte	17                              # DW_AT_call_return_pc
	.byte	33                              # Abbrev [33] 0xa5c:0x6 DW_TAG_call_site
	.long	2678                            # DW_AT_call_origin
	.byte	18                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	34                              # Abbrev [34] 0xa63:0x13 DW_TAG_subprogram
	.byte	163                             # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	775                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0xa6b:0x5 DW_TAG_formal_parameter
	.long	308                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0xa70:0x5 DW_TAG_formal_parameter
	.long	679                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	34                              # Abbrev [34] 0xa76:0x27 DW_TAG_subprogram
	.byte	164                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	242                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	643                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0xa7e:0x5 DW_TAG_formal_parameter
	.long	1063                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0xa83:0x5 DW_TAG_formal_parameter
	.long	1068                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0xa88:0x5 DW_TAG_formal_parameter
	.long	643                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0xa8d:0x5 DW_TAG_formal_parameter
	.long	1078                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0xa92:0x5 DW_TAG_formal_parameter
	.long	1068                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0xa97:0x5 DW_TAG_formal_parameter
	.long	643                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	34                              # Abbrev [34] 0xa9d:0x27 DW_TAG_subprogram
	.byte	165                             # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	775                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0xaa5:0x5 DW_TAG_formal_parameter
	.long	1470                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0xaaa:0x5 DW_TAG_formal_parameter
	.long	1475                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0xaaf:0x5 DW_TAG_formal_parameter
	.long	1078                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0xab4:0x5 DW_TAG_formal_parameter
	.long	1068                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0xab9:0x5 DW_TAG_formal_parameter
	.long	643                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0xabe:0x5 DW_TAG_formal_parameter
	.long	568                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	34                              # Abbrev [34] 0xac4:0x13 DW_TAG_subprogram
	.byte	166                             # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	639                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0xacc:0x5 DW_TAG_formal_parameter
	.long	679                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0xad1:0x5 DW_TAG_formal_parameter
	.long	1083                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	54                              # Abbrev [54] 0xad7:0x37 DW_TAG_subprogram
	.byte	19                              # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	173                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	268                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	30                              # Abbrev [30] 0xae3:0xa DW_TAG_formal_parameter
	.byte	28                              # DW_AT_location
	.byte	153                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	268                             # DW_AT_decl_line
	.long	308                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0xaed:0xa DW_TAG_formal_parameter
	.byte	29                              # DW_AT_location
	.byte	176                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	268                             # DW_AT_decl_line
	.long	970                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0xaf7:0xa DW_TAG_variable
	.byte	30                              # DW_AT_location
	.byte	88                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	270                             # DW_AT_decl_line
	.long	674                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0xb01:0x6 DW_TAG_call_site
	.long	2830                            # DW_AT_call_origin
	.byte	20                              # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xb07:0x6 DW_TAG_call_site
	.long	2830                            # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	21                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	55                              # Abbrev [55] 0xb0e:0xf DW_TAG_subprogram
	.byte	167                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0xb12:0x5 DW_TAG_formal_parameter
	.long	638                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0xb17:0x5 DW_TAG_formal_parameter
	.long	970                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0xb1d:0x3b DW_TAG_subprogram
	.byte	22                              # DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	174                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	278                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	775                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0xb2d:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	153                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	278                             # DW_AT_decl_line
	.long	308                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0xb38:0xa DW_TAG_formal_parameter
	.byte	31                              # DW_AT_location
	.byte	187                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	278                             # DW_AT_decl_line
	.long	1223                            # DW_AT_type
	.byte	37                              # Abbrev [37] 0xb42:0xb DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	88                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	280                             # DW_AT_decl_line
	.long	674                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0xb4d:0xa DW_TAG_variable
	.byte	32                              # DW_AT_location
	.byte	182                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	289                             # DW_AT_decl_line
	.long	679                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0xb58:0x5 DW_TAG_const_type
	.long	775                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0xb5d:0x5 DW_TAG_const_type
	.long	882                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0xb62:0x5 DW_TAG_const_type
	.long	679                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xb67:0x5 DW_TAG_restrict_type
	.long	674                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0xb6c:0x5 DW_TAG_const_type
	.long	568                             # DW_AT_type
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
	.uleb128 .Ltmp46-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp60-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp62-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp65-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges1:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp81-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp109-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp145-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges2:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp99-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp100-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp102-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp106-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	756                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/lzma/lzma2_encoder.c"  # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/xz-test/src" # string offset=134
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=166
.Linfo_string4:
	.asciz	"LZMA_OK"                       # string offset=179
.Linfo_string5:
	.asciz	"LZMA_STREAM_END"               # string offset=187
.Linfo_string6:
	.asciz	"LZMA_NO_CHECK"                 # string offset=203
.Linfo_string7:
	.asciz	"LZMA_UNSUPPORTED_CHECK"        # string offset=217
.Linfo_string8:
	.asciz	"LZMA_GET_CHECK"                # string offset=240
.Linfo_string9:
	.asciz	"LZMA_MEM_ERROR"                # string offset=255
.Linfo_string10:
	.asciz	"LZMA_MEMLIMIT_ERROR"           # string offset=270
.Linfo_string11:
	.asciz	"LZMA_FORMAT_ERROR"             # string offset=290
.Linfo_string12:
	.asciz	"LZMA_OPTIONS_ERROR"            # string offset=308
.Linfo_string13:
	.asciz	"LZMA_DATA_ERROR"               # string offset=327
.Linfo_string14:
	.asciz	"LZMA_BUF_ERROR"                # string offset=343
.Linfo_string15:
	.asciz	"LZMA_PROG_ERROR"               # string offset=358
.Linfo_string16:
	.asciz	"LZMA_RUN"                      # string offset=374
.Linfo_string17:
	.asciz	"LZMA_SYNC_FLUSH"               # string offset=383
.Linfo_string18:
	.asciz	"LZMA_FULL_FLUSH"               # string offset=399
.Linfo_string19:
	.asciz	"LZMA_FINISH"                   # string offset=415
.Linfo_string20:
	.asciz	"LZMA_CHECK_NONE"               # string offset=427
.Linfo_string21:
	.asciz	"LZMA_CHECK_CRC32"              # string offset=443
.Linfo_string22:
	.asciz	"LZMA_CHECK_CRC64"              # string offset=460
.Linfo_string23:
	.asciz	"LZMA_CHECK_SHA256"             # string offset=477
.Linfo_string24:
	.asciz	"LZMA_MF_HC3"                   # string offset=495
.Linfo_string25:
	.asciz	"LZMA_MF_HC4"                   # string offset=507
.Linfo_string26:
	.asciz	"LZMA_MF_BT2"                   # string offset=519
.Linfo_string27:
	.asciz	"LZMA_MF_BT3"                   # string offset=531
.Linfo_string28:
	.asciz	"LZMA_MF_BT4"                   # string offset=543
.Linfo_string29:
	.asciz	"LZMA_MODE_FAST"                # string offset=555
.Linfo_string30:
	.asciz	"LZMA_MODE_NORMAL"              # string offset=570
.Linfo_string31:
	.asciz	"LZMA_RESERVED_ENUM"            # string offset=587
.Linfo_string32:
	.asciz	"sequence"                      # string offset=606
.Linfo_string33:
	.asciz	"SEQ_INIT"                      # string offset=615
.Linfo_string34:
	.asciz	"SEQ_LZMA_ENCODE"               # string offset=624
.Linfo_string35:
	.asciz	"SEQ_LZMA_COPY"                 # string offset=640
.Linfo_string36:
	.asciz	"SEQ_UNCOMPRESSED_HEADER"       # string offset=654
.Linfo_string37:
	.asciz	"SEQ_UNCOMPRESSED_COPY"         # string offset=678
.Linfo_string38:
	.asciz	"lzma"                          # string offset=700
.Linfo_string39:
	.asciz	"lzma_coder"                    # string offset=705
.Linfo_string40:
	.asciz	"opt_cur"                       # string offset=716
.Linfo_string41:
	.asciz	"dict_size"                     # string offset=724
.Linfo_string42:
	.asciz	"__uint32_t"                    # string offset=734
.Linfo_string43:
	.asciz	"uint32_t"                      # string offset=745
.Linfo_string44:
	.asciz	"preset_dict"                   # string offset=754
.Linfo_string45:
	.asciz	"unsigned char"                 # string offset=766
.Linfo_string46:
	.asciz	"__uint8_t"                     # string offset=780
.Linfo_string47:
	.asciz	"uint8_t"                       # string offset=790
.Linfo_string48:
	.asciz	"preset_dict_size"              # string offset=798
.Linfo_string49:
	.asciz	"lc"                            # string offset=815
.Linfo_string50:
	.asciz	"lp"                            # string offset=818
.Linfo_string51:
	.asciz	"pb"                            # string offset=821
.Linfo_string52:
	.asciz	"mode"                          # string offset=824
.Linfo_string53:
	.asciz	"lzma_mode"                     # string offset=829
.Linfo_string54:
	.asciz	"nice_len"                      # string offset=839
.Linfo_string55:
	.asciz	"mf"                            # string offset=848
.Linfo_string56:
	.asciz	"lzma_match_finder"             # string offset=851
.Linfo_string57:
	.asciz	"depth"                         # string offset=869
.Linfo_string58:
	.asciz	"reserved_int1"                 # string offset=875
.Linfo_string59:
	.asciz	"reserved_int2"                 # string offset=889
.Linfo_string60:
	.asciz	"reserved_int3"                 # string offset=903
.Linfo_string61:
	.asciz	"reserved_int4"                 # string offset=917
.Linfo_string62:
	.asciz	"reserved_int5"                 # string offset=931
.Linfo_string63:
	.asciz	"reserved_int6"                 # string offset=945
.Linfo_string64:
	.asciz	"reserved_int7"                 # string offset=959
.Linfo_string65:
	.asciz	"reserved_int8"                 # string offset=973
.Linfo_string66:
	.asciz	"reserved_enum1"                # string offset=987
.Linfo_string67:
	.asciz	"lzma_reserved_enum"            # string offset=1002
.Linfo_string68:
	.asciz	"reserved_enum2"                # string offset=1021
.Linfo_string69:
	.asciz	"reserved_enum3"                # string offset=1036
.Linfo_string70:
	.asciz	"reserved_enum4"                # string offset=1051
.Linfo_string71:
	.asciz	"reserved_ptr1"                 # string offset=1066
.Linfo_string72:
	.asciz	"reserved_ptr2"                 # string offset=1080
.Linfo_string73:
	.asciz	"lzma_options_lzma"             # string offset=1094
.Linfo_string74:
	.asciz	"need_properties"               # string offset=1112
.Linfo_string75:
	.asciz	"_Bool"                         # string offset=1128
.Linfo_string76:
	.asciz	"need_state_reset"              # string offset=1134
.Linfo_string77:
	.asciz	"need_dictionary_reset"         # string offset=1151
.Linfo_string78:
	.asciz	"uncompressed_size"             # string offset=1173
.Linfo_string79:
	.asciz	"unsigned long"                 # string offset=1191
.Linfo_string80:
	.asciz	"size_t"                        # string offset=1205
.Linfo_string81:
	.asciz	"compressed_size"               # string offset=1212
.Linfo_string82:
	.asciz	"buf_pos"                       # string offset=1228
.Linfo_string83:
	.asciz	"buf"                           # string offset=1236
.Linfo_string84:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=1240
.Linfo_string85:
	.asciz	"lzma_coder_s"                  # string offset=1260
.Linfo_string86:
	.asciz	"lzma_lz_encoder_init"          # string offset=1273
.Linfo_string87:
	.asciz	"lzma_ret"                      # string offset=1294
.Linfo_string88:
	.asciz	"coder"                         # string offset=1303
.Linfo_string89:
	.asciz	"id"                            # string offset=1309
.Linfo_string90:
	.asciz	"__uint64_t"                    # string offset=1312
.Linfo_string91:
	.asciz	"uint64_t"                      # string offset=1323
.Linfo_string92:
	.asciz	"lzma_vli"                      # string offset=1332
.Linfo_string93:
	.asciz	"init"                          # string offset=1341
.Linfo_string94:
	.asciz	"uintptr_t"                     # string offset=1346
.Linfo_string95:
	.asciz	"code"                          # string offset=1356
.Linfo_string96:
	.asciz	"alloc"                         # string offset=1361
.Linfo_string97:
	.asciz	"free"                          # string offset=1367
.Linfo_string98:
	.asciz	"opaque"                        # string offset=1372
.Linfo_string99:
	.asciz	"lzma_allocator"                # string offset=1379
.Linfo_string100:
	.asciz	"lzma_action"                   # string offset=1394
.Linfo_string101:
	.asciz	"lzma_code_function"            # string offset=1406
.Linfo_string102:
	.asciz	"end"                           # string offset=1425
.Linfo_string103:
	.asciz	"lzma_end_function"             # string offset=1429
.Linfo_string104:
	.asciz	"get_check"                     # string offset=1447
.Linfo_string105:
	.asciz	"lzma_check"                    # string offset=1457
.Linfo_string106:
	.asciz	"memconfig"                     # string offset=1468
.Linfo_string107:
	.asciz	"update"                        # string offset=1478
.Linfo_string108:
	.asciz	"options"                       # string offset=1485
.Linfo_string109:
	.asciz	"lzma_filter"                   # string offset=1493
.Linfo_string110:
	.asciz	"lzma_next_coder_s"             # string offset=1505
.Linfo_string111:
	.asciz	"lzma_next_coder"               # string offset=1523
.Linfo_string112:
	.asciz	"lzma_init_function"            # string offset=1539
.Linfo_string113:
	.asciz	"lzma_filter_info_s"            # string offset=1558
.Linfo_string114:
	.asciz	"lzma_filter_info"              # string offset=1577
.Linfo_string115:
	.asciz	"buffer"                        # string offset=1594
.Linfo_string116:
	.asciz	"size"                          # string offset=1601
.Linfo_string117:
	.asciz	"keep_size_before"              # string offset=1606
.Linfo_string118:
	.asciz	"keep_size_after"               # string offset=1623
.Linfo_string119:
	.asciz	"offset"                        # string offset=1639
.Linfo_string120:
	.asciz	"read_pos"                      # string offset=1646
.Linfo_string121:
	.asciz	"read_ahead"                    # string offset=1655
.Linfo_string122:
	.asciz	"read_limit"                    # string offset=1666
.Linfo_string123:
	.asciz	"write_pos"                     # string offset=1677
.Linfo_string124:
	.asciz	"pending"                       # string offset=1687
.Linfo_string125:
	.asciz	"find"                          # string offset=1695
.Linfo_string126:
	.asciz	"len"                           # string offset=1700
.Linfo_string127:
	.asciz	"dist"                          # string offset=1704
.Linfo_string128:
	.asciz	"lzma_match"                    # string offset=1709
.Linfo_string129:
	.asciz	"skip"                          # string offset=1720
.Linfo_string130:
	.asciz	"hash"                          # string offset=1725
.Linfo_string131:
	.asciz	"son"                           # string offset=1730
.Linfo_string132:
	.asciz	"cyclic_pos"                    # string offset=1734
.Linfo_string133:
	.asciz	"cyclic_size"                   # string offset=1745
.Linfo_string134:
	.asciz	"hash_mask"                     # string offset=1757
.Linfo_string135:
	.asciz	"match_len_max"                 # string offset=1767
.Linfo_string136:
	.asciz	"action"                        # string offset=1781
.Linfo_string137:
	.asciz	"hash_size_sum"                 # string offset=1788
.Linfo_string138:
	.asciz	"sons_count"                    # string offset=1802
.Linfo_string139:
	.asciz	"lzma_mf_s"                     # string offset=1813
.Linfo_string140:
	.asciz	"lzma_mf"                       # string offset=1823
.Linfo_string141:
	.asciz	"options_update"                # string offset=1831
.Linfo_string142:
	.asciz	"lzma_lz_encoder"               # string offset=1846
.Linfo_string143:
	.asciz	"before_size"                   # string offset=1862
.Linfo_string144:
	.asciz	"after_size"                    # string offset=1874
.Linfo_string145:
	.asciz	"match_finder"                  # string offset=1885
.Linfo_string146:
	.asciz	"lzma_lz_options"               # string offset=1898
.Linfo_string147:
	.asciz	"lzma_alloc"                    # string offset=1914
.Linfo_string148:
	.asciz	"lzma_lzma_encoder_create"      # string offset=1925
.Linfo_string149:
	.asciz	"lzma_lzma_encoder_memusage"    # string offset=1950
.Linfo_string150:
	.asciz	"get_pos_slot"                  # string offset=1977
.Linfo_string151:
	.asciz	"pos"                           # string offset=1990
.Linfo_string152:
	.asciz	"lzma2_header_uncompressed"     # string offset=1994
.Linfo_string153:
	.asciz	"pcoder"                        # string offset=2020
.Linfo_string154:
	.asciz	"mf_unencoded"                  # string offset=2027
.Linfo_string155:
	.asciz	"mf_read"                       # string offset=2040
.Linfo_string156:
	.asciz	"out"                           # string offset=2048
.Linfo_string157:
	.asciz	"out_pos"                       # string offset=2052
.Linfo_string158:
	.asciz	"out_size"                      # string offset=2060
.Linfo_string159:
	.asciz	"left"                          # string offset=2069
.Linfo_string160:
	.asciz	"out_avail"                     # string offset=2074
.Linfo_string161:
	.asciz	"copy_size"                     # string offset=2084
.Linfo_string162:
	.asciz	"lzma2_header_lzma"             # string offset=2094
.Linfo_string163:
	.asciz	"lzma_lzma_encoder_reset"       # string offset=2112
.Linfo_string164:
	.asciz	"lzma_bufcpy"                   # string offset=2136
.Linfo_string165:
	.asciz	"lzma_lzma_encode"              # string offset=2148
.Linfo_string166:
	.asciz	"lzma_lzma_lclppb_encode"       # string offset=2165
.Linfo_string167:
	.asciz	"lzma_free"                     # string offset=2189
.Linfo_string168:
	.asciz	"lzma_lzma2_encoder_init"       # string offset=2199
.Linfo_string169:
	.asciz	"lzma2_encoder_init"            # string offset=2223
.Linfo_string170:
	.asciz	"lzma_lzma2_encoder_memusage"   # string offset=2242
.Linfo_string171:
	.asciz	"lzma_lzma2_props_encode"       # string offset=2270
.Linfo_string172:
	.asciz	"lzma2_encode"                  # string offset=2294
.Linfo_string173:
	.asciz	"lzma2_encoder_end"             # string offset=2307
.Linfo_string174:
	.asciz	"lzma2_encoder_options_update"  # string offset=2325
.Linfo_string175:
	.asciz	"next"                          # string offset=2354
.Linfo_string176:
	.asciz	"allocator"                     # string offset=2359
.Linfo_string177:
	.asciz	"filters"                       # string offset=2369
.Linfo_string178:
	.asciz	"lz"                            # string offset=2377
.Linfo_string179:
	.asciz	"lz_options"                    # string offset=2380
.Linfo_string180:
	.asciz	"ret_"                          # string offset=2391
.Linfo_string181:
	.asciz	"lzma_mem"                      # string offset=2396
.Linfo_string182:
	.asciz	"opt"                           # string offset=2405
.Linfo_string183:
	.asciz	"d"                             # string offset=2409
.Linfo_string184:
	.asciz	"ret"                           # string offset=2411
.Linfo_string185:
	.asciz	"limit"                         # string offset=2415
.Linfo_string186:
	.asciz	"read_start"                    # string offset=2421
.Linfo_string187:
	.asciz	"filter"                        # string offset=2432
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
	.long	.Linfo_string154
	.long	.Linfo_string155
	.long	.Linfo_string156
	.long	.Linfo_string157
	.long	.Linfo_string158
	.long	.Linfo_string159
	.long	.Linfo_string160
	.long	.Linfo_string161
	.long	.Linfo_string162
	.long	.Linfo_string163
	.long	.Linfo_string164
	.long	.Linfo_string165
	.long	.Linfo_string166
	.long	.Linfo_string167
	.long	.Linfo_string168
	.long	.Linfo_string169
	.long	.Linfo_string170
	.long	.Linfo_string171
	.long	.Linfo_string172
	.long	.Linfo_string173
	.long	.Linfo_string174
	.long	.Linfo_string175
	.long	.Linfo_string176
	.long	.Linfo_string177
	.long	.Linfo_string178
	.long	.Linfo_string179
	.long	.Linfo_string180
	.long	.Linfo_string181
	.long	.Linfo_string182
	.long	.Linfo_string183
	.long	.Linfo_string184
	.long	.Linfo_string185
	.long	.Linfo_string186
	.long	.Linfo_string187
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.Lfunc_begin0
	.quad	.Ltmp0
	.quad	.Lfunc_begin1
	.quad	.Ltmp19
	.quad	.Ltmp9
	.quad	.Ltmp22
	.quad	.Lfunc_begin2
	.quad	.Ltmp32
	.quad	.Lfunc_begin3
	.quad	.Lfunc_begin4
	.quad	.Ltmp77
	.quad	.Ltmp124
	.quad	.Ltmp86
	.quad	.Ltmp90
	.quad	.Ltmp91
	.quad	.Ltmp96
	.quad	.Ltmp118
	.quad	.Ltmp141
	.quad	.Ltmp146
	.quad	.Lfunc_begin5
	.quad	.Ltmp158
	.quad	.Ltmp160
	.quad	.Lfunc_begin6
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
