	.text
	.file	"lzma2_decoder.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/lzma/lzma2_decoder.c" md5 0x9cda6399cf9c2869972035c0d84226da
	.file	1 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.file	2 "liblzma/api/lzma" "check.h" md5 0xb07c3297e2bcc14bb477793d08325ee3
	.file	3 "liblzma/api/lzma" "lzma.h" md5 0xc59c540efa0aff44f03d71331089fff8
	.file	4 "liblzma/common" "common.h" md5 0xb445e74fc76042ed64f7e1908fcc1934
	.file	5 "liblzma/lz" "lz_decoder.h" md5 0x27344aa2da5754ad4a118fbd9137003b
	.file	6 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	7 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	8 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.file	9 "liblzma/api/lzma" "vli.h" md5 0xe1aa51527ce08aa260777d4fb351a0b7
	.globl	lzma_lzma2_decoder_init         # -- Begin function lzma_lzma2_decoder_init
	.p2align	4, 0x90
	.type	lzma_lzma2_decoder_init,@function
lzma_lzma2_decoder_init:                # @lzma_lzma2_decoder_init
.Lfunc_begin0:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_lzma2_decoder_init:next <- $rdi
	#DEBUG_VALUE: lzma_lzma2_decoder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_lzma2_decoder_init:filters <- $rdx
	.loc	0 260 9 prologue_end            # liblzma/lzma/lzma2_decoder.c:260:9
	movl	$lzma2_decoder_init, %ecx
.Ltmp0:
	jmp	lzma_lz_decoder_init@PLT        # TAILCALL
.Ltmp1:
.Lfunc_end0:
	.size	lzma_lzma2_decoder_init, .Lfunc_end0-lzma_lzma2_decoder_init
	.cfi_endproc
	.file	10 "/usr/include" "stdint.h" md5 0xa48e64edacc5b19f56c99745232c963c
	.file	11 "liblzma/api/lzma" "filter.h" md5 0x5eb86d86854a7619ed1d1ac1b57b2484
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lzma2_decoder_init
	.type	lzma2_decoder_init,@function
lzma2_decoder_init:                     # @lzma2_decoder_init
.Lfunc_begin1:
	.loc	0 228 0                         # liblzma/lzma/lzma2_decoder.c:228:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma2_decoder_init:lz <- $rdi
	#DEBUG_VALUE: lzma2_decoder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma2_decoder_init:opt <- $rdx
	#DEBUG_VALUE: lzma2_decoder_init:lz_options <- $rcx
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
	movq	%rdi, %rbx
.Ltmp2:
	.loc	0 229 10 prologue_end           # liblzma/lzma/lzma2_decoder.c:229:10
	movq	(%rdi), %rax
	.loc	0 229 16 is_stmt 0              # liblzma/lzma/lzma2_decoder.c:229:16
	testq	%rax, %rax
.Ltmp3:
	.loc	0 229 6                         # liblzma/lzma/lzma2_decoder.c:229:6
	jne	.LBB1_3
.Ltmp4:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: lzma2_decoder_init:lz <- $rbx
	#DEBUG_VALUE: lzma2_decoder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma2_decoder_init:opt <- $rdx
	#DEBUG_VALUE: lzma2_decoder_init:lz_options <- $rcx
	.loc	0 0 6                           # liblzma/lzma/lzma2_decoder.c:0:6
	movq	%rdx, %r14
.Ltmp5:
	#DEBUG_VALUE: lzma2_decoder_init:opt <- $r14
	movq	%rcx, %r15
.Ltmp6:
	#DEBUG_VALUE: lzma2_decoder_init:lz_options <- $r15
	.loc	0 230 15 is_stmt 1              # liblzma/lzma/lzma2_decoder.c:230:15
	movl	$184, %edi
	movq	%rsi, %r12
	callq	lzma_alloc@PLT
.Ltmp7:
	#DEBUG_VALUE: lzma2_decoder_init:allocator <- $r12
	.loc	0 230 13 is_stmt 0              # liblzma/lzma/lzma2_decoder.c:230:13
	movq	%rax, (%rbx)
.Ltmp8:
	.loc	0 231 17 is_stmt 1              # liblzma/lzma/lzma2_decoder.c:231:17
	testq	%rax, %rax
.Ltmp9:
	.loc	0 231 7 is_stmt 0               # liblzma/lzma/lzma2_decoder.c:231:7
	je	.LBB1_7
.Ltmp10:
# %bb.2:                                # %if.end
	#DEBUG_VALUE: lzma2_decoder_init:lz <- $rbx
	#DEBUG_VALUE: lzma2_decoder_init:allocator <- $r12
	#DEBUG_VALUE: lzma2_decoder_init:opt <- $r14
	#DEBUG_VALUE: lzma2_decoder_init:lz_options <- $r15
	.loc	0 234 12 is_stmt 1              # liblzma/lzma/lzma2_decoder.c:234:12
	movq	$lzma2_decode, 8(%rbx)
	.loc	0 235 11                        # liblzma/lzma/lzma2_decoder.c:235:11
	movq	$lzma2_decoder_end, 32(%rbx)
	.loc	0 237 45                        # liblzma/lzma/lzma2_decoder.c:237:45
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%rax)
	movups	%xmm0, 8(%rax)
	movq	$0, 40(%rax)
.Ltmp11:
	.loc	0 242 29                        # liblzma/lzma/lzma2_decoder.c:242:29
	movq	(%rbx), %rax
	movq	%r15, %rcx
	movq	%r14, %rdx
	movq	%r12, %rsi
.Ltmp12:
.LBB1_3:                                # %if.end9
	#DEBUG_VALUE: lzma2_decoder_init:lz <- $rbx
	#DEBUG_VALUE: lzma2_decoder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma2_decoder_init:opt <- $rdx
	#DEBUG_VALUE: lzma2_decoder_init:lz_options <- $rcx
	#DEBUG_VALUE: lzma2_decoder_init:options <- $rdx
	.loc	0 242 46 is_stmt 0              # liblzma/lzma/lzma2_decoder.c:242:46
	movl	$0, (%rax)
	.loc	0 243 29 is_stmt 1              # liblzma/lzma/lzma2_decoder.c:243:29
	movq	(%rbx), %rax
	.loc	0 243 53 is_stmt 0              # liblzma/lzma/lzma2_decoder.c:243:53
	movb	$1, 64(%rax)
	.loc	0 244 82 is_stmt 1              # liblzma/lzma/lzma2_decoder.c:244:82
	cmpq	$0, 8(%rdx)
	.loc	0 245 4                         # liblzma/lzma/lzma2_decoder.c:245:4
	je	.LBB1_4
.Ltmp13:
# %bb.5:                                # %lor.rhs
	#DEBUG_VALUE: lzma2_decoder_init:lz <- $rbx
	#DEBUG_VALUE: lzma2_decoder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma2_decoder_init:opt <- $rdx
	#DEBUG_VALUE: lzma2_decoder_init:lz_options <- $rcx
	#DEBUG_VALUE: lzma2_decoder_init:options <- $rdx
	.loc	0 245 33 is_stmt 0              # liblzma/lzma/lzma2_decoder.c:245:33
	cmpl	$0, 16(%rdx)
	sete	%al
	jmp	.LBB1_6
.Ltmp14:
.LBB1_4:
	#DEBUG_VALUE: lzma2_decoder_init:lz <- $rbx
	#DEBUG_VALUE: lzma2_decoder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma2_decoder_init:opt <- $rdx
	#DEBUG_VALUE: lzma2_decoder_init:lz_options <- $rcx
	#DEBUG_VALUE: lzma2_decoder_init:options <- $rdx
	.loc	0 0 33                          # liblzma/lzma/lzma2_decoder.c:0:33
	movb	$1, %al
.Ltmp15:
.LBB1_6:                                # %lor.end
	#DEBUG_VALUE: lzma2_decoder_init:lz <- $rbx
	#DEBUG_VALUE: lzma2_decoder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma2_decoder_init:opt <- $rdx
	#DEBUG_VALUE: lzma2_decoder_init:lz_options <- $rcx
	#DEBUG_VALUE: lzma2_decoder_init:options <- $rdx
	.loc	0 244 29 is_stmt 1              # liblzma/lzma/lzma2_decoder.c:244:29
	movq	(%rbx), %rdi
	.loc	0 244 59 is_stmt 0              # liblzma/lzma/lzma2_decoder.c:244:59
	movb	%al, 65(%rdi)
	.loc	0 247 62 is_stmt 1              # liblzma/lzma/lzma2_decoder.c:247:62
	movq	(%rbx), %rdi
	.loc	0 247 70 is_stmt 0              # liblzma/lzma/lzma2_decoder.c:247:70
	addq	$8, %rdi
	.loc	0 247 9 epilogue_begin          # liblzma/lzma/lzma2_decoder.c:247:9
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
.Ltmp16:
	#DEBUG_VALUE: lzma2_decoder_init:lz <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
.Ltmp17:
	jmp	lzma_lzma_decoder_create@PLT    # TAILCALL
.Ltmp18:
.LBB1_7:                                # %return
	.cfi_def_cfa_offset 48
	#DEBUG_VALUE: lzma2_decoder_init:lz <- $rbx
	#DEBUG_VALUE: lzma2_decoder_init:allocator <- $r12
	#DEBUG_VALUE: lzma2_decoder_init:opt <- $r14
	#DEBUG_VALUE: lzma2_decoder_init:lz_options <- $r15
	.loc	0 249 1 is_stmt 1               # liblzma/lzma/lzma2_decoder.c:249:1
	movl	$5, %eax
	.loc	0 249 1 epilogue_begin is_stmt 0 # liblzma/lzma/lzma2_decoder.c:249:1
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
.Ltmp19:
	#DEBUG_VALUE: lzma2_decoder_init:lz <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 32
	popq	%r12
.Ltmp20:
	#DEBUG_VALUE: lzma2_decoder_init:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp21:
	#DEBUG_VALUE: lzma2_decoder_init:opt <- [DW_OP_LLVM_entry_value 1] $rdx
	.cfi_def_cfa_offset 16
	popq	%r15
.Ltmp22:
	#DEBUG_VALUE: lzma2_decoder_init:lz_options <- [DW_OP_LLVM_entry_value 1] $rcx
	.cfi_def_cfa_offset 8
	retq
.Ltmp23:
.Lfunc_end1:
	.size	lzma2_decoder_init, .Lfunc_end1-lzma2_decoder_init
	.cfi_endproc
	.file	12 "liblzma/lzma" "lzma_decoder.h" md5 0x0caa14a517fbe6eb5d1a0f4dac3f4c24
                                        # -- End function
	.globl	lzma_lzma2_decoder_memusage     # -- Begin function lzma_lzma2_decoder_memusage
	.p2align	4, 0x90
	.type	lzma_lzma2_decoder_memusage,@function
lzma_lzma2_decoder_memusage:            # @lzma_lzma2_decoder_memusage
.Lfunc_begin2:
	.loc	0 267 0 is_stmt 1               # liblzma/lzma/lzma2_decoder.c:267:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_lzma2_decoder_memusage:options <- $rdi
	pushq	%rax
	.cfi_def_cfa_offset 16
.Ltmp24:
	.loc	0 269 6 prologue_end            # liblzma/lzma/lzma2_decoder.c:269:6
	callq	lzma_lzma_decoder_memusage_nocheck@PLT
.Ltmp25:
	#DEBUG_VALUE: lzma_lzma2_decoder_memusage:options <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 269 4 is_stmt 0               # liblzma/lzma/lzma2_decoder.c:269:4
	addq	$184, %rax
	.loc	0 268 2 epilogue_begin is_stmt 1 # liblzma/lzma/lzma2_decoder.c:268:2
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Ltmp26:
.Lfunc_end2:
	.size	lzma_lzma2_decoder_memusage, .Lfunc_end2-lzma_lzma2_decoder_memusage
	.cfi_endproc
                                        # -- End function
	.globl	lzma_lzma2_props_decode         # -- Begin function lzma_lzma2_props_decode
	.p2align	4, 0x90
	.type	lzma_lzma2_props_decode,@function
lzma_lzma2_props_decode:                # @lzma_lzma2_props_decode
.Lfunc_begin3:
	.loc	0 276 0                         # liblzma/lzma/lzma2_decoder.c:276:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_lzma2_props_decode:options <- $rdi
	#DEBUG_VALUE: lzma_lzma2_props_decode:allocator <- $rsi
	#DEBUG_VALUE: lzma_lzma2_props_decode:props <- $rdx
	#DEBUG_VALUE: lzma_lzma2_props_decode:props_size <- $rcx
	movl	$8, %eax
.Ltmp27:
	.loc	0 277 17 prologue_end           # liblzma/lzma/lzma2_decoder.c:277:17
	cmpq	$1, %rcx
.Ltmp28:
	.loc	0 277 6 is_stmt 0               # liblzma/lzma/lzma2_decoder.c:277:6
	jne	.LBB3_8
.Ltmp29:
# %bb.1:                                # %if.end
	#DEBUG_VALUE: lzma_lzma2_props_decode:options <- $rdi
	#DEBUG_VALUE: lzma_lzma2_props_decode:allocator <- $rsi
	#DEBUG_VALUE: lzma_lzma2_props_decode:props <- $rdx
	#DEBUG_VALUE: lzma_lzma2_props_decode:props_size <- $rcx
	.loc	0 0 6                           # liblzma/lzma/lzma2_decoder.c:0:6
	cmpb	$40, (%rdx)
	.loc	0 281 6 is_stmt 1               # liblzma/lzma/lzma2_decoder.c:281:6
	ja	.LBB3_8
.Ltmp30:
# %bb.2:                                # %if.end8
	#DEBUG_VALUE: lzma_lzma2_props_decode:options <- $rdi
	#DEBUG_VALUE: lzma_lzma2_props_decode:allocator <- $rsi
	#DEBUG_VALUE: lzma_lzma2_props_decode:props <- $rdx
	#DEBUG_VALUE: lzma_lzma2_props_decode:props_size <- $rcx
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdx, %r14
.Ltmp31:
	#DEBUG_VALUE: lzma_lzma2_props_decode:props <- $r14
	.loc	0 0 6 is_stmt 0                 # liblzma/lzma/lzma2_decoder.c:0:6
	movq	%rdi, %rbx
.Ltmp32:
	#DEBUG_VALUE: lzma_lzma2_props_decode:options <- $rbx
	.loc	0 288 27 is_stmt 1              # liblzma/lzma/lzma2_decoder.c:288:27
	movl	$112, %edi
	callq	lzma_alloc@PLT
.Ltmp33:
	#DEBUG_VALUE: lzma_lzma2_props_decode:props_size <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma2_props_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_lzma2_props_decode:opt <- $rax
	.loc	0 290 10                        # liblzma/lzma/lzma2_decoder.c:290:10
	testq	%rax, %rax
.Ltmp34:
	.loc	0 290 6 is_stmt 0               # liblzma/lzma/lzma2_decoder.c:290:6
	je	.LBB3_3
.Ltmp35:
# %bb.4:                                # %if.end12
	#DEBUG_VALUE: lzma_lzma2_props_decode:options <- $rbx
	#DEBUG_VALUE: lzma_lzma2_props_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_lzma2_props_decode:props <- $r14
	#DEBUG_VALUE: lzma_lzma2_props_decode:props_size <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma2_props_decode:opt <- $rax
	.loc	0 293 6 is_stmt 1               # liblzma/lzma/lzma2_decoder.c:293:6
	movzbl	(%r14), %edx
	movl	$-1, %esi
	cmpl	$40, %edx
.Ltmp36:
	.loc	0 293 6 is_stmt 0               # liblzma/lzma/lzma2_decoder.c:293:6
	je	.LBB3_6
.Ltmp37:
# %bb.5:                                # %if.else
	#DEBUG_VALUE: lzma_lzma2_props_decode:options <- $rbx
	#DEBUG_VALUE: lzma_lzma2_props_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_lzma2_props_decode:props <- $r14
	#DEBUG_VALUE: lzma_lzma2_props_decode:props_size <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma2_props_decode:opt <- $rax
	.loc	0 296 34 is_stmt 1              # liblzma/lzma/lzma2_decoder.c:296:34
	andl	$1, %edx
	.loc	0 296 22 is_stmt 0              # liblzma/lzma/lzma2_decoder.c:296:22
	orl	$2, %edx
	.loc	0 296 18                        # liblzma/lzma/lzma2_decoder.c:296:18
	movl	%edx, (%rax)
	.loc	0 297 22 is_stmt 1              # liblzma/lzma/lzma2_decoder.c:297:22
	movzbl	(%r14), %ecx
	.loc	0 297 31 is_stmt 0              # liblzma/lzma/lzma2_decoder.c:297:31
	shrl	%ecx
	.loc	0 297 18                        # liblzma/lzma/lzma2_decoder.c:297:18
	addb	$11, %cl
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %edx
	movl	%edx, %esi
.Ltmp38:
.LBB3_6:                                # %if.end25
	#DEBUG_VALUE: lzma_lzma2_props_decode:options <- $rbx
	#DEBUG_VALUE: lzma_lzma2_props_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_lzma2_props_decode:props <- $r14
	#DEBUG_VALUE: lzma_lzma2_props_decode:props_size <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma2_props_decode:opt <- $rax
	.loc	0 0 0                           # liblzma/lzma/lzma2_decoder.c:0:0
	movl	%esi, (%rax)
.Ltmp39:
	.loc	0 300 19 is_stmt 1              # liblzma/lzma/lzma2_decoder.c:300:19
	movq	$0, 8(%rax)
	.loc	0 301 24                        # liblzma/lzma/lzma2_decoder.c:301:24
	movl	$0, 16(%rax)
	.loc	0 303 11                        # liblzma/lzma/lzma2_decoder.c:303:11
	movq	%rax, (%rbx)
	xorl	%eax, %eax
.Ltmp40:
	.loc	0 0 11 is_stmt 0                # liblzma/lzma/lzma2_decoder.c:0:11
	jmp	.LBB3_7
.Ltmp41:
.LBB3_3:
	#DEBUG_VALUE: lzma_lzma2_props_decode:options <- $rbx
	#DEBUG_VALUE: lzma_lzma2_props_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_lzma2_props_decode:props <- $r14
	#DEBUG_VALUE: lzma_lzma2_props_decode:props_size <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_lzma2_props_decode:opt <- $rax
	movl	$5, %eax
.Ltmp42:
.LBB3_7:
	#DEBUG_VALUE: lzma_lzma2_props_decode:options <- $rbx
	#DEBUG_VALUE: lzma_lzma2_props_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_lzma2_props_decode:props <- $r14
	#DEBUG_VALUE: lzma_lzma2_props_decode:props_size <- [DW_OP_LLVM_entry_value 1] $rcx
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp43:
	#DEBUG_VALUE: lzma_lzma2_props_decode:options <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp44:
	#DEBUG_VALUE: lzma_lzma2_props_decode:props <- [DW_OP_LLVM_entry_value 1] $rdx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
.LBB3_8:                                # %return
	#DEBUG_VALUE: lzma_lzma2_props_decode:options <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_lzma2_props_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_lzma2_props_decode:props <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_lzma2_props_decode:props_size <- [DW_OP_LLVM_entry_value 1] $rcx
	.loc	0 306 1 is_stmt 1               # liblzma/lzma/lzma2_decoder.c:306:1
	retq
.Ltmp45:
.Lfunc_end3:
	.size	lzma_lzma2_props_decode, .Lfunc_end3-lzma_lzma2_props_decode
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lzma2_decode
	.type	lzma2_decode,@function
lzma2_decode:                           # @lzma2_decode
.Lfunc_begin4:
	.loc	0 60 0                          # liblzma/lzma/lzma2_decoder.c:60:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma2_decode:pcoder <- $rdi
	#DEBUG_VALUE: lzma2_decode:dict <- $rsi
	#DEBUG_VALUE: lzma2_decode:in <- $rdx
	#DEBUG_VALUE: lzma2_decode:in_pos <- $rcx
	#DEBUG_VALUE: lzma2_decode:in_size <- $r8
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
.Ltmp46:
	#DEBUG_VALUE: lzma2_decode:coder <- $rdi
	movq	%r8, %rbx
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	%rdi, %r13
	leaq	8(%rsi), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	leaq	72(%rdi), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
.Ltmp47:
	.p2align	4, 0x90
.LBB4_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma2_decode:pcoder <- $r13
	#DEBUG_VALUE: lzma2_decode:dict <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma2_decode:in <- $r12
	#DEBUG_VALUE: lzma2_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma2_decode:in_size <- $rbx
	#DEBUG_VALUE: lzma2_decode:coder <- $r13
	.loc	0 65 9 prologue_end             # liblzma/lzma/lzma2_decoder.c:65:9
	movq	(%r15), %rbp
	.loc	0 65 17 is_stmt 0               # liblzma/lzma/lzma2_decoder.c:65:17
	movq	%rbx, %rax
	.loc	0 0 0                           # liblzma/lzma/lzma2_decoder.c:0:0
	movl	(%r13), %ecx
	.loc	0 65 17                         # liblzma/lzma/lzma2_decoder.c:65:17
	subq	%rbp, %rax
	.loc	0 65 27                         # liblzma/lzma/lzma2_decoder.c:65:27
	jbe	.LBB4_7
.Ltmp48:
# %bb.2:                                # %while.body
                                        #   in Loop: Header=BB4_1 Depth=1
	#DEBUG_VALUE: lzma2_decode:pcoder <- $r13
	#DEBUG_VALUE: lzma2_decode:dict <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma2_decode:in <- $r12
	#DEBUG_VALUE: lzma2_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma2_decode:in_size <- $rbx
	#DEBUG_VALUE: lzma2_decode:coder <- $r13
	.loc	0 66 2 is_stmt 1                # liblzma/lzma/lzma2_decoder.c:66:2
	cmpl	$7, %ecx
	ja	.LBB4_36
.Ltmp49:
# %bb.3:                                # %while.body
                                        #   in Loop: Header=BB4_1 Depth=1
	#DEBUG_VALUE: lzma2_decode:pcoder <- $r13
	#DEBUG_VALUE: lzma2_decode:dict <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma2_decode:in <- $r12
	#DEBUG_VALUE: lzma2_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma2_decode:in_size <- $rbx
	#DEBUG_VALUE: lzma2_decode:coder <- $r13
	movl	%ecx, %ecx
	jmpq	*.LJTI4_0(,%rcx,8)
.Ltmp50:
.LBB4_4:                                # %sw.bb
                                        #   in Loop: Header=BB4_1 Depth=1
	#DEBUG_VALUE: lzma2_decode:pcoder <- $r13
	#DEBUG_VALUE: lzma2_decode:dict <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma2_decode:in <- $r12
	#DEBUG_VALUE: lzma2_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma2_decode:in_size <- $rbx
	#DEBUG_VALUE: lzma2_decode:coder <- $r13
	.loc	0 68 28                         # liblzma/lzma/lzma2_decoder.c:68:28
	movzbl	(%r12,%rbp), %eax
.Ltmp51:
	#DEBUG_VALUE: control <- undef
	.loc	0 69 3                          # liblzma/lzma/lzma2_decoder.c:69:3
	incq	%rbp
	movq	%rbp, (%r15)
	.loc	0 68 28                         # liblzma/lzma/lzma2_decoder.c:68:28
	testq	%rax, %rax
	.loc	0 72 7                          # liblzma/lzma/lzma2_decoder.c:72:7
	je	.LBB4_37
.Ltmp52:
# %bb.5:                                # %if.end
                                        #   in Loop: Header=BB4_1 Depth=1
	#DEBUG_VALUE: lzma2_decode:pcoder <- $r13
	#DEBUG_VALUE: lzma2_decode:dict <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma2_decode:in <- $r12
	#DEBUG_VALUE: lzma2_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma2_decode:in_size <- $rbx
	#DEBUG_VALUE: lzma2_decode:coder <- $r13
	.loc	0 75 15                         # liblzma/lzma/lzma2_decoder.c:75:15
	cmpb	$-32, %al
	setb	%cl
	cmpq	$1, %rax
	setne	%dl
	.loc	0 75 23 is_stmt 0               # liblzma/lzma/lzma2_decoder.c:75:23
	testb	%dl, %cl
	jne	.LBB4_22
.Ltmp53:
# %bb.6:                                # %if.then9
                                        #   in Loop: Header=BB4_1 Depth=1
	#DEBUG_VALUE: lzma2_decode:pcoder <- $r13
	#DEBUG_VALUE: lzma2_decode:dict <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma2_decode:in <- $r12
	#DEBUG_VALUE: lzma2_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma2_decode:in_size <- $rbx
	#DEBUG_VALUE: lzma2_decode:coder <- $r13
	.loc	0 78 27 is_stmt 1               # liblzma/lzma/lzma2_decoder.c:78:27
	movw	$257, 64(%r13)                  # imm = 0x101
	movb	$1, %cl
	movq	(%rsp), %rsi                    # 8-byte Reload
	jmp	.LBB4_23
.Ltmp54:
	.p2align	4, 0x90
.LBB4_7:                                # %lor.rhs
                                        #   in Loop: Header=BB4_1 Depth=1
	#DEBUG_VALUE: lzma2_decode:pcoder <- $r13
	#DEBUG_VALUE: lzma2_decode:dict <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma2_decode:in <- $r12
	#DEBUG_VALUE: lzma2_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma2_decode:in_size <- $rbx
	#DEBUG_VALUE: lzma2_decode:coder <- $r13
	.loc	0 65 46                         # liblzma/lzma/lzma2_decoder.c:65:46
	cmpl	$6, %ecx
	.loc	0 65 2 is_stmt 0                # liblzma/lzma/lzma2_decoder.c:65:2
	jne	.LBB4_33
.Ltmp55:
.LBB4_8:                                # %sw.bb100
                                        #   in Loop: Header=BB4_1 Depth=1
	#DEBUG_VALUE: lzma2_decode:pcoder <- $r13
	#DEBUG_VALUE: lzma2_decode:dict <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma2_decode:in <- $r12
	#DEBUG_VALUE: lzma2_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma2_decode:in_size <- $rbx
	#DEBUG_VALUE: lzma2_decode:coder <- $r13
	#DEBUG_VALUE: in_start <- $rbp
	.loc	0 169 53 is_stmt 1              # liblzma/lzma/lzma2_decoder.c:169:53
	movq	8(%r13), %rdi
	.loc	0 169 24 is_stmt 0              # liblzma/lzma/lzma2_decoder.c:169:24
	movq	%r14, %rsi
	movq	%r12, %rdx
	movq	%r15, %rcx
	movq	%rbx, %r8
	callq	*16(%r13)
.Ltmp56:
	movl	%eax, %ecx
.Ltmp57:
	#DEBUG_VALUE: ret <- $ecx
	.loc	0 173 26 is_stmt 1              # liblzma/lzma/lzma2_decoder.c:173:26
	movq	(%r15), %rdx
	.loc	0 173 34 is_stmt 0              # liblzma/lzma/lzma2_decoder.c:173:34
	subq	%rbp, %rdx
.Ltmp58:
	#DEBUG_VALUE: in_used <- $rdx
	.loc	0 174 24 is_stmt 1              # liblzma/lzma/lzma2_decoder.c:174:24
	movq	56(%r13), %rsi
	movl	$9, %eax
	.loc	0 174 15 is_stmt 0              # liblzma/lzma/lzma2_decoder.c:174:15
	movq	%rsi, %rdi
	subq	%rdx, %rdi
.Ltmp59:
	.loc	0 174 7                         # liblzma/lzma/lzma2_decoder.c:174:7
	jb	.LBB4_35
.Ltmp60:
# %bb.9:                                # %if.end109
                                        #   in Loop: Header=BB4_1 Depth=1
	#DEBUG_VALUE: lzma2_decode:pcoder <- $r13
	#DEBUG_VALUE: lzma2_decode:dict <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma2_decode:in <- $r12
	#DEBUG_VALUE: lzma2_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma2_decode:in_size <- $rbx
	#DEBUG_VALUE: lzma2_decode:coder <- $r13
	#DEBUG_VALUE: in_start <- $rbp
	#DEBUG_VALUE: ret <- $ecx
	#DEBUG_VALUE: in_used <- $rdx
	.loc	0 177 26 is_stmt 1              # liblzma/lzma/lzma2_decoder.c:177:26
	movq	%rdi, 56(%r13)
.Ltmp61:
	.loc	0 180 11                        # liblzma/lzma/lzma2_decoder.c:180:11
	cmpl	$1, %ecx
.Ltmp62:
	.loc	0 180 7 is_stmt 0               # liblzma/lzma/lzma2_decoder.c:180:7
	jne	.LBB4_34
.Ltmp63:
# %bb.10:                               # %if.end115
                                        #   in Loop: Header=BB4_1 Depth=1
	#DEBUG_VALUE: lzma2_decode:pcoder <- $r13
	#DEBUG_VALUE: lzma2_decode:dict <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma2_decode:in <- $r12
	#DEBUG_VALUE: lzma2_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma2_decode:in_size <- $rbx
	#DEBUG_VALUE: lzma2_decode:coder <- $r13
	#DEBUG_VALUE: in_start <- $rbp
	#DEBUG_VALUE: ret <- $ecx
	#DEBUG_VALUE: in_used <- $rdx
	.loc	0 186 30 is_stmt 1              # liblzma/lzma/lzma2_decoder.c:186:30
	cmpq	%rdx, %rsi
.Ltmp64:
	.loc	0 186 7 is_stmt 0               # liblzma/lzma/lzma2_decoder.c:186:7
	jne	.LBB4_35
.Ltmp65:
# %bb.11:                               # %cleanup122
                                        #   in Loop: Header=BB4_1 Depth=1
	#DEBUG_VALUE: lzma2_decode:pcoder <- $r13
	#DEBUG_VALUE: lzma2_decode:dict <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma2_decode:in <- $r12
	#DEBUG_VALUE: lzma2_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma2_decode:in_size <- $rbx
	#DEBUG_VALUE: lzma2_decode:coder <- $r13
	#DEBUG_VALUE: in_start <- $rbp
	#DEBUG_VALUE: ret <- $ecx
	#DEBUG_VALUE: in_used <- $rdx
	.loc	0 189 19 is_stmt 1              # liblzma/lzma/lzma2_decoder.c:189:19
	movl	$0, (%r13)
	jmp	.LBB4_1
.Ltmp66:
.LBB4_12:                               # %sw.bb78
                                        #   in Loop: Header=BB4_1 Depth=1
	#DEBUG_VALUE: lzma2_decode:pcoder <- $r13
	#DEBUG_VALUE: lzma2_decode:dict <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma2_decode:in <- $r12
	#DEBUG_VALUE: lzma2_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma2_decode:in_size <- $rbx
	#DEBUG_VALUE: lzma2_decode:coder <- $r13
	.loc	0 150 41                        # liblzma/lzma/lzma2_decoder.c:150:41
	leaq	1(%rbp), %rax
	movq	%rax, (%r15)
	.loc	0 150 29 is_stmt 0              # liblzma/lzma/lzma2_decoder.c:150:29
	movzbl	(%r12,%rbp), %eax
	.loc	0 150 26                        # liblzma/lzma/lzma2_decoder.c:150:26
	movq	56(%r13), %rcx
	addq	%rcx, %rax
	incq	%rax
	movq	%rax, 56(%r13)
	.loc	0 151 28 is_stmt 1              # liblzma/lzma/lzma2_decoder.c:151:28
	movl	4(%r13), %eax
	.loc	0 151 19 is_stmt 0              # liblzma/lzma/lzma2_decoder.c:151:19
	movl	%eax, (%r13)
	.loc	0 152 3 is_stmt 1               # liblzma/lzma/lzma2_decoder.c:152:3
	jmp	.LBB4_1
.Ltmp67:
.LBB4_13:                               # %sw.bb58
                                        #   in Loop: Header=BB4_1 Depth=1
	#DEBUG_VALUE: lzma2_decode:pcoder <- $r13
	#DEBUG_VALUE: lzma2_decode:dict <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma2_decode:in <- $r12
	#DEBUG_VALUE: lzma2_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma2_decode:in_size <- $rbx
	#DEBUG_VALUE: lzma2_decode:coder <- $r13
	.loc	0 138 43                        # liblzma/lzma/lzma2_decoder.c:138:43
	leaq	1(%rbp), %rax
	movq	%rax, (%r15)
	.loc	0 138 31 is_stmt 0              # liblzma/lzma/lzma2_decoder.c:138:31
	movzbl	(%r12,%rbp), %eax
	.loc	0 140 44 is_stmt 1              # liblzma/lzma/lzma2_decoder.c:140:44
	movq	8(%r13), %rdi
	.loc	0 138 28                        # liblzma/lzma/lzma2_decoder.c:138:28
	movq	48(%r13), %rcx
	leaq	(%rax,%rcx), %rsi
	incq	%rsi
	movq	%rsi, 48(%r13)
	.loc	0 139 19                        # liblzma/lzma/lzma2_decoder.c:139:19
	movl	$3, (%r13)
	.loc	0 140 3                         # liblzma/lzma/lzma2_decoder.c:140:3
	callq	*32(%r13)
.Ltmp68:
	.loc	0 142 3                         # liblzma/lzma/lzma2_decoder.c:142:3
	jmp	.LBB4_1
.Ltmp69:
.LBB4_14:                               # %sw.bb71
                                        #   in Loop: Header=BB4_1 Depth=1
	#DEBUG_VALUE: lzma2_decode:pcoder <- $r13
	#DEBUG_VALUE: lzma2_decode:dict <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma2_decode:in <- $r12
	#DEBUG_VALUE: lzma2_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma2_decode:in_size <- $rbx
	#DEBUG_VALUE: lzma2_decode:coder <- $r13
	.loc	0 145 51                        # liblzma/lzma/lzma2_decoder.c:145:51
	leaq	1(%rbp), %rax
	movq	%rax, (%r15)
	.loc	0 145 39 is_stmt 0              # liblzma/lzma/lzma2_decoder.c:145:39
	movzbl	(%r12,%rbp), %eax
	.loc	0 145 56                        # liblzma/lzma/lzma2_decoder.c:145:56
	shll	$8, %eax
	.loc	0 145 26                        # liblzma/lzma/lzma2_decoder.c:145:26
	movq	%rax, 56(%r13)
	.loc	0 146 19 is_stmt 1              # liblzma/lzma/lzma2_decoder.c:146:19
	movl	$4, (%r13)
	.loc	0 147 3                         # liblzma/lzma/lzma2_decoder.c:147:3
	jmp	.LBB4_1
.Ltmp70:
.LBB4_15:                               # %sw.bb126
                                        #   in Loop: Header=BB4_1 Depth=1
	#DEBUG_VALUE: lzma2_decode:pcoder <- $r13
	#DEBUG_VALUE: lzma2_decode:dict <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma2_decode:in <- $r12
	#DEBUG_VALUE: lzma2_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma2_decode:in_size <- $rbx
	#DEBUG_VALUE: lzma2_decode:coder <- $r13
	#DEBUG_VALUE: dict_write:dict <- undef
	#DEBUG_VALUE: dict_write:in <- $r12
	#DEBUG_VALUE: dict_write:in_pos <- $r15
	#DEBUG_VALUE: dict_write:in_size <- $rbx
	#DEBUG_VALUE: dict_write:left <- [DW_OP_plus_uconst 56, DW_OP_stack_value] $r13
	.loc	0 0 3 is_stmt 0                 # liblzma/lzma/lzma2_decoder.c:0:3
	movq	%r12, %rdi
.Ltmp71:
	.loc	5 214 26 is_stmt 1              # liblzma/lz/lz_decoder.h:214:26
	movq	56(%r13), %r12
.Ltmp72:
	#DEBUG_VALUE: dict_write:in <- $rdi
	#DEBUG_VALUE: lzma2_decode:in <- $rdi
	.loc	5 0 26 is_stmt 0                # liblzma/lz/lz_decoder.h:0:26
	addq	%r12, %rbp
	.loc	5 214 24                        # liblzma/lz/lz_decoder.h:214:24
	cmpq	%r12, %rax
.Ltmp73:
	.loc	5 214 6                         # liblzma/lz/lz_decoder.h:214:6
	cmovbeq	%rbx, %rbp
.Ltmp74:
	#DEBUG_VALUE: dict_write:in_size <- $rbp
	.loc	5 218 10 is_stmt 1              # liblzma/lz/lz_decoder.h:218:10
	movq	(%r14), %rcx
	.loc	5 218 33 is_stmt 0              # liblzma/lz/lz_decoder.h:218:33
	movq	24(%r14), %r9
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
.Ltmp75:
	#DEBUG_VALUE: dict_write:in <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma2_decode:in <- [DW_OP_plus_uconst 8] [$rsp+0]
	.loc	5 217 11 is_stmt 1              # liblzma/lz/lz_decoder.h:217:11
	movq	%r15, %rsi
	movq	%rbp, %rdx
	movq	16(%rsp), %r8                   # 8-byte Reload
	callq	lzma_bufcpy@PLT
.Ltmp76:
	.loc	5 217 8 is_stmt 0               # liblzma/lz/lz_decoder.h:217:8
	movq	%r12, %rcx
	subq	%rax, %rcx
	movq	%rcx, 56(%r13)
.Ltmp77:
	.loc	5 220 12 is_stmt 1              # liblzma/lz/lz_decoder.h:220:12
	movq	8(%r14), %rcx
	movq	%r14, %rdx
	.loc	5 220 16 is_stmt 0              # liblzma/lz/lz_decoder.h:220:16
	cmpq	16(%r14), %rcx
.Ltmp78:
	.loc	5 220 6                         # liblzma/lz/lz_decoder.h:220:6
	jbe	.LBB4_17
.Ltmp79:
# %bb.16:                               # %if.then4.i
                                        #   in Loop: Header=BB4_1 Depth=1
	#DEBUG_VALUE: lzma2_decode:pcoder <- $r13
	#DEBUG_VALUE: lzma2_decode:dict <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma2_decode:in <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma2_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma2_decode:in_size <- $rbx
	#DEBUG_VALUE: lzma2_decode:coder <- $r13
	#DEBUG_VALUE: dict_write:in <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: dict_write:in_pos <- $r15
	#DEBUG_VALUE: dict_write:in_size <- $rbp
	#DEBUG_VALUE: dict_write:left <- [DW_OP_plus_uconst 56, DW_OP_stack_value] $r13
	.loc	5 221 14 is_stmt 1              # liblzma/lz/lz_decoder.h:221:14
	movq	%rcx, 16(%rdx)
.Ltmp80:
.LBB4_17:                               # %dict_write.exit
                                        #   in Loop: Header=BB4_1 Depth=1
	#DEBUG_VALUE: lzma2_decode:pcoder <- $r13
	#DEBUG_VALUE: lzma2_decode:dict <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma2_decode:in <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma2_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma2_decode:in_size <- $rbx
	#DEBUG_VALUE: lzma2_decode:coder <- $r13
	.loc	0 196 30                        # liblzma/lzma/lzma2_decoder.c:196:30
	cmpq	%rax, %r12
.Ltmp81:
	.loc	0 196 7 is_stmt 0               # liblzma/lzma/lzma2_decoder.c:196:7
	jne	.LBB4_33
.Ltmp82:
# %bb.18:                               # %if.end132
                                        #   in Loop: Header=BB4_1 Depth=1
	#DEBUG_VALUE: lzma2_decode:pcoder <- $r13
	#DEBUG_VALUE: lzma2_decode:dict <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma2_decode:in <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma2_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma2_decode:in_size <- $rbx
	#DEBUG_VALUE: lzma2_decode:coder <- $r13
	.loc	0 199 19 is_stmt 1              # liblzma/lzma/lzma2_decoder.c:199:19
	movl	$0, (%r13)
	movq	%rdx, %r14
	movq	8(%rsp), %r12                   # 8-byte Reload
	.loc	0 200 3                         # liblzma/lzma/lzma2_decoder.c:200:3
	jmp	.LBB4_1
.Ltmp83:
.LBB4_19:                               # %sw.bb50
                                        #   in Loop: Header=BB4_1 Depth=1
	#DEBUG_VALUE: lzma2_decode:pcoder <- $r13
	#DEBUG_VALUE: lzma2_decode:dict <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma2_decode:in <- $r12
	#DEBUG_VALUE: lzma2_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma2_decode:in_size <- $rbx
	#DEBUG_VALUE: lzma2_decode:coder <- $r13
	.loc	0 133 54                        # liblzma/lzma/lzma2_decoder.c:133:54
	leaq	1(%rbp), %rax
	movq	%rax, (%r15)
	.loc	0 133 42 is_stmt 0              # liblzma/lzma/lzma2_decoder.c:133:42
	movzbl	(%r12,%rbp), %eax
	.loc	0 133 59                        # liblzma/lzma/lzma2_decoder.c:133:59
	shll	$8, %eax
	.loc	0 133 28                        # liblzma/lzma/lzma2_decoder.c:133:28
	addq	%rax, 48(%r13)
	.loc	0 134 19 is_stmt 1              # liblzma/lzma/lzma2_decoder.c:134:19
	movl	$2, (%r13)
	.loc	0 135 3                         # liblzma/lzma/lzma2_decoder.c:135:3
	jmp	.LBB4_1
.Ltmp84:
.LBB4_20:                               # %sw.bb88
                                        #   in Loop: Header=BB4_1 Depth=1
	#DEBUG_VALUE: lzma2_decode:pcoder <- $r13
	#DEBUG_VALUE: lzma2_decode:dict <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma2_decode:in <- $r12
	#DEBUG_VALUE: lzma2_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma2_decode:in_size <- $rbx
	#DEBUG_VALUE: lzma2_decode:coder <- $r13
	.loc	0 155 60                        # liblzma/lzma/lzma2_decoder.c:155:60
	leaq	1(%rbp), %rax
	movq	%rax, (%r15)
	.loc	0 155 48 is_stmt 0              # liblzma/lzma/lzma2_decoder.c:155:48
	movzbl	(%r12,%rbp), %esi
	movq	(%rsp), %rbp                    # 8-byte Reload
	.loc	0 155 7                         # liblzma/lzma/lzma2_decoder.c:155:7
	movq	%rbp, %rdi
	callq	lzma_lzma_lclppb_decode@PLT
.Ltmp85:
	.loc	0 155 7                         # liblzma/lzma/lzma2_decoder.c:155:7
	testb	%al, %al
	jne	.LBB4_40
.Ltmp86:
# %bb.21:                               # %if.end93
                                        #   in Loop: Header=BB4_1 Depth=1
	#DEBUG_VALUE: lzma2_decode:pcoder <- $r13
	#DEBUG_VALUE: lzma2_decode:dict <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma2_decode:in <- $r12
	#DEBUG_VALUE: lzma2_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma2_decode:in_size <- $rbx
	#DEBUG_VALUE: lzma2_decode:coder <- $r13
	.loc	0 158 33 is_stmt 1              # liblzma/lzma/lzma2_decoder.c:158:33
	movq	8(%r13), %rdi
	.loc	0 158 3 is_stmt 0               # liblzma/lzma/lzma2_decoder.c:158:3
	movq	%rbp, %rsi
	callq	*24(%r13)
.Ltmp87:
	.loc	0 160 19 is_stmt 1              # liblzma/lzma/lzma2_decoder.c:160:19
	movl	$6, (%r13)
	.loc	0 161 3                         # liblzma/lzma/lzma2_decoder.c:161:3
	jmp	.LBB4_1
.Ltmp88:
.LBB4_22:                               # %if.else
                                        #   in Loop: Header=BB4_1 Depth=1
	#DEBUG_VALUE: lzma2_decode:pcoder <- $r13
	#DEBUG_VALUE: lzma2_decode:dict <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma2_decode:in <- $r12
	#DEBUG_VALUE: lzma2_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma2_decode:in_size <- $rbx
	#DEBUG_VALUE: lzma2_decode:coder <- $r13
	.loc	0 80 21                         # liblzma/lzma/lzma2_decoder.c:80:21
	movzbl	65(%r13), %ecx
.Ltmp89:
	.loc	0 80 14 is_stmt 0               # liblzma/lzma/lzma2_decoder.c:80:14
	testb	%cl, %cl
	movq	(%rsp), %rsi                    # 8-byte Reload
	jne	.LBB4_40
.Ltmp90:
.LBB4_23:                               # %if.end13
                                        #   in Loop: Header=BB4_1 Depth=1
	#DEBUG_VALUE: lzma2_decode:pcoder <- $r13
	#DEBUG_VALUE: lzma2_decode:dict <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma2_decode:in <- $r12
	#DEBUG_VALUE: lzma2_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma2_decode:in_size <- $rbx
	#DEBUG_VALUE: lzma2_decode:coder <- $r13
	.loc	0 84 15 is_stmt 1               # liblzma/lzma/lzma2_decoder.c:84:15
	testb	%al, %al
.Ltmp91:
	.loc	0 84 7 is_stmt 0                # liblzma/lzma/lzma2_decoder.c:84:7
	js	.LBB4_26
.Ltmp92:
# %bb.24:                               # %if.else37
                                        #   in Loop: Header=BB4_1 Depth=1
	#DEBUG_VALUE: lzma2_decode:pcoder <- $r13
	#DEBUG_VALUE: lzma2_decode:dict <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma2_decode:in <- $r12
	#DEBUG_VALUE: lzma2_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma2_decode:in_size <- $rbx
	#DEBUG_VALUE: lzma2_decode:coder <- $r13
	.loc	0 113 16 is_stmt 1              # liblzma/lzma/lzma2_decoder.c:113:16
	cmpb	$2, %al
.Ltmp93:
	.loc	0 113 8 is_stmt 0               # liblzma/lzma/lzma2_decoder.c:113:8
	ja	.LBB4_40
.Ltmp94:
# %bb.25:                               # %if.end41
                                        #   in Loop: Header=BB4_1 Depth=1
	#DEBUG_VALUE: lzma2_decode:pcoder <- $r13
	#DEBUG_VALUE: lzma2_decode:dict <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma2_decode:in <- $r12
	#DEBUG_VALUE: lzma2_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma2_decode:in_size <- $rbx
	#DEBUG_VALUE: lzma2_decode:coder <- $r13
	.loc	0 117 20 is_stmt 1              # liblzma/lzma/lzma2_decoder.c:117:20
	movabsq	$30064771075, %rax              # imm = 0x700000003
	movq	%rax, (%r13)
	jmp	.LBB4_31
.Ltmp95:
.LBB4_26:                               # %if.then16
                                        #   in Loop: Header=BB4_1 Depth=1
	#DEBUG_VALUE: lzma2_decode:pcoder <- $r13
	#DEBUG_VALUE: lzma2_decode:dict <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma2_decode:in <- $r12
	#DEBUG_VALUE: lzma2_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma2_decode:in_size <- $rbx
	#DEBUG_VALUE: lzma2_decode:coder <- $r13
	.loc	0 87 48                         # liblzma/lzma/lzma2_decoder.c:87:48
	movl	%eax, %edx
	andl	$31, %edx
	shll	$16, %edx
	.loc	0 87 29 is_stmt 0               # liblzma/lzma/lzma2_decoder.c:87:29
	movq	%rdx, 48(%r13)
	.loc	0 88 20 is_stmt 1               # liblzma/lzma/lzma2_decoder.c:88:20
	movl	$1, (%r13)
.Ltmp96:
	.loc	0 92 16                         # liblzma/lzma/lzma2_decoder.c:92:16
	cmpb	$-64, %al
.Ltmp97:
	.loc	0 92 8 is_stmt 0                # liblzma/lzma/lzma2_decoder.c:92:8
	jb	.LBB4_28
.Ltmp98:
# %bb.27:                               # %if.then21
                                        #   in Loop: Header=BB4_1 Depth=1
	#DEBUG_VALUE: lzma2_decode:pcoder <- $r13
	#DEBUG_VALUE: lzma2_decode:dict <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma2_decode:in <- $r12
	#DEBUG_VALUE: lzma2_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma2_decode:in_size <- $rbx
	#DEBUG_VALUE: lzma2_decode:coder <- $r13
	.loc	0 95 28 is_stmt 1               # liblzma/lzma/lzma2_decoder.c:95:28
	movb	$0, 64(%r13)
	.loc	0 96 26                         # liblzma/lzma/lzma2_decoder.c:96:26
	movl	$5, 4(%r13)
	.loc	0 98 4                          # liblzma/lzma/lzma2_decoder.c:98:4
	jmp	.LBB4_31
.Ltmp99:
.LBB4_28:                               # %if.else23
                                        #   in Loop: Header=BB4_1 Depth=1
	#DEBUG_VALUE: lzma2_decode:pcoder <- $r13
	#DEBUG_VALUE: lzma2_decode:dict <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma2_decode:in <- $r12
	#DEBUG_VALUE: lzma2_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma2_decode:in_size <- $rbx
	#DEBUG_VALUE: lzma2_decode:coder <- $r13
	.loc	0 98 15 is_stmt 0               # liblzma/lzma/lzma2_decoder.c:98:15
	cmpb	$0, 64(%r13)
	jne	.LBB4_40
.Ltmp100:
# %bb.29:                               # %if.else27
                                        #   in Loop: Header=BB4_1 Depth=1
	#DEBUG_VALUE: lzma2_decode:pcoder <- $r13
	#DEBUG_VALUE: lzma2_decode:dict <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma2_decode:in <- $r12
	#DEBUG_VALUE: lzma2_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma2_decode:in_size <- $rbx
	#DEBUG_VALUE: lzma2_decode:coder <- $r13
	.loc	0 102 26 is_stmt 1              # liblzma/lzma/lzma2_decoder.c:102:26
	movl	$6, 4(%r13)
.Ltmp101:
	.loc	0 107 17                        # liblzma/lzma/lzma2_decoder.c:107:17
	cmpb	$-96, %al
.Ltmp102:
	.loc	0 107 9 is_stmt 0               # liblzma/lzma/lzma2_decoder.c:107:9
	jb	.LBB4_31
.Ltmp103:
# %bb.30:                               # %if.then31
                                        #   in Loop: Header=BB4_1 Depth=1
	#DEBUG_VALUE: lzma2_decode:pcoder <- $r13
	#DEBUG_VALUE: lzma2_decode:dict <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma2_decode:in <- $r12
	#DEBUG_VALUE: lzma2_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma2_decode:in_size <- $rbx
	#DEBUG_VALUE: lzma2_decode:coder <- $r13
	.loc	0 108 36 is_stmt 1              # liblzma/lzma/lzma2_decoder.c:108:36
	movq	8(%r13), %rdi
	.loc	0 108 6 is_stmt 0               # liblzma/lzma/lzma2_decoder.c:108:6
	callq	*24(%r13)
.Ltmp104:
	.loc	0 121 14 is_stmt 1              # liblzma/lzma/lzma2_decoder.c:121:14
	movzbl	65(%r13), %ecx
.Ltmp105:
.LBB4_31:                               # %if.end44
                                        #   in Loop: Header=BB4_1 Depth=1
	#DEBUG_VALUE: lzma2_decode:pcoder <- $r13
	#DEBUG_VALUE: lzma2_decode:dict <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma2_decode:in <- $r12
	#DEBUG_VALUE: lzma2_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma2_decode:in_size <- $rbx
	#DEBUG_VALUE: lzma2_decode:coder <- $r13
	.loc	0 121 7 is_stmt 0               # liblzma/lzma/lzma2_decoder.c:121:7
	testb	$1, %cl
	je	.LBB4_1
.Ltmp106:
# %bb.32:                               # %if.then47
	#DEBUG_VALUE: lzma2_decode:pcoder <- $r13
	#DEBUG_VALUE: lzma2_decode:dict <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma2_decode:in <- $r12
	#DEBUG_VALUE: lzma2_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma2_decode:in_size <- $rbx
	#DEBUG_VALUE: lzma2_decode:coder <- $r13
	.loc	0 124 33 is_stmt 1              # liblzma/lzma/lzma2_decoder.c:124:33
	movb	$0, 65(%r13)
.Ltmp107:
	#DEBUG_VALUE: dict_reset:dict <- undef
	.loc	5 230 19                        # liblzma/lz/lz_decoder.h:230:19
	movb	$1, 40(%r14)
.Ltmp108:
.LBB4_33:
	#DEBUG_VALUE: lzma2_decode:pcoder <- $r13
	#DEBUG_VALUE: lzma2_decode:dict <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma2_decode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma2_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma2_decode:in_size <- $rbx
	#DEBUG_VALUE: lzma2_decode:coder <- $r13
	.loc	5 0 19 is_stmt 0                # liblzma/lz/lz_decoder.h:0:19
	xorl	%eax, %eax
	jmp	.LBB4_35
.Ltmp109:
.LBB4_34:
	#DEBUG_VALUE: lzma2_decode:pcoder <- $r13
	#DEBUG_VALUE: lzma2_decode:dict <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma2_decode:in <- $r12
	#DEBUG_VALUE: lzma2_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma2_decode:in_size <- $rbx
	#DEBUG_VALUE: lzma2_decode:coder <- $r13
	#DEBUG_VALUE: in_start <- $rbp
	#DEBUG_VALUE: ret <- $ecx
	#DEBUG_VALUE: in_used <- $rdx
	movl	%ecx, %eax
	jmp	.LBB4_35
.Ltmp110:
.LBB4_40:
	#DEBUG_VALUE: lzma2_decode:pcoder <- $r13
	#DEBUG_VALUE: lzma2_decode:dict <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma2_decode:in <- $r12
	#DEBUG_VALUE: lzma2_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma2_decode:in_size <- $rbx
	#DEBUG_VALUE: lzma2_decode:coder <- $r13
	movl	$9, %eax
	.loc	0 155 7 is_stmt 1               # liblzma/lzma/lzma2_decoder.c:155:7
	jmp	.LBB4_35
.Ltmp111:
.LBB4_36:
	#DEBUG_VALUE: lzma2_decode:pcoder <- $r13
	#DEBUG_VALUE: lzma2_decode:dict <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma2_decode:in <- $r12
	#DEBUG_VALUE: lzma2_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma2_decode:in_size <- $rbx
	#DEBUG_VALUE: lzma2_decode:coder <- $r13
	.loc	0 0 7 is_stmt 0                 # liblzma/lzma/lzma2_decoder.c:0:7
	movl	$11, %eax
	.loc	0 66 2 is_stmt 1                # liblzma/lzma/lzma2_decoder.c:66:2
	jmp	.LBB4_35
.Ltmp112:
.LBB4_37:
	#DEBUG_VALUE: lzma2_decode:pcoder <- $r13
	#DEBUG_VALUE: lzma2_decode:dict <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma2_decode:in <- $r12
	#DEBUG_VALUE: lzma2_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma2_decode:in_size <- $rbx
	#DEBUG_VALUE: lzma2_decode:coder <- $r13
	.loc	0 0 2 is_stmt 0                 # liblzma/lzma/lzma2_decoder.c:0:2
	movl	$1, %eax
.Ltmp113:
.LBB4_35:                               # %cleanup134
	#DEBUG_VALUE: lzma2_decode:pcoder <- $r13
	#DEBUG_VALUE: lzma2_decode:dict <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma2_decode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma2_decode:in_pos <- $r15
	#DEBUG_VALUE: lzma2_decode:in_size <- $rbx
	#DEBUG_VALUE: lzma2_decode:coder <- $r13
	.loc	0 209 1 epilogue_begin is_stmt 1 # liblzma/lzma/lzma2_decoder.c:209:1
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
.Ltmp114:
	#DEBUG_VALUE: lzma2_decode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
.Ltmp115:
	#DEBUG_VALUE: lzma2_decode:pcoder <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
.Ltmp116:
	#DEBUG_VALUE: lzma2_decode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Ltmp117:
.Lfunc_end4:
	.size	lzma2_decode, .Lfunc_end4-lzma2_decode
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI4_0:
	.quad	.LBB4_4
	.quad	.LBB4_19
	.quad	.LBB4_13
	.quad	.LBB4_14
	.quad	.LBB4_12
	.quad	.LBB4_20
	.quad	.LBB4_8
	.quad	.LBB4_15
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function lzma2_decoder_end
	.type	lzma2_decoder_end,@function
lzma2_decoder_end:                      # @lzma2_decoder_end
.Lfunc_begin5:
	.loc	0 214 0                         # liblzma/lzma/lzma2_decoder.c:214:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma2_decoder_end:pcoder <- $rdi
	#DEBUG_VALUE: lzma2_decoder_end:allocator <- $rsi
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
.Ltmp118:
	#DEBUG_VALUE: lzma2_decoder_end:coder <- $rdi
	movq	%rsi, %rbx
	movq	%rdi, %r14
.Ltmp119:
	.loc	0 217 24 prologue_end           # liblzma/lzma/lzma2_decoder.c:217:24
	movq	8(%rdi), %rdi
.Ltmp120:
	#DEBUG_VALUE: lzma2_decoder_end:coder <- $r14
	#DEBUG_VALUE: lzma2_decoder_end:pcoder <- $r14
	.loc	0 217 2 is_stmt 0               # liblzma/lzma/lzma2_decoder.c:217:2
	callq	lzma_free@PLT
.Ltmp121:
	#DEBUG_VALUE: lzma2_decoder_end:allocator <- $rbx
	.loc	0 219 2 is_stmt 1               # liblzma/lzma/lzma2_decoder.c:219:2
	movq	%r14, %rdi
	movq	%rbx, %rsi
	.loc	0 219 2 epilogue_begin is_stmt 0 # liblzma/lzma/lzma2_decoder.c:219:2
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp122:
	#DEBUG_VALUE: lzma2_decoder_end:allocator <- $rsi
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp123:
	#DEBUG_VALUE: lzma2_decoder_end:coder <- $rdi
	#DEBUG_VALUE: lzma2_decoder_end:pcoder <- $rdi
	.cfi_def_cfa_offset 8
	jmp	lzma_free@PLT                   # TAILCALL
.Ltmp124:
.Lfunc_end5:
	.size	lzma2_decoder_end, .Lfunc_end5-lzma2_decoder_end
	.cfi_endproc
                                        # -- End function
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	24                              # Offset entry count
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
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp4-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp4-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp16-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
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
	.uleb128 .Ltmp7-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp7-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp12-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp12-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp20-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          #   starting offset
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
	.uleb128 .Ltmp5-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp5-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp12-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp12-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp21-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp21-.Lfunc_begin0          #   starting offset
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
	.uleb128 .Ltmp12-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp12-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp22-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp22-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp12-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp25-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp43-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp43-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp33-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp33-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp44-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp44-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp33-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp33-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp33-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp40-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp41-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp42-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp47-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp115-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp115-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp47-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp47-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp72-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp72-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp75-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp83-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp83-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp108-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp108-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp109-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp109-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp113-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp113-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp47-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp116-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp116-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp47-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp114-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp114-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	88                              # DW_OP_reg8
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp46-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp47-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp115-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp57-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp66-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp58-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp66-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp72-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp72-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp75-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp80-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp74-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp74-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp80-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp120-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp120-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp123-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp123-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp124-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc22:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp121-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp121-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp122-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp122-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp124-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc23:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp118-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp120-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp120-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp123-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp123-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp124-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
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
	.byte	6                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
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
	.byte	9                               # Abbreviation Code
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
	.byte	13                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
	.byte	55                              # DW_TAG_restrict_type
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
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
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
	.byte	20                              # Abbreviation Code
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
	.byte	21                              # Abbreviation Code
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
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	23                              # Abbreviation Code
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
	.byte	24                              # Abbreviation Code
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
	.byte	27                              # Abbreviation Code
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
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	30                              # Abbreviation Code
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
	.byte	31                              # Abbreviation Code
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
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	36                              # Abbreviation Code
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
	.byte	37                              # Abbreviation Code
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
	.byte	41                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	42                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
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
	.byte	45                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xc:0x8cc DW_TAG_compile_unit
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
	.byte	2                               # Abbrev [2] 0x86:0xf DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x8e:0x3 DW_TAG_enumerator
	.byte	24                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x91:0x3 DW_TAG_enumerator
	.byte	25                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x95:0x18 DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x9d:0x3 DW_TAG_enumerator
	.byte	26                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xa0:0x3 DW_TAG_enumerator
	.byte	27                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xa3:0x3 DW_TAG_enumerator
	.byte	28                              # DW_AT_name
	.byte	18                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xa6:0x3 DW_TAG_enumerator
	.byte	29                              # DW_AT_name
	.byte	19                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xa9:0x3 DW_TAG_enumerator
	.byte	30                              # DW_AT_name
	.byte	20                              # DW_AT_const_value
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
	.byte	5                               # Abbrev [5] 0xb9:0x22 DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	40                              # DW_AT_name
	.byte	4                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0xc2:0x3 DW_TAG_enumerator
	.byte	32                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xc5:0x3 DW_TAG_enumerator
	.byte	33                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xc8:0x3 DW_TAG_enumerator
	.byte	34                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xcb:0x3 DW_TAG_enumerator
	.byte	35                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xce:0x3 DW_TAG_enumerator
	.byte	36                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xd1:0x3 DW_TAG_enumerator
	.byte	37                              # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xd4:0x3 DW_TAG_enumerator
	.byte	38                              # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xd7:0x3 DW_TAG_enumerator
	.byte	39                              # DW_AT_name
	.byte	7                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0xdb:0x1 DW_TAG_pointer_type
	.byte	7                               # Abbrev [7] 0xdc:0x5 DW_TAG_pointer_type
	.long	225                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xe1:0x4e DW_TAG_structure_type
	.byte	106                             # DW_AT_name
	.byte	184                             # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xe6:0x9 DW_TAG_member
	.byte	40                              # DW_AT_name
	.long	185                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0xef:0x9 DW_TAG_member
	.byte	41                              # DW_AT_name
	.long	185                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0xf8:0x9 DW_TAG_member
	.byte	42                              # DW_AT_name
	.long	303                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x101:0x9 DW_TAG_member
	.byte	71                              # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x10a:0x9 DW_TAG_member
	.byte	72                              # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x113:0x9 DW_TAG_member
	.byte	73                              # DW_AT_name
	.long	533                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x11c:0x9 DW_TAG_member
	.byte	74                              # DW_AT_name
	.long	533                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	65                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x125:0x9 DW_TAG_member
	.byte	75                              # DW_AT_name
	.long	736                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x12f:0x8 DW_TAG_typedef
	.long	311                             # DW_AT_type
	.byte	70                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x137:0x32 DW_TAG_structure_type
	.byte	40                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x13b:0x9 DW_TAG_member
	.byte	43                              # DW_AT_name
	.long	361                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x144:0x9 DW_TAG_member
	.byte	45                              # DW_AT_name
	.long	370                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x14d:0x9 DW_TAG_member
	.byte	60                              # DW_AT_name
	.long	562                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x156:0x9 DW_TAG_member
	.byte	61                              # DW_AT_name
	.long	585                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x15f:0x9 DW_TAG_member
	.byte	65                              # DW_AT_name
	.long	626                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x169:0x5 DW_TAG_pointer_type
	.long	366                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x16e:0x4 DW_TAG_typedef
	.byte	44                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x172:0x5 DW_TAG_pointer_type
	.long	375                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x177:0x1f DW_TAG_subroutine_type
	.long	406                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	14                              # Abbrev [14] 0x17c:0x5 DW_TAG_formal_parameter
	.long	414                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x181:0x5 DW_TAG_formal_parameter
	.long	419                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x186:0x5 DW_TAG_formal_parameter
	.long	537                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x18b:0x5 DW_TAG_formal_parameter
	.long	552                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x190:0x5 DW_TAG_formal_parameter
	.long	521                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x196:0x8 DW_TAG_typedef
	.long	43                              # DW_AT_type
	.byte	46                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x19e:0x5 DW_TAG_restrict_type
	.long	361                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x1a3:0x5 DW_TAG_restrict_type
	.long	424                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x1a8:0x5 DW_TAG_pointer_type
	.long	429                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x1ad:0x8 DW_TAG_typedef
	.long	437                             # DW_AT_type
	.byte	59                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x1b5:0x3b DW_TAG_structure_type
	.byte	48                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x1b9:0x9 DW_TAG_member
	.byte	47                              # DW_AT_name
	.long	496                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1c2:0x9 DW_TAG_member
	.byte	51                              # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1cb:0x9 DW_TAG_member
	.byte	54                              # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1d4:0x9 DW_TAG_member
	.byte	55                              # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1dd:0x9 DW_TAG_member
	.byte	56                              # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1e6:0x9 DW_TAG_member
	.byte	57                              # DW_AT_name
	.long	533                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x1f0:0x5 DW_TAG_pointer_type
	.long	501                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x1f5:0x8 DW_TAG_typedef
	.long	509                             # DW_AT_type
	.byte	50                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x1fd:0x8 DW_TAG_typedef
	.long	517                             # DW_AT_type
	.byte	49                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x205:0x4 DW_TAG_base_type
	.byte	48                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x209:0x8 DW_TAG_typedef
	.long	529                             # DW_AT_type
	.byte	53                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x211:0x4 DW_TAG_base_type
	.byte	52                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x215:0x4 DW_TAG_base_type
	.byte	58                              # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	15                              # Abbrev [15] 0x219:0x5 DW_TAG_restrict_type
	.long	542                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x21e:0x5 DW_TAG_pointer_type
	.long	547                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x223:0x5 DW_TAG_const_type
	.long	501                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x228:0x5 DW_TAG_restrict_type
	.long	557                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x22d:0x5 DW_TAG_pointer_type
	.long	521                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x232:0x5 DW_TAG_pointer_type
	.long	567                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x237:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	14                              # Abbrev [14] 0x238:0x5 DW_TAG_formal_parameter
	.long	361                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x23d:0x5 DW_TAG_formal_parameter
	.long	579                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x243:0x5 DW_TAG_pointer_type
	.long	584                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x248:0x1 DW_TAG_const_type
	.byte	7                               # Abbrev [7] 0x249:0x5 DW_TAG_pointer_type
	.long	590                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x24e:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	14                              # Abbrev [14] 0x24f:0x5 DW_TAG_formal_parameter
	.long	361                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x254:0x5 DW_TAG_formal_parameter
	.long	602                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x25a:0x8 DW_TAG_typedef
	.long	610                             # DW_AT_type
	.byte	64                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x262:0x8 DW_TAG_typedef
	.long	618                             # DW_AT_type
	.byte	63                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x26a:0x8 DW_TAG_typedef
	.long	529                             # DW_AT_type
	.byte	62                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x272:0x5 DW_TAG_pointer_type
	.long	631                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x277:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	14                              # Abbrev [14] 0x278:0x5 DW_TAG_formal_parameter
	.long	361                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x27d:0x5 DW_TAG_formal_parameter
	.long	643                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x283:0x5 DW_TAG_pointer_type
	.long	648                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x288:0x9 DW_TAG_typedef
	.long	657                             # DW_AT_type
	.byte	69                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	403                             # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x291:0x24 DW_TAG_structure_type
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.short	341                             # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0x296:0xa DW_TAG_member
	.byte	66                              # DW_AT_name
	.long	693                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	376                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x2a0:0xa DW_TAG_member
	.byte	67                              # DW_AT_name
	.long	719                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x2aa:0xa DW_TAG_member
	.byte	68                              # DW_AT_name
	.long	219                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	401                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x2b5:0x5 DW_TAG_pointer_type
	.long	698                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x2ba:0x15 DW_TAG_subroutine_type
	.long	219                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	14                              # Abbrev [14] 0x2bf:0x5 DW_TAG_formal_parameter
	.long	219                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x2c4:0x5 DW_TAG_formal_parameter
	.long	521                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x2c9:0x5 DW_TAG_formal_parameter
	.long	521                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x2cf:0x5 DW_TAG_pointer_type
	.long	724                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x2d4:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	14                              # Abbrev [14] 0x2d5:0x5 DW_TAG_formal_parameter
	.long	219                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x2da:0x5 DW_TAG_formal_parameter
	.long	219                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x2e0:0x9 DW_TAG_typedef
	.long	745                             # DW_AT_type
	.byte	105                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	399                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x2e9:0xf2 DW_TAG_structure_type
	.byte	112                             # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x2ed:0x9 DW_TAG_member
	.byte	76                              # DW_AT_name
	.long	987                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x2f6:0x9 DW_TAG_member
	.byte	79                              # DW_AT_name
	.long	542                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	240                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x2ff:0x9 DW_TAG_member
	.byte	80                              # DW_AT_name
	.long	987                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	254                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x308:0xa DW_TAG_member
	.byte	81                              # DW_AT_name
	.long	987                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	281                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x312:0xa DW_TAG_member
	.byte	82                              # DW_AT_name
	.long	987                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	293                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x31c:0xa DW_TAG_member
	.byte	83                              # DW_AT_name
	.long	987                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	316                             # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x326:0xa DW_TAG_member
	.byte	84                              # DW_AT_name
	.long	1003                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	322                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x330:0xa DW_TAG_member
	.byte	86                              # DW_AT_name
	.long	987                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	342                             # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x33a:0xa DW_TAG_member
	.byte	87                              # DW_AT_name
	.long	1011                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	345                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x344:0xa DW_TAG_member
	.byte	89                              # DW_AT_name
	.long	987                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	375                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x34e:0xa DW_TAG_member
	.byte	90                              # DW_AT_name
	.long	987                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	384                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x358:0xa DW_TAG_member
	.byte	91                              # DW_AT_name
	.long	987                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	385                             # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x362:0xa DW_TAG_member
	.byte	92                              # DW_AT_name
	.long	987                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	386                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x36c:0xa DW_TAG_member
	.byte	93                              # DW_AT_name
	.long	987                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	387                             # DW_AT_decl_line
	.byte	60                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x376:0xa DW_TAG_member
	.byte	94                              # DW_AT_name
	.long	987                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	388                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x380:0xa DW_TAG_member
	.byte	95                              # DW_AT_name
	.long	987                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	389                             # DW_AT_decl_line
	.byte	68                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x38a:0xa DW_TAG_member
	.byte	96                              # DW_AT_name
	.long	987                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x394:0xa DW_TAG_member
	.byte	97                              # DW_AT_name
	.long	987                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	391                             # DW_AT_decl_line
	.byte	76                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x39e:0xa DW_TAG_member
	.byte	98                              # DW_AT_name
	.long	1019                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	392                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x3a8:0xa DW_TAG_member
	.byte	100                             # DW_AT_name
	.long	1019                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	393                             # DW_AT_decl_line
	.byte	84                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x3b2:0xa DW_TAG_member
	.byte	101                             # DW_AT_name
	.long	1019                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	394                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x3bc:0xa DW_TAG_member
	.byte	102                             # DW_AT_name
	.long	1019                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	395                             # DW_AT_decl_line
	.byte	92                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x3c6:0xa DW_TAG_member
	.byte	103                             # DW_AT_name
	.long	219                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	396                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x3d0:0xa DW_TAG_member
	.byte	104                             # DW_AT_name
	.long	219                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	397                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x3db:0x8 DW_TAG_typedef
	.long	995                             # DW_AT_type
	.byte	78                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x3e3:0x8 DW_TAG_typedef
	.long	88                              # DW_AT_type
	.byte	77                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x3eb:0x8 DW_TAG_typedef
	.long	134                             # DW_AT_type
	.byte	85                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	155                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x3f3:0x8 DW_TAG_typedef
	.long	149                             # DW_AT_type
	.byte	88                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x3fb:0x8 DW_TAG_typedef
	.long	173                             # DW_AT_type
	.byte	99                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x403:0x34 DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	138                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	253                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	406                             # DW_AT_type
                                        # DW_AT_external
	.byte	23                              # Abbrev [23] 0x412:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	144                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	253                             # DW_AT_decl_line
	.long	1108                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0x41c:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	145                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	253                             # DW_AT_decl_line
	.long	643                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x426:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.byte	146                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	254                             # DW_AT_decl_line
	.long	1435                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0x430:0x6 DW_TAG_call_site
	.long	1079                            # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	1                               # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x437:0x1d DW_TAG_subprogram
	.byte	107                             # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	406                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	14                              # Abbrev [14] 0x43f:0x5 DW_TAG_formal_parameter
	.long	1108                            # DW_AT_type
	.byte	14                              # Abbrev [14] 0x444:0x5 DW_TAG_formal_parameter
	.long	643                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x449:0x5 DW_TAG_formal_parameter
	.long	1435                            # DW_AT_type
	.byte	14                              # Abbrev [14] 0x44e:0x5 DW_TAG_formal_parameter
	.long	1520                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x454:0x5 DW_TAG_pointer_type
	.long	1113                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x459:0x8 DW_TAG_typedef
	.long	1121                            # DW_AT_type
	.byte	120                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x461:0x4e DW_TAG_structure_type
	.byte	119                             # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x466:0x9 DW_TAG_member
	.byte	43                              # DW_AT_name
	.long	361                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x46f:0x9 DW_TAG_member
	.byte	108                             # DW_AT_name
	.long	602                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x478:0x9 DW_TAG_member
	.byte	109                             # DW_AT_name
	.long	1199                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x481:0x9 DW_TAG_member
	.byte	45                              # DW_AT_name
	.long	1207                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x48a:0x9 DW_TAG_member
	.byte	65                              # DW_AT_name
	.long	1285                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x493:0x9 DW_TAG_member
	.byte	114                             # DW_AT_name
	.long	1293                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x49c:0x9 DW_TAG_member
	.byte	116                             # DW_AT_name
	.long	1327                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x4a5:0x9 DW_TAG_member
	.byte	117                             # DW_AT_name
	.long	1363                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x4af:0x8 DW_TAG_typedef
	.long	529                             # DW_AT_type
	.byte	110                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x4b7:0x8 DW_TAG_typedef
	.long	1215                            # DW_AT_type
	.byte	112                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x4bf:0x5 DW_TAG_pointer_type
	.long	1220                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x4c4:0x33 DW_TAG_subroutine_type
	.long	406                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	14                              # Abbrev [14] 0x4c9:0x5 DW_TAG_formal_parameter
	.long	361                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x4ce:0x5 DW_TAG_formal_parameter
	.long	643                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x4d3:0x5 DW_TAG_formal_parameter
	.long	537                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x4d8:0x5 DW_TAG_formal_parameter
	.long	552                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x4dd:0x5 DW_TAG_formal_parameter
	.long	521                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x4e2:0x5 DW_TAG_formal_parameter
	.long	1271                            # DW_AT_type
	.byte	14                              # Abbrev [14] 0x4e7:0x5 DW_TAG_formal_parameter
	.long	552                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x4ec:0x5 DW_TAG_formal_parameter
	.long	521                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x4f1:0x5 DW_TAG_formal_parameter
	.long	1276                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x4f7:0x5 DW_TAG_restrict_type
	.long	496                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x4fc:0x9 DW_TAG_typedef
	.long	92                              # DW_AT_type
	.byte	111                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	322                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x505:0x8 DW_TAG_typedef
	.long	626                             # DW_AT_type
	.byte	113                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x50d:0x5 DW_TAG_pointer_type
	.long	1298                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x512:0xb DW_TAG_subroutine_type
	.long	1309                            # DW_AT_type
                                        # DW_AT_prototyped
	.byte	14                              # Abbrev [14] 0x517:0x5 DW_TAG_formal_parameter
	.long	1317                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x51d:0x8 DW_TAG_typedef
	.long	113                             # DW_AT_type
	.byte	115                             # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x525:0x5 DW_TAG_pointer_type
	.long	1322                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x52a:0x5 DW_TAG_const_type
	.long	366                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x52f:0x5 DW_TAG_pointer_type
	.long	1332                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x534:0x1a DW_TAG_subroutine_type
	.long	406                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	14                              # Abbrev [14] 0x539:0x5 DW_TAG_formal_parameter
	.long	361                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x53e:0x5 DW_TAG_formal_parameter
	.long	1358                            # DW_AT_type
	.byte	14                              # Abbrev [14] 0x543:0x5 DW_TAG_formal_parameter
	.long	1358                            # DW_AT_type
	.byte	14                              # Abbrev [14] 0x548:0x5 DW_TAG_formal_parameter
	.long	610                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x54e:0x5 DW_TAG_pointer_type
	.long	610                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x553:0x5 DW_TAG_pointer_type
	.long	1368                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x558:0x1a DW_TAG_subroutine_type
	.long	406                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	14                              # Abbrev [14] 0x55d:0x5 DW_TAG_formal_parameter
	.long	361                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x562:0x5 DW_TAG_formal_parameter
	.long	643                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x567:0x5 DW_TAG_formal_parameter
	.long	1394                            # DW_AT_type
	.byte	14                              # Abbrev [14] 0x56c:0x5 DW_TAG_formal_parameter
	.long	1394                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x572:0x5 DW_TAG_pointer_type
	.long	1399                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x577:0x5 DW_TAG_const_type
	.long	1404                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x57c:0x8 DW_TAG_typedef
	.long	1412                            # DW_AT_type
	.byte	118                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x584:0x17 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x588:0x9 DW_TAG_member
	.byte	108                             # DW_AT_name
	.long	602                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x591:0x9 DW_TAG_member
	.byte	75                              # DW_AT_name
	.long	219                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x59b:0x5 DW_TAG_pointer_type
	.long	1440                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x5a0:0x5 DW_TAG_const_type
	.long	1445                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x5a5:0x8 DW_TAG_typedef
	.long	1453                            # DW_AT_type
	.byte	123                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x5ad:0x21 DW_TAG_structure_type
	.byte	122                             # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x5b2:0x9 DW_TAG_member
	.byte	108                             # DW_AT_name
	.long	602                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x5bb:0x9 DW_TAG_member
	.byte	109                             # DW_AT_name
	.long	1486                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x5c4:0x9 DW_TAG_member
	.byte	75                              # DW_AT_name
	.long	219                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x5ce:0x8 DW_TAG_typedef
	.long	1494                            # DW_AT_type
	.byte	121                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x5d6:0x5 DW_TAG_pointer_type
	.long	1499                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x5db:0x15 DW_TAG_subroutine_type
	.long	406                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	14                              # Abbrev [14] 0x5e0:0x5 DW_TAG_formal_parameter
	.long	1108                            # DW_AT_type
	.byte	14                              # Abbrev [14] 0x5e5:0x5 DW_TAG_formal_parameter
	.long	643                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x5ea:0x5 DW_TAG_formal_parameter
	.long	1435                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x5f0:0x5 DW_TAG_pointer_type
	.long	1525                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x5f5:0x1a DW_TAG_subroutine_type
	.long	406                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	14                              # Abbrev [14] 0x5fa:0x5 DW_TAG_formal_parameter
	.long	1551                            # DW_AT_type
	.byte	14                              # Abbrev [14] 0x5ff:0x5 DW_TAG_formal_parameter
	.long	643                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x604:0x5 DW_TAG_formal_parameter
	.long	579                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x609:0x5 DW_TAG_formal_parameter
	.long	1556                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x60f:0x5 DW_TAG_pointer_type
	.long	303                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x614:0x5 DW_TAG_pointer_type
	.long	1561                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x619:0x8 DW_TAG_typedef
	.long	1569                            # DW_AT_type
	.byte	124                             # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x621:0x20 DW_TAG_structure_type
	.byte	24                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x625:0x9 DW_TAG_member
	.byte	76                              # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x62e:0x9 DW_TAG_member
	.byte	79                              # DW_AT_name
	.long	542                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x637:0x9 DW_TAG_member
	.byte	80                              # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x641:0x49 DW_TAG_subprogram
	.byte	2                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	139                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	406                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x650:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	147                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.long	1551                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x659:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	145                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.long	643                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x662:0x9 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	148                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.long	579                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x66b:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	149                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.long	1556                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x674:0x9 DW_TAG_variable
	.byte	4                               # DW_AT_location
	.byte	75                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	240                             # DW_AT_decl_line
	.long	2228                            # DW_AT_type
	.byte	29                              # Abbrev [29] 0x67d:0x6 DW_TAG_call_site
	.long	1674                            # DW_AT_call_origin
	.byte	3                               # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x683:0x6 DW_TAG_call_site
	.long	1693                            # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	4                               # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x68a:0x13 DW_TAG_subprogram
	.byte	125                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	211                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	219                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	14                              # Abbrev [14] 0x692:0x5 DW_TAG_formal_parameter
	.long	521                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x697:0x5 DW_TAG_formal_parameter
	.long	643                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x69d:0x1d DW_TAG_subprogram
	.byte	126                             # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	406                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	14                              # Abbrev [14] 0x6a5:0x5 DW_TAG_formal_parameter
	.long	1551                            # DW_AT_type
	.byte	14                              # Abbrev [14] 0x6aa:0x5 DW_TAG_formal_parameter
	.long	643                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x6af:0x5 DW_TAG_formal_parameter
	.long	579                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x6b4:0x5 DW_TAG_formal_parameter
	.long	1556                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0x6ba:0x21 DW_TAG_subprogram
	.byte	5                               # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	140                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	266                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	610                             # DW_AT_type
                                        # DW_AT_external
	.byte	31                              # Abbrev [31] 0x6ca:0xa DW_TAG_formal_parameter
	.byte	5                               # DW_AT_location
	.byte	75                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	266                             # DW_AT_decl_line
	.long	579                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x6d4:0x6 DW_TAG_call_site
	.long	1755                            # DW_AT_call_origin
	.byte	6                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x6db:0xe DW_TAG_subprogram
	.byte	127                             # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	610                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	14                              # Abbrev [14] 0x6e3:0x5 DW_TAG_formal_parameter
	.long	579                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0x6e9:0x49 DW_TAG_subprogram
	.byte	7                               # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	141                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	274                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	406                             # DW_AT_type
                                        # DW_AT_external
	.byte	31                              # Abbrev [31] 0x6f9:0xa DW_TAG_formal_parameter
	.byte	6                               # DW_AT_location
	.byte	75                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	274                             # DW_AT_decl_line
	.long	2238                            # DW_AT_type
	.byte	31                              # Abbrev [31] 0x703:0xa DW_TAG_formal_parameter
	.byte	7                               # DW_AT_location
	.byte	145                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	274                             # DW_AT_decl_line
	.long	643                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0x70d:0xa DW_TAG_formal_parameter
	.byte	8                               # DW_AT_location
	.byte	150                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	275                             # DW_AT_decl_line
	.long	542                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0x717:0xa DW_TAG_formal_parameter
	.byte	9                               # DW_AT_location
	.byte	151                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	275                             # DW_AT_decl_line
	.long	521                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x721:0xa DW_TAG_variable
	.byte	10                              # DW_AT_location
	.byte	148                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	288                             # DW_AT_decl_line
	.long	2157                            # DW_AT_type
	.byte	29                              # Abbrev [29] 0x72b:0x6 DW_TAG_call_site
	.long	1674                            # DW_AT_call_origin
	.byte	8                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x732:0x2d DW_TAG_subprogram
	.byte	128                             # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	203                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	34                              # Abbrev [34] 0x736:0x8 DW_TAG_formal_parameter
	.byte	129                             # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	203                             # DW_AT_decl_line
	.long	419                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0x73e:0x8 DW_TAG_formal_parameter
	.byte	130                             # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	203                             # DW_AT_decl_line
	.long	537                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0x746:0x8 DW_TAG_formal_parameter
	.byte	131                             # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	204                             # DW_AT_decl_line
	.long	552                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0x74e:0x8 DW_TAG_formal_parameter
	.byte	132                             # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	204                             # DW_AT_decl_line
	.long	521                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0x756:0x8 DW_TAG_formal_parameter
	.byte	133                             # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
	.long	552                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x75f:0xd DW_TAG_subprogram
	.byte	134                             # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	228                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	34                              # Abbrev [34] 0x763:0x8 DW_TAG_formal_parameter
	.byte	129                             # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	228                             # DW_AT_decl_line
	.long	424                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x76c:0xc7 DW_TAG_subprogram
	.byte	9                               # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	142                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	406                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x77b:0x9 DW_TAG_formal_parameter
	.byte	11                              # DW_AT_location
	.byte	152                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.long	361                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x784:0x9 DW_TAG_formal_parameter
	.byte	12                              # DW_AT_location
	.byte	129                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.long	419                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x78d:0x9 DW_TAG_formal_parameter
	.byte	13                              # DW_AT_location
	.byte	130                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.long	537                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x796:0x9 DW_TAG_formal_parameter
	.byte	14                              # DW_AT_location
	.byte	131                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.long	552                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x79f:0x9 DW_TAG_formal_parameter
	.byte	15                              # DW_AT_location
	.byte	132                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.long	521                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0x7a8:0x9 DW_TAG_variable
	.byte	16                              # DW_AT_location
	.byte	43                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.long	2243                            # DW_AT_type
	.byte	35                              # Abbrev [35] 0x7b1:0x18 DW_TAG_lexical_block
	.byte	0                               # DW_AT_ranges
	.byte	36                              # Abbrev [36] 0x7b3:0x8 DW_TAG_variable
	.byte	156                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.long	2258                            # DW_AT_type
	.byte	37                              # Abbrev [37] 0x7bb:0xd DW_TAG_inlined_subroutine
	.long	1887                            # DW_AT_abstract_origin
	.byte	10                              # DW_AT_low_pc
	.long	.Ltmp108-.Ltmp107               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	125                             # DW_AT_call_line
	.byte	4                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	38                              # Abbrev [38] 0x7c9:0x23 DW_TAG_lexical_block
	.byte	11                              # DW_AT_low_pc
	.long	.Ltmp66-.Ltmp55                 # DW_AT_high_pc
	.byte	39                              # Abbrev [39] 0x7cf:0xa DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	86
	.byte	153                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.long	2248                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x7d9:0x9 DW_TAG_variable
	.byte	17                              # DW_AT_location
	.byte	154                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	169                             # DW_AT_decl_line
	.long	2253                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x7e2:0x9 DW_TAG_variable
	.byte	18                              # DW_AT_location
	.byte	155                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.long	2248                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x7ec:0x2a DW_TAG_inlined_subroutine
	.long	1842                            # DW_AT_abstract_origin
	.byte	12                              # DW_AT_low_pc
	.long	.Ltmp80-.Ltmp71                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	195                             # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	41                              # Abbrev [41] 0x7f9:0x6 DW_TAG_formal_parameter
	.byte	19                              # DW_AT_location
	.long	1854                            # DW_AT_abstract_origin
	.byte	42                              # Abbrev [42] 0x7ff:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	95
	.long	1862                            # DW_AT_abstract_origin
	.byte	41                              # Abbrev [41] 0x806:0x6 DW_TAG_formal_parameter
	.byte	20                              # DW_AT_location
	.long	1870                            # DW_AT_abstract_origin
	.byte	42                              # Abbrev [42] 0x80c:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	125
	.byte	56
	.byte	159
	.long	1878                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	43                              # Abbrev [43] 0x816:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	93
	.byte	13                              # DW_AT_call_return_pc
	.byte	43                              # Abbrev [43] 0x81a:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	93
	.byte	14                              # DW_AT_call_return_pc
	.byte	29                              # Abbrev [29] 0x81e:0x6 DW_TAG_call_site
	.long	2099                            # DW_AT_call_origin
	.byte	15                              # DW_AT_call_return_pc
	.byte	29                              # Abbrev [29] 0x824:0x6 DW_TAG_call_site
	.long	2138                            # DW_AT_call_origin
	.byte	16                              # DW_AT_call_return_pc
	.byte	43                              # Abbrev [43] 0x82a:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	93
	.byte	17                              # DW_AT_call_return_pc
	.byte	43                              # Abbrev [43] 0x82e:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	93
	.byte	18                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x833:0x27 DW_TAG_subprogram
	.byte	135                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	242                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	521                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	14                              # Abbrev [14] 0x83b:0x5 DW_TAG_formal_parameter
	.long	537                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x840:0x5 DW_TAG_formal_parameter
	.long	552                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x845:0x5 DW_TAG_formal_parameter
	.long	521                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x84a:0x5 DW_TAG_formal_parameter
	.long	1271                            # DW_AT_type
	.byte	14                              # Abbrev [14] 0x84f:0x5 DW_TAG_formal_parameter
	.long	552                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x854:0x5 DW_TAG_formal_parameter
	.long	521                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x85a:0x13 DW_TAG_subprogram
	.byte	136                             # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	533                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	14                              # Abbrev [14] 0x862:0x5 DW_TAG_formal_parameter
	.long	2157                            # DW_AT_type
	.byte	14                              # Abbrev [14] 0x867:0x5 DW_TAG_formal_parameter
	.long	501                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x86d:0x5 DW_TAG_pointer_type
	.long	736                             # DW_AT_type
	.byte	44                              # Abbrev [44] 0x872:0x33 DW_TAG_subprogram
	.byte	19                              # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	143                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	213                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	27                              # Abbrev [27] 0x87d:0x9 DW_TAG_formal_parameter
	.byte	21                              # DW_AT_location
	.byte	152                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	213                             # DW_AT_decl_line
	.long	361                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x886:0x9 DW_TAG_formal_parameter
	.byte	22                              # DW_AT_location
	.byte	145                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	213                             # DW_AT_decl_line
	.long	643                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0x88f:0x9 DW_TAG_variable
	.byte	23                              # DW_AT_location
	.byte	43                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.long	220                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x898:0x6 DW_TAG_call_site
	.long	2213                            # DW_AT_call_origin
	.byte	20                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x89e:0x6 DW_TAG_call_site
	.long	2213                            # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	21                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	45                              # Abbrev [45] 0x8a5:0xf DW_TAG_subprogram
	.byte	137                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	14                              # Abbrev [14] 0x8a9:0x5 DW_TAG_formal_parameter
	.long	219                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x8ae:0x5 DW_TAG_formal_parameter
	.long	643                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x8b4:0x5 DW_TAG_pointer_type
	.long	2233                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x8b9:0x5 DW_TAG_const_type
	.long	736                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x8be:0x5 DW_TAG_pointer_type
	.long	219                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x8c3:0x5 DW_TAG_restrict_type
	.long	220                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x8c8:0x5 DW_TAG_const_type
	.long	521                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x8cd:0x5 DW_TAG_const_type
	.long	406                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x8d2:0x5 DW_TAG_const_type
	.long	987                             # DW_AT_type
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
	.uleb128 .Ltmp50-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp54-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp88-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp108-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	632                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/lzma/lzma2_decoder.c"  # string offset=105
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
	.asciz	"LZMA_MODE_FAST"                # string offset=495
.Linfo_string25:
	.asciz	"LZMA_MODE_NORMAL"              # string offset=510
.Linfo_string26:
	.asciz	"LZMA_MF_HC3"                   # string offset=527
.Linfo_string27:
	.asciz	"LZMA_MF_HC4"                   # string offset=539
.Linfo_string28:
	.asciz	"LZMA_MF_BT2"                   # string offset=551
.Linfo_string29:
	.asciz	"LZMA_MF_BT3"                   # string offset=563
.Linfo_string30:
	.asciz	"LZMA_MF_BT4"                   # string offset=575
.Linfo_string31:
	.asciz	"LZMA_RESERVED_ENUM"            # string offset=587
.Linfo_string32:
	.asciz	"SEQ_CONTROL"                   # string offset=606
.Linfo_string33:
	.asciz	"SEQ_UNCOMPRESSED_1"            # string offset=618
.Linfo_string34:
	.asciz	"SEQ_UNCOMPRESSED_2"            # string offset=637
.Linfo_string35:
	.asciz	"SEQ_COMPRESSED_0"              # string offset=656
.Linfo_string36:
	.asciz	"SEQ_COMPRESSED_1"              # string offset=673
.Linfo_string37:
	.asciz	"SEQ_PROPERTIES"                # string offset=690
.Linfo_string38:
	.asciz	"SEQ_LZMA"                      # string offset=705
.Linfo_string39:
	.asciz	"SEQ_COPY"                      # string offset=714
.Linfo_string40:
	.asciz	"sequence"                      # string offset=723
.Linfo_string41:
	.asciz	"next_sequence"                 # string offset=732
.Linfo_string42:
	.asciz	"lzma"                          # string offset=746
.Linfo_string43:
	.asciz	"coder"                         # string offset=751
.Linfo_string44:
	.asciz	"lzma_coder"                    # string offset=757
.Linfo_string45:
	.asciz	"code"                          # string offset=768
.Linfo_string46:
	.asciz	"lzma_ret"                      # string offset=773
.Linfo_string47:
	.asciz	"buf"                           # string offset=782
.Linfo_string48:
	.asciz	"unsigned char"                 # string offset=786
.Linfo_string49:
	.asciz	"__uint8_t"                     # string offset=800
.Linfo_string50:
	.asciz	"uint8_t"                       # string offset=810
.Linfo_string51:
	.asciz	"pos"                           # string offset=818
.Linfo_string52:
	.asciz	"unsigned long"                 # string offset=822
.Linfo_string53:
	.asciz	"size_t"                        # string offset=836
.Linfo_string54:
	.asciz	"full"                          # string offset=843
.Linfo_string55:
	.asciz	"limit"                         # string offset=848
.Linfo_string56:
	.asciz	"size"                          # string offset=854
.Linfo_string57:
	.asciz	"need_reset"                    # string offset=859
.Linfo_string58:
	.asciz	"_Bool"                         # string offset=870
.Linfo_string59:
	.asciz	"lzma_dict"                     # string offset=876
.Linfo_string60:
	.asciz	"reset"                         # string offset=886
.Linfo_string61:
	.asciz	"set_uncompressed"              # string offset=892
.Linfo_string62:
	.asciz	"__uint64_t"                    # string offset=909
.Linfo_string63:
	.asciz	"uint64_t"                      # string offset=920
.Linfo_string64:
	.asciz	"lzma_vli"                      # string offset=929
.Linfo_string65:
	.asciz	"end"                           # string offset=938
.Linfo_string66:
	.asciz	"alloc"                         # string offset=942
.Linfo_string67:
	.asciz	"free"                          # string offset=948
.Linfo_string68:
	.asciz	"opaque"                        # string offset=953
.Linfo_string69:
	.asciz	"lzma_allocator"                # string offset=960
.Linfo_string70:
	.asciz	"lzma_lz_decoder"               # string offset=975
.Linfo_string71:
	.asciz	"uncompressed_size"             # string offset=991
.Linfo_string72:
	.asciz	"compressed_size"               # string offset=1009
.Linfo_string73:
	.asciz	"need_properties"               # string offset=1025
.Linfo_string74:
	.asciz	"need_dictionary_reset"         # string offset=1041
.Linfo_string75:
	.asciz	"options"                       # string offset=1063
.Linfo_string76:
	.asciz	"dict_size"                     # string offset=1071
.Linfo_string77:
	.asciz	"__uint32_t"                    # string offset=1081
.Linfo_string78:
	.asciz	"uint32_t"                      # string offset=1092
.Linfo_string79:
	.asciz	"preset_dict"                   # string offset=1101
.Linfo_string80:
	.asciz	"preset_dict_size"              # string offset=1113
.Linfo_string81:
	.asciz	"lc"                            # string offset=1130
.Linfo_string82:
	.asciz	"lp"                            # string offset=1133
.Linfo_string83:
	.asciz	"pb"                            # string offset=1136
.Linfo_string84:
	.asciz	"mode"                          # string offset=1139
.Linfo_string85:
	.asciz	"lzma_mode"                     # string offset=1144
.Linfo_string86:
	.asciz	"nice_len"                      # string offset=1154
.Linfo_string87:
	.asciz	"mf"                            # string offset=1163
.Linfo_string88:
	.asciz	"lzma_match_finder"             # string offset=1166
.Linfo_string89:
	.asciz	"depth"                         # string offset=1184
.Linfo_string90:
	.asciz	"reserved_int1"                 # string offset=1190
.Linfo_string91:
	.asciz	"reserved_int2"                 # string offset=1204
.Linfo_string92:
	.asciz	"reserved_int3"                 # string offset=1218
.Linfo_string93:
	.asciz	"reserved_int4"                 # string offset=1232
.Linfo_string94:
	.asciz	"reserved_int5"                 # string offset=1246
.Linfo_string95:
	.asciz	"reserved_int6"                 # string offset=1260
.Linfo_string96:
	.asciz	"reserved_int7"                 # string offset=1274
.Linfo_string97:
	.asciz	"reserved_int8"                 # string offset=1288
.Linfo_string98:
	.asciz	"reserved_enum1"                # string offset=1302
.Linfo_string99:
	.asciz	"lzma_reserved_enum"            # string offset=1317
.Linfo_string100:
	.asciz	"reserved_enum2"                # string offset=1336
.Linfo_string101:
	.asciz	"reserved_enum3"                # string offset=1351
.Linfo_string102:
	.asciz	"reserved_enum4"                # string offset=1366
.Linfo_string103:
	.asciz	"reserved_ptr1"                 # string offset=1381
.Linfo_string104:
	.asciz	"reserved_ptr2"                 # string offset=1395
.Linfo_string105:
	.asciz	"lzma_options_lzma"             # string offset=1409
.Linfo_string106:
	.asciz	"lzma_coder_s"                  # string offset=1427
.Linfo_string107:
	.asciz	"lzma_lz_decoder_init"          # string offset=1440
.Linfo_string108:
	.asciz	"id"                            # string offset=1461
.Linfo_string109:
	.asciz	"init"                          # string offset=1464
.Linfo_string110:
	.asciz	"uintptr_t"                     # string offset=1469
.Linfo_string111:
	.asciz	"lzma_action"                   # string offset=1479
.Linfo_string112:
	.asciz	"lzma_code_function"            # string offset=1491
.Linfo_string113:
	.asciz	"lzma_end_function"             # string offset=1510
.Linfo_string114:
	.asciz	"get_check"                     # string offset=1528
.Linfo_string115:
	.asciz	"lzma_check"                    # string offset=1538
.Linfo_string116:
	.asciz	"memconfig"                     # string offset=1549
.Linfo_string117:
	.asciz	"update"                        # string offset=1559
.Linfo_string118:
	.asciz	"lzma_filter"                   # string offset=1566
.Linfo_string119:
	.asciz	"lzma_next_coder_s"             # string offset=1578
.Linfo_string120:
	.asciz	"lzma_next_coder"               # string offset=1596
.Linfo_string121:
	.asciz	"lzma_init_function"            # string offset=1612
.Linfo_string122:
	.asciz	"lzma_filter_info_s"            # string offset=1631
.Linfo_string123:
	.asciz	"lzma_filter_info"              # string offset=1650
.Linfo_string124:
	.asciz	"lzma_lz_options"               # string offset=1667
.Linfo_string125:
	.asciz	"lzma_alloc"                    # string offset=1683
.Linfo_string126:
	.asciz	"lzma_lzma_decoder_create"      # string offset=1694
.Linfo_string127:
	.asciz	"lzma_lzma_decoder_memusage_nocheck" # string offset=1719
.Linfo_string128:
	.asciz	"dict_write"                    # string offset=1754
.Linfo_string129:
	.asciz	"dict"                          # string offset=1765
.Linfo_string130:
	.asciz	"in"                            # string offset=1770
.Linfo_string131:
	.asciz	"in_pos"                        # string offset=1773
.Linfo_string132:
	.asciz	"in_size"                       # string offset=1780
.Linfo_string133:
	.asciz	"left"                          # string offset=1788
.Linfo_string134:
	.asciz	"dict_reset"                    # string offset=1793
.Linfo_string135:
	.asciz	"lzma_bufcpy"                   # string offset=1804
.Linfo_string136:
	.asciz	"lzma_lzma_lclppb_decode"       # string offset=1816
.Linfo_string137:
	.asciz	"lzma_free"                     # string offset=1840
.Linfo_string138:
	.asciz	"lzma_lzma2_decoder_init"       # string offset=1850
.Linfo_string139:
	.asciz	"lzma2_decoder_init"            # string offset=1874
.Linfo_string140:
	.asciz	"lzma_lzma2_decoder_memusage"   # string offset=1893
.Linfo_string141:
	.asciz	"lzma_lzma2_props_decode"       # string offset=1921
.Linfo_string142:
	.asciz	"lzma2_decode"                  # string offset=1945
.Linfo_string143:
	.asciz	"lzma2_decoder_end"             # string offset=1958
.Linfo_string144:
	.asciz	"next"                          # string offset=1976
.Linfo_string145:
	.asciz	"allocator"                     # string offset=1981
.Linfo_string146:
	.asciz	"filters"                       # string offset=1991
.Linfo_string147:
	.asciz	"lz"                            # string offset=1999
.Linfo_string148:
	.asciz	"opt"                           # string offset=2002
.Linfo_string149:
	.asciz	"lz_options"                    # string offset=2006
.Linfo_string150:
	.asciz	"props"                         # string offset=2017
.Linfo_string151:
	.asciz	"props_size"                    # string offset=2023
.Linfo_string152:
	.asciz	"pcoder"                        # string offset=2034
.Linfo_string153:
	.asciz	"in_start"                      # string offset=2041
.Linfo_string154:
	.asciz	"ret"                           # string offset=2050
.Linfo_string155:
	.asciz	"in_used"                       # string offset=2054
.Linfo_string156:
	.asciz	"control"                       # string offset=2062
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
	.quad	.Ltmp7
	.quad	.Ltmp17
	.quad	.Lfunc_begin2
	.quad	.Ltmp25
	.quad	.Lfunc_begin3
	.quad	.Ltmp33
	.quad	.Lfunc_begin4
	.quad	.Ltmp107
	.quad	.Ltmp55
	.quad	.Ltmp71
	.quad	.Ltmp56
	.quad	.Ltmp68
	.quad	.Ltmp76
	.quad	.Ltmp85
	.quad	.Ltmp87
	.quad	.Ltmp104
	.quad	.Lfunc_begin5
	.quad	.Ltmp121
	.quad	.Ltmp123
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
