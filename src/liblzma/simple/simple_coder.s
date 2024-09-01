	.text
	.file	"simple_coder.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/simple/simple_coder.c" md5 0x3e67190b93c2e77773d54577efadbe6e
	.file	1 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.file	2 "liblzma/api/lzma" "check.h" md5 0xb07c3297e2bcc14bb477793d08325ee3
	.file	3 "liblzma/common" "common.h" md5 0xb445e74fc76042ed64f7e1908fcc1934
	.file	4 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	5 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	6 "liblzma/api/lzma" "vli.h" md5 0xe1aa51527ce08aa260777d4fb351a0b7
	.file	7 "/usr/include" "stdint.h" md5 0xa48e64edacc5b19f56c99745232c963c
	.file	8 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.file	9 "liblzma/api/lzma" "filter.h" md5 0x5eb86d86854a7619ed1d1ac1b57b2484
	.file	10 "liblzma/simple" "simple_private.h" md5 0x2921a659cca72849047c4661dc5d5b7e
	.globl	lzma_simple_coder_init          # -- Begin function lzma_simple_coder_init
	.p2align	4, 0x90
	.type	lzma_simple_coder_init,@function
lzma_simple_coder_init:                 # @lzma_simple_coder_init
.Lfunc_begin0:
	.loc	0 233 0                         # liblzma/simple/simple_coder.c:233:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_simple_coder_init:next <- $rdi
	#DEBUG_VALUE: lzma_simple_coder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_simple_coder_init:filters <- $rdx
	#DEBUG_VALUE: lzma_simple_coder_init:filter <- $rcx
	#DEBUG_VALUE: lzma_simple_coder_init:simple_size <- $r8
	#DEBUG_VALUE: lzma_simple_coder_init:unfiltered_max <- $r9
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
.Ltmp0:
	#DEBUG_VALUE: lzma_simple_coder_init:alignment <- [DW_OP_plus_uconst 80] [$rsp+0]
	movq	%rdi, %rbx
	movl	80(%rsp), %r15d
	movzbl	88(%rsp), %ebp
.Ltmp1:
	#DEBUG_VALUE: lzma_simple_coder_init:is_encoder <- $bpl
	.loc	0 235 18 prologue_end           # liblzma/simple/simple_coder.c:235:18
	cmpq	$0, (%rdi)
.Ltmp2:
	.loc	0 235 6 is_stmt 0               # liblzma/simple/simple_coder.c:235:6
	je	.LBB0_1
.Ltmp3:
.LBB0_6:                                # %if.end27
	#DEBUG_VALUE: lzma_simple_coder_init:next <- $rbx
	#DEBUG_VALUE: lzma_simple_coder_init:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_simple_coder_init:filters <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_simple_coder_init:filter <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_simple_coder_init:simple_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: lzma_simple_coder_init:unfiltered_max <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: lzma_simple_coder_init:alignment <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma_simple_coder_init:is_encoder <- $bpl
	.loc	0 264 17 is_stmt 1              # liblzma/simple/simple_coder.c:264:17
	movq	16(%rdx), %rax
	.loc	0 264 25 is_stmt 0              # liblzma/simple/simple_coder.c:264:25
	testq	%rax, %rax
.Ltmp4:
	.loc	0 264 6                         # liblzma/simple/simple_coder.c:264:6
	je	.LBB0_8
.Ltmp5:
# %bb.7:                                # %if.then29
	#DEBUG_VALUE: lzma_simple_coder_init:next <- $rbx
	#DEBUG_VALUE: lzma_simple_coder_init:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_simple_coder_init:filters <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_simple_coder_init:filter <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_simple_coder_init:simple_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: lzma_simple_coder_init:unfiltered_max <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: lzma_simple_coder_init:alignment <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma_simple_coder_init:is_encoder <- $bpl
	#DEBUG_VALUE: simple <- $rax
	.loc	0 266 58 is_stmt 1              # liblzma/simple/simple_coder.c:266:58
	movl	(%rax), %eax
.Ltmp6:
	.loc	0 266 32 is_stmt 0              # liblzma/simple/simple_coder.c:266:32
	movq	(%rbx), %rcx
	.loc	0 266 48                        # liblzma/simple/simple_coder.c:266:48
	movl	%eax, 88(%rcx)
.Ltmp7:
	.loc	0 267 36 is_stmt 1              # liblzma/simple/simple_coder.c:267:36
	movq	(%rbx), %rcx
	.loc	0 267 65 is_stmt 0              # liblzma/simple/simple_coder.c:267:65
	decl	%r15d
	movl	$8, %eax
	.loc	0 267 52                        # liblzma/simple/simple_coder.c:267:52
	testl	%r15d, 88(%rcx)
	jne	.LBB0_4
	jmp	.LBB0_9
.Ltmp8:
.LBB0_1:                                # %if.then
	#DEBUG_VALUE: lzma_simple_coder_init:next <- $rbx
	#DEBUG_VALUE: lzma_simple_coder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_simple_coder_init:filters <- $rdx
	#DEBUG_VALUE: lzma_simple_coder_init:filter <- $rcx
	#DEBUG_VALUE: lzma_simple_coder_init:simple_size <- $r8
	#DEBUG_VALUE: lzma_simple_coder_init:unfiltered_max <- $r9
	#DEBUG_VALUE: lzma_simple_coder_init:alignment <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma_simple_coder_init:is_encoder <- $bpl
	.loc	0 0 52                          # liblzma/simple/simple_coder.c:0:52
	movq	%rcx, %r12
.Ltmp9:
	#DEBUG_VALUE: lzma_simple_coder_init:filter <- $r12
	movq	%r8, %r13
.Ltmp10:
	#DEBUG_VALUE: lzma_simple_coder_init:simple_size <- $r13
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
.Ltmp11:
	#DEBUG_VALUE: lzma_simple_coder_init:filters <- [DW_OP_plus_uconst 16] [$rsp+0]
	movq	%r9, %r14
.Ltmp12:
	.loc	0 241 5 is_stmt 1               # liblzma/simple/simple_coder.c:241:5
	leaq	128(,%r9,2), %rdi
	movq	%rsi, 8(%rsp)                   # 8-byte Spill
.Ltmp13:
	#DEBUG_VALUE: lzma_simple_coder_init:allocator <- [DW_OP_plus_uconst 8] [$rsp+0]
	.loc	0 240 17                        # liblzma/simple/simple_coder.c:240:17
	callq	lzma_alloc@PLT
.Ltmp14:
	#DEBUG_VALUE: lzma_simple_coder_init:unfiltered_max <- $r14
	movq	%rax, %rcx
	.loc	0 240 15 is_stmt 0              # liblzma/simple/simple_coder.c:240:15
	movq	%rax, (%rbx)
	movl	$5, %eax
.Ltmp15:
	.loc	0 242 19 is_stmt 1              # liblzma/simple/simple_coder.c:242:19
	testq	%rcx, %rcx
.Ltmp16:
	.loc	0 242 7 is_stmt 0               # liblzma/simple/simple_coder.c:242:7
	je	.LBB0_4
.Ltmp17:
# %bb.2:                                # %if.end
	#DEBUG_VALUE: lzma_simple_coder_init:next <- $rbx
	#DEBUG_VALUE: lzma_simple_coder_init:allocator <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_simple_coder_init:filters <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_simple_coder_init:filter <- $r12
	#DEBUG_VALUE: lzma_simple_coder_init:simple_size <- $r13
	#DEBUG_VALUE: lzma_simple_coder_init:unfiltered_max <- $r14
	#DEBUG_VALUE: lzma_simple_coder_init:alignment <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma_simple_coder_init:is_encoder <- $bpl
	.loc	0 0 0                           # liblzma/simple/simple_coder.c:0:0
	addq	%r14, %r14
.Ltmp18:
	#DEBUG_VALUE: lzma_simple_coder_init:unfiltered_max <- [DW_OP_LLVM_entry_value 1] $r9
	.loc	0 245 14 is_stmt 1              # liblzma/simple/simple_coder.c:245:14
	movq	$simple_code, 24(%rbx)
	.loc	0 246 13                        # liblzma/simple/simple_coder.c:246:13
	movq	$simple_coder_end, 32(%rbx)
	.loc	0 247 16                        # liblzma/simple/simple_coder.c:247:16
	movq	$simple_coder_update, 56(%rbx)
	.loc	0 249 47                        # liblzma/simple/simple_coder.c:249:47
	movq	$0, (%rcx)
	movq	$-1, 8(%rcx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rcx)
	movups	%xmm0, 32(%rcx)
	movups	%xmm0, 48(%rcx)
	.loc	0 250 32                        # liblzma/simple/simple_coder.c:250:32
	movq	(%rbx), %rax
	.loc	0 250 47 is_stmt 0              # liblzma/simple/simple_coder.c:250:47
	movq	%r12, 72(%rax)
	.loc	0 251 32 is_stmt 1              # liblzma/simple/simple_coder.c:251:32
	movq	(%rbx), %rax
	.loc	0 251 50 is_stmt 0              # liblzma/simple/simple_coder.c:251:50
	movq	%r14, 96(%rax)
.Ltmp19:
	.loc	0 254 19 is_stmt 1              # liblzma/simple/simple_coder.c:254:19
	testq	%r13, %r13
.Ltmp20:
	.loc	0 254 7 is_stmt 0               # liblzma/simple/simple_coder.c:254:7
	je	.LBB0_5
.Ltmp21:
# %bb.3:                                # %if.then16
	#DEBUG_VALUE: lzma_simple_coder_init:next <- $rbx
	#DEBUG_VALUE: lzma_simple_coder_init:allocator <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_simple_coder_init:filters <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_simple_coder_init:filter <- $r12
	#DEBUG_VALUE: lzma_simple_coder_init:simple_size <- $r13
	#DEBUG_VALUE: lzma_simple_coder_init:unfiltered_max <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: lzma_simple_coder_init:alignment <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma_simple_coder_init:is_encoder <- $bpl
	.loc	0 0 7                           # liblzma/simple/simple_coder.c:0:7
	movq	%r13, %rdi
	movq	8(%rsp), %r14                   # 8-byte Reload
.Ltmp22:
	.loc	0 255 50 is_stmt 1              # liblzma/simple/simple_coder.c:255:50
	movq	%r14, %rsi
	callq	lzma_alloc@PLT
.Ltmp23:
	.loc	0 0 50 is_stmt 0                # liblzma/simple/simple_coder.c:0:50
	movq	%r14, %rsi
	.loc	0 255 50                        # liblzma/simple/simple_coder.c:255:50
	movq	%rax, %rcx
	movl	$5, %eax
	.loc	0 255 33                        # liblzma/simple/simple_coder.c:255:33
	movq	(%rbx), %rdx
	.loc	0 255 48                        # liblzma/simple/simple_coder.c:255:48
	movq	%rcx, 80(%rdx)
.Ltmp24:
	.loc	0 257 37 is_stmt 1              # liblzma/simple/simple_coder.c:257:37
	movq	(%rbx), %rcx
	.loc	0 257 52 is_stmt 0              # liblzma/simple/simple_coder.c:257:52
	cmpq	$0, 80(%rcx)
	movq	16(%rsp), %rdx                  # 8-byte Reload
.Ltmp25:
	.loc	0 257 8                         # liblzma/simple/simple_coder.c:257:8
	jne	.LBB0_6
.Ltmp26:
.LBB0_4:                                # %return
	#DEBUG_VALUE: lzma_simple_coder_init:next <- $rbx
	#DEBUG_VALUE: lzma_simple_coder_init:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_simple_coder_init:filters <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_simple_coder_init:filter <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_simple_coder_init:simple_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: lzma_simple_coder_init:unfiltered_max <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: lzma_simple_coder_init:alignment <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma_simple_coder_init:is_encoder <- $bpl
	.loc	0 282 1 epilogue_begin is_stmt 1 # liblzma/simple/simple_coder.c:282:1
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
.Ltmp27:
	#DEBUG_VALUE: lzma_simple_coder_init:next <- [DW_OP_LLVM_entry_value 1] $rdi
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
.Ltmp28:
	.cfi_def_cfa_offset 8
	retq
.Ltmp29:
.LBB0_8:                                # %if.else38
	.cfi_def_cfa_offset 80
	#DEBUG_VALUE: lzma_simple_coder_init:next <- $rbx
	#DEBUG_VALUE: lzma_simple_coder_init:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_simple_coder_init:filters <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_simple_coder_init:filter <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_simple_coder_init:simple_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: lzma_simple_coder_init:unfiltered_max <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: lzma_simple_coder_init:alignment <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma_simple_coder_init:is_encoder <- $bpl
	.loc	0 270 32                        # liblzma/simple/simple_coder.c:270:32
	movq	(%rbx), %rax
	.loc	0 270 48 is_stmt 0              # liblzma/simple/simple_coder.c:270:48
	movl	$0, 88(%rax)
.Ltmp30:
	.loc	0 274 31 is_stmt 1              # liblzma/simple/simple_coder.c:274:31
	movq	(%rbx), %rcx
.Ltmp31:
.LBB0_9:                                # %if.end41
	#DEBUG_VALUE: lzma_simple_coder_init:next <- $rbx
	#DEBUG_VALUE: lzma_simple_coder_init:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_simple_coder_init:filters <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_simple_coder_init:filter <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_simple_coder_init:simple_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: lzma_simple_coder_init:unfiltered_max <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: lzma_simple_coder_init:alignment <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma_simple_coder_init:is_encoder <- $bpl
	.loc	0 274 50 is_stmt 0              # liblzma/simple/simple_coder.c:274:50
	movb	%bpl, 65(%rcx)
	.loc	0 275 31 is_stmt 1              # liblzma/simple/simple_coder.c:275:31
	movq	(%rbx), %rax
	.loc	0 275 55 is_stmt 0              # liblzma/simple/simple_coder.c:275:55
	movb	$0, 64(%rax)
	.loc	0 276 31 is_stmt 1              # liblzma/simple/simple_coder.c:276:31
	movq	(%rbx), %rax
	.loc	0 276 43 is_stmt 0              # liblzma/simple/simple_coder.c:276:43
	movq	$0, 104(%rax)
	.loc	0 277 31 is_stmt 1              # liblzma/simple/simple_coder.c:277:31
	movq	(%rbx), %rax
	.loc	0 277 48 is_stmt 0              # liblzma/simple/simple_coder.c:277:48
	movq	$0, 112(%rax)
	.loc	0 278 31 is_stmt 1              # liblzma/simple/simple_coder.c:278:31
	movq	(%rbx), %rax
	.loc	0 278 44 is_stmt 0              # liblzma/simple/simple_coder.c:278:44
	movq	$0, 120(%rax)
	.loc	0 281 34 is_stmt 1              # liblzma/simple/simple_coder.c:281:34
	movq	(%rbx), %rdi
	.loc	0 281 67 is_stmt 0              # liblzma/simple/simple_coder.c:281:67
	addq	$24, %rdx
	.loc	0 280 9 epilogue_begin is_stmt 1 # liblzma/simple/simple_coder.c:280:9
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
.Ltmp32:
	#DEBUG_VALUE: lzma_simple_coder_init:next <- [DW_OP_LLVM_entry_value 1] $rdi
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
.Ltmp33:
	.cfi_def_cfa_offset 8
	jmp	lzma_next_filter_init@PLT       # TAILCALL
.Ltmp34:
.LBB0_5:                                # %if.else
	.cfi_def_cfa_offset 80
	#DEBUG_VALUE: lzma_simple_coder_init:next <- $rbx
	#DEBUG_VALUE: lzma_simple_coder_init:allocator <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_simple_coder_init:filters <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_simple_coder_init:filter <- $r12
	#DEBUG_VALUE: lzma_simple_coder_init:simple_size <- $r13
	#DEBUG_VALUE: lzma_simple_coder_init:unfiltered_max <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: lzma_simple_coder_init:alignment <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: lzma_simple_coder_init:is_encoder <- $bpl
	.loc	0 260 33                        # liblzma/simple/simple_coder.c:260:33
	movq	(%rbx), %rax
	.loc	0 260 48 is_stmt 0              # liblzma/simple/simple_coder.c:260:48
	movq	$0, 80(%rax)
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	8(%rsp), %rsi                   # 8-byte Reload
	jmp	.LBB0_6
.Ltmp35:
.Lfunc_end0:
	.size	lzma_simple_coder_init, .Lfunc_end0-lzma_simple_coder_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function simple_code
	.type	simple_code,@function
simple_code:                            # @simple_code
.Lfunc_begin1:
	.loc	0 75 0 is_stmt 1                # liblzma/simple/simple_coder.c:75:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: simple_code:pcoder <- $rdi
	#DEBUG_VALUE: simple_code:allocator <- $rsi
	#DEBUG_VALUE: simple_code:in <- $rdx
	#DEBUG_VALUE: simple_code:in_pos <- $rcx
	#DEBUG_VALUE: simple_code:in_size <- $r8
	#DEBUG_VALUE: simple_code:out <- $r9
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
.Ltmp36:
	#DEBUG_VALUE: simple_code:out_pos <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: simple_code:out_size <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: simple_code:action <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: simple_code:coder <- $rdi
	movq	%r8, 8(%rsp)                    # 8-byte Spill
.Ltmp37:
	#DEBUG_VALUE: simple_code:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	movq	%rcx, (%rsp)                    # 8-byte Spill
.Ltmp38:
	#DEBUG_VALUE: simple_code:in_pos <- [$rsp+0]
	movl	128(%rsp), %ecx
	movl	$8, %eax
.Ltmp39:
	.loc	0 82 13 prologue_end            # liblzma/simple/simple_coder.c:82:13
	cmpl	$1, %ecx
.Ltmp40:
	.loc	0 82 6 is_stmt 0                # liblzma/simple/simple_coder.c:82:6
	je	.LBB1_32
.Ltmp41:
# %bb.1:                                # %if.end
	#DEBUG_VALUE: simple_code:pcoder <- $rdi
	#DEBUG_VALUE: simple_code:allocator <- $rsi
	#DEBUG_VALUE: simple_code:in <- $rdx
	#DEBUG_VALUE: simple_code:in_pos <- [$rsp+0]
	#DEBUG_VALUE: simple_code:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: simple_code:out <- $r9
	#DEBUG_VALUE: simple_code:out_pos <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: simple_code:out_size <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: simple_code:action <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: simple_code:coder <- $rdi
	.loc	0 0 6                           # liblzma/simple/simple_coder.c:0:6
	movq	%rdx, %r13
	movq	%rdi, %rbx
	movq	120(%rsp), %r10
	movq	112(%rsp), %r12
.Ltmp42:
	.loc	0 86 13 is_stmt 1               # liblzma/simple/simple_coder.c:86:13
	leaq	104(%rdi), %r15
	movq	104(%rdi), %rcx
	.loc	0 86 26 is_stmt 0               # liblzma/simple/simple_coder.c:86:26
	movq	112(%rdi), %rdx
.Ltmp43:
	#DEBUG_VALUE: simple_code:in <- $r13
	.loc	0 86 17                         # liblzma/simple/simple_coder.c:86:17
	cmpq	%rdx, %rcx
.Ltmp44:
	.loc	0 86 6                          # liblzma/simple/simple_coder.c:86:6
	jae	.LBB1_4
.Ltmp45:
# %bb.2:                                # %if.then2
	#DEBUG_VALUE: simple_code:pcoder <- $rbx
	#DEBUG_VALUE: simple_code:allocator <- $rsi
	#DEBUG_VALUE: simple_code:in <- $r13
	#DEBUG_VALUE: simple_code:in_pos <- [$rsp+0]
	#DEBUG_VALUE: simple_code:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: simple_code:out <- $r9
	#DEBUG_VALUE: simple_code:out_pos <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: simple_code:out_size <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: simple_code:action <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: simple_code:coder <- $rbx
	.loc	0 87 22 is_stmt 1               # liblzma/simple/simple_coder.c:87:22
	leaq	128(%rbx), %rdi
	movq	%r13, %r14
.Ltmp46:
	#DEBUG_VALUE: simple_code:in <- $r14
	.loc	0 0 22 is_stmt 0                # liblzma/simple/simple_coder.c:0:22
	movq	%rsi, %r13
.Ltmp47:
	#DEBUG_VALUE: simple_code:allocator <- $r13
	.loc	0 87 3                          # liblzma/simple/simple_coder.c:87:3
	movq	%r15, %rsi
	movq	%r9, %rcx
	movq	%r12, %r8
	movq	%r9, %rbp
.Ltmp48:
	#DEBUG_VALUE: simple_code:out <- $rbp
	movq	%r10, %r9
	callq	lzma_bufcpy@PLT
.Ltmp49:
	.loc	0 0 3                           # liblzma/simple/simple_coder.c:0:3
	movq	120(%rsp), %r10
.Ltmp50:
	.loc	0 92 14 is_stmt 1               # liblzma/simple/simple_coder.c:92:14
	movq	104(%rbx), %rcx
	xorl	%eax, %eax
	.loc	0 92 18 is_stmt 0               # liblzma/simple/simple_coder.c:92:18
	cmpq	112(%rbx), %rcx
.Ltmp51:
	.loc	0 92 7                          # liblzma/simple/simple_coder.c:92:7
	jb	.LBB1_32
.Ltmp52:
# %bb.3:                                # %if.end9
	#DEBUG_VALUE: simple_code:pcoder <- $rbx
	#DEBUG_VALUE: simple_code:allocator <- $r13
	#DEBUG_VALUE: simple_code:in <- $r14
	#DEBUG_VALUE: simple_code:in_pos <- [$rsp+0]
	#DEBUG_VALUE: simple_code:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: simple_code:out <- $rbp
	#DEBUG_VALUE: simple_code:out_pos <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: simple_code:out_size <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: simple_code:action <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: simple_code:coder <- $rbx
	.loc	0 0 7                           # liblzma/simple/simple_coder.c:0:7
	movq	%rbp, %r9
	movq	%r13, %rsi
	movq	%r14, %r13
.Ltmp53:
	#DEBUG_VALUE: simple_code:in <- $r13
	#DEBUG_VALUE: simple_code:allocator <- $rsi
	movl	$1, %eax
	.loc	0 95 7 is_stmt 1                # liblzma/simple/simple_coder.c:95:7
	cmpb	$0, 64(%rbx)
	jne	.LBB1_32
.Ltmp54:
.LBB1_4:                                # %if.end12
	#DEBUG_VALUE: simple_code:pcoder <- $rbx
	#DEBUG_VALUE: simple_code:allocator <- $rsi
	#DEBUG_VALUE: simple_code:in <- $r13
	#DEBUG_VALUE: simple_code:in_pos <- [$rsp+0]
	#DEBUG_VALUE: simple_code:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: simple_code:out <- $r9
	#DEBUG_VALUE: simple_code:out_pos <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: simple_code:out_size <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: simple_code:action <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: simple_code:coder <- $rbx
	.loc	0 0 7 is_stmt 0                 # liblzma/simple/simple_coder.c:0:7
	movq	%rsi, 32(%rsp)                  # 8-byte Spill
.Ltmp55:
	#DEBUG_VALUE: simple_code:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	movq	%r9, 24(%rsp)                   # 8-byte Spill
.Ltmp56:
	#DEBUG_VALUE: simple_code:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	movq	%r15, 40(%rsp)                  # 8-byte Spill
	.loc	0 102 18 is_stmt 1              # liblzma/simple/simple_coder.c:102:18
	movq	$0, 112(%rbx)
	movq	%r12, %r14
	.loc	0 111 38                        # liblzma/simple/simple_coder.c:111:38
	movq	(%r12), %rbp
	.loc	0 111 36 is_stmt 0              # liblzma/simple/simple_coder.c:111:36
	subq	%rbp, %r10
.Ltmp57:
	#DEBUG_VALUE: simple_code:out_avail <- $r10
	.loc	0 112 34 is_stmt 1              # liblzma/simple/simple_coder.c:112:34
	leaq	120(%rbx), %rdx
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	movq	120(%rbx), %r12
	movq	%r12, %r15
	subq	%rcx, %r15
.Ltmp58:
	#DEBUG_VALUE: simple_code:buf_avail <- $r15
	.loc	0 0 34 is_stmt 0                # liblzma/simple/simple_coder.c:0:34
	setne	%dl
.Ltmp59:
	.loc	0 113 16 is_stmt 1              # liblzma/simple/simple_coder.c:113:16
	cmpq	%r15, %r10
	setbe	%al
	.loc	0 113 28 is_stmt 0              # liblzma/simple/simple_coder.c:113:28
	testb	%al, %dl
	jne	.LBB1_16
.Ltmp60:
# %bb.5:                                # %if.then18
	#DEBUG_VALUE: simple_code:pcoder <- $rbx
	#DEBUG_VALUE: simple_code:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: simple_code:in <- $r13
	#DEBUG_VALUE: simple_code:in_pos <- [$rsp+0]
	#DEBUG_VALUE: simple_code:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: simple_code:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: simple_code:out_pos <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: simple_code:out_size <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: simple_code:action <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: simple_code:coder <- $rbx
	#DEBUG_VALUE: simple_code:out_avail <- $r10
	#DEBUG_VALUE: simple_code:buf_avail <- $r15
	#DEBUG_VALUE: out_start <- $rbp
	.loc	0 0 28                          # liblzma/simple/simple_coder.c:0:28
	movq	24(%rsp), %r12                  # 8-byte Reload
.Ltmp61:
	.loc	0 122 14 is_stmt 1              # liblzma/simple/simple_coder.c:122:14
	leaq	(%r12,%rbp), %rdi
	.loc	0 122 40 is_stmt 0              # liblzma/simple/simple_coder.c:122:40
	leaq	(%rbx,%rcx), %rsi
	addq	$128, %rsi
	movq	%rdi, 48(%rsp)                  # 8-byte Spill
	.loc	0 122 3                         # liblzma/simple/simple_coder.c:122:3
	movq	%r15, %rdx
	callq	memcpy@PLT
.Ltmp62:
	.loc	0 123 12 is_stmt 1              # liblzma/simple/simple_coder.c:123:12
	addq	%rbp, %r15
.Ltmp63:
	movq	%r15, (%r14)
.Ltmp64:
	#DEBUG_VALUE: copy_or_code:pcoder <- $rbx
	#DEBUG_VALUE: copy_or_code:allocator <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:in <- $r13
	#DEBUG_VALUE: copy_or_code:in_pos <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:in_size <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:out <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:out_pos <- $r14
	#DEBUG_VALUE: copy_or_code:out_size <- undef
	#DEBUG_VALUE: copy_or_code:action <- undef
	#DEBUG_VALUE: copy_or_code:coder <- $rbx
	.loc	0 29 18                         # liblzma/simple/simple_coder.c:29:18
	movq	24(%rbx), %rax
	.loc	0 29 23 is_stmt 0               # liblzma/simple/simple_coder.c:29:23
	testq	%rax, %rax
.Ltmp65:
	.loc	0 29 6                          # liblzma/simple/simple_coder.c:29:6
	je	.LBB1_6
.Ltmp66:
# %bb.9:                                # %if.else.i
	#DEBUG_VALUE: simple_code:pcoder <- $rbx
	#DEBUG_VALUE: simple_code:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: simple_code:in <- $r13
	#DEBUG_VALUE: simple_code:in_pos <- [$rsp+0]
	#DEBUG_VALUE: simple_code:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: simple_code:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: simple_code:out_pos <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: simple_code:out_size <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: simple_code:action <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: simple_code:coder <- $rbx
	#DEBUG_VALUE: out_start <- $rbp
	#DEBUG_VALUE: copy_or_code:pcoder <- $rbx
	#DEBUG_VALUE: copy_or_code:allocator <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:in <- $r13
	#DEBUG_VALUE: copy_or_code:in_pos <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:in_size <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:out <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:out_pos <- $r14
	#DEBUG_VALUE: copy_or_code:coder <- $rbx
	.loc	0 40 17 is_stmt 1               # liblzma/simple/simple_coder.c:40:17
	movq	(%rbx), %rdi
	.loc	0 39 24                         # liblzma/simple/simple_coder.c:39:24
	subq	$8, %rsp
.Ltmp67:
	.cfi_adjust_cfa_offset 8
	.loc	0 0 24 is_stmt 0                # liblzma/simple/simple_coder.c:0:24
	movq	40(%rsp), %rsi                  # 8-byte Reload
	.loc	0 39 24                         # liblzma/simple/simple_coder.c:39:24
	movq	%r13, %rdx
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	16(%rsp), %r8                   # 8-byte Reload
	movq	%r12, %r9
	movl	136(%rsp), %r10d
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	136(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	callq	*%rax
.Ltmp68:
	#DEBUG_VALUE: ret <- $eax
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	.loc	0 44 7 is_stmt 1                # liblzma/simple/simple_coder.c:44:7
	testl	%eax, %eax
	je	.LBB1_12
.Ltmp69:
# %bb.10:                               # %if.else.i
	#DEBUG_VALUE: simple_code:pcoder <- $rbx
	#DEBUG_VALUE: simple_code:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: simple_code:in <- $r13
	#DEBUG_VALUE: simple_code:in_pos <- [$rsp+0]
	#DEBUG_VALUE: simple_code:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: simple_code:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: simple_code:coder <- $rbx
	#DEBUG_VALUE: out_start <- $rbp
	#DEBUG_VALUE: copy_or_code:pcoder <- $rbx
	#DEBUG_VALUE: copy_or_code:allocator <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:in <- $r13
	#DEBUG_VALUE: copy_or_code:in_pos <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:in_size <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:out <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:out_pos <- $r14
	#DEBUG_VALUE: copy_or_code:coder <- $rbx
	#DEBUG_VALUE: ret <- $eax
	cmpl	$1, %eax
	je	.LBB1_11
	jmp	.LBB1_32
.Ltmp70:
.LBB1_16:                               # %if.else50
	#DEBUG_VALUE: simple_code:pcoder <- $rbx
	#DEBUG_VALUE: simple_code:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: simple_code:in <- $r13
	#DEBUG_VALUE: simple_code:in_pos <- [$rsp+0]
	#DEBUG_VALUE: simple_code:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: simple_code:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: simple_code:out_pos <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: simple_code:out_size <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: simple_code:action <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: simple_code:coder <- $rbx
	#DEBUG_VALUE: simple_code:out_avail <- $r10
	#DEBUG_VALUE: simple_code:buf_avail <- $r15
	.loc	0 159 24                        # liblzma/simple/simple_coder.c:159:24
	testq	%rcx, %rcx
	movq	16(%rsp), %r14                  # 8-byte Reload
.Ltmp71:
	.loc	0 159 13 is_stmt 0              # liblzma/simple/simple_coder.c:159:13
	je	.LBB1_18
.Ltmp72:
# %bb.17:                               # %if.then53
	#DEBUG_VALUE: simple_code:pcoder <- $rbx
	#DEBUG_VALUE: simple_code:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: simple_code:in <- $r13
	#DEBUG_VALUE: simple_code:in_pos <- [$rsp+0]
	#DEBUG_VALUE: simple_code:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: simple_code:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: simple_code:out_pos <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: simple_code:out_size <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: simple_code:action <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: simple_code:coder <- $rbx
	#DEBUG_VALUE: simple_code:out_avail <- $r10
	#DEBUG_VALUE: simple_code:buf_avail <- $r15
	.loc	0 160 18 is_stmt 1              # liblzma/simple/simple_coder.c:160:18
	leaq	128(%rbx), %rdi
	.loc	0 160 40 is_stmt 0              # liblzma/simple/simple_coder.c:160:40
	leaq	(%rbx,%rcx), %rsi
	addq	$128, %rsi
	.loc	0 160 3                         # liblzma/simple/simple_coder.c:160:3
	movq	%r15, %rdx
	callq	memmove@PLT
.Ltmp73:
	.loc	0 161 15 is_stmt 1              # liblzma/simple/simple_coder.c:161:15
	movq	%r15, 120(%rbx)
	.loc	0 162 14                        # liblzma/simple/simple_coder.c:162:14
	movq	$0, 104(%rbx)
	movq	%r15, %r12
.Ltmp74:
	#DEBUG_VALUE: simple_code:buf_avail <- $r12
	.loc	0 0 14 is_stmt 0                # liblzma/simple/simple_coder.c:0:14
	jmp	.LBB1_18
.Ltmp75:
.LBB1_6:                                # %if.then.i
	#DEBUG_VALUE: simple_code:pcoder <- $rbx
	#DEBUG_VALUE: simple_code:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: simple_code:in <- $r13
	#DEBUG_VALUE: simple_code:in_pos <- [$rsp+0]
	#DEBUG_VALUE: simple_code:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: simple_code:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: simple_code:out_pos <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: simple_code:out_size <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: simple_code:action <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: simple_code:coder <- $rbx
	#DEBUG_VALUE: out_start <- $rbp
	#DEBUG_VALUE: copy_or_code:pcoder <- $rbx
	#DEBUG_VALUE: copy_or_code:allocator <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:in <- $r13
	#DEBUG_VALUE: copy_or_code:in_pos <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:in_size <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:out <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:out_pos <- $r14
	#DEBUG_VALUE: copy_or_code:coder <- $rbx
	.loc	0 30 3 is_stmt 1                # liblzma/simple/simple_coder.c:30:3
	movq	%r13, %rdi
	movq	(%rsp), %rsi                    # 8-byte Reload
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%r12, %rcx
	movq	%r14, %r8
	movq	120(%rsp), %r9
	callq	lzma_bufcpy@PLT
.Ltmp76:
	.loc	0 0 3 is_stmt 0                 # liblzma/simple/simple_coder.c:0:3
	movl	128(%rsp), %eax
	cmpl	$3, %eax
.Ltmp77:
	.loc	0 33 25 is_stmt 1               # liblzma/simple/simple_coder.c:33:25
	jne	.LBB1_12
.Ltmp78:
# %bb.7:                                # %if.then.i
	#DEBUG_VALUE: simple_code:pcoder <- $rbx
	#DEBUG_VALUE: simple_code:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: simple_code:in <- $r13
	#DEBUG_VALUE: simple_code:in_pos <- [$rsp+0]
	#DEBUG_VALUE: simple_code:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: simple_code:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: simple_code:out_pos <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: simple_code:out_size <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: simple_code:action <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: simple_code:coder <- $rbx
	#DEBUG_VALUE: out_start <- $rbp
	#DEBUG_VALUE: copy_or_code:pcoder <- $rbx
	#DEBUG_VALUE: copy_or_code:allocator <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:in <- $r13
	#DEBUG_VALUE: copy_or_code:in_pos <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:in_size <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:out <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:out_pos <- $r14
	#DEBUG_VALUE: copy_or_code:coder <- $rbx
	cmpb	$0, 65(%rbx)
	je	.LBB1_12
.Ltmp79:
# %bb.8:                                # %land.lhs.true2.i
	#DEBUG_VALUE: simple_code:pcoder <- $rbx
	#DEBUG_VALUE: simple_code:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: simple_code:in <- $r13
	#DEBUG_VALUE: simple_code:in_pos <- [$rsp+0]
	#DEBUG_VALUE: simple_code:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: simple_code:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: simple_code:out_pos <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: simple_code:out_size <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: simple_code:action <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: simple_code:coder <- $rbx
	#DEBUG_VALUE: out_start <- $rbp
	#DEBUG_VALUE: copy_or_code:pcoder <- $rbx
	#DEBUG_VALUE: copy_or_code:allocator <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:in <- $r13
	#DEBUG_VALUE: copy_or_code:in_pos <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:in_size <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:out <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:out_pos <- $r14
	#DEBUG_VALUE: copy_or_code:coder <- $rbx
	.loc	0 0 25 is_stmt 0                # liblzma/simple/simple_coder.c:0:25
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	.loc	0 34 16 is_stmt 1               # liblzma/simple/simple_coder.c:34:16
	cmpq	%rax, (%rcx)
.Ltmp80:
	.loc	0 33 7                          # liblzma/simple/simple_coder.c:33:7
	jne	.LBB1_12
.Ltmp81:
.LBB1_11:                               # %cleanup.cont.sink.split
	#DEBUG_VALUE: simple_code:pcoder <- $rbx
	#DEBUG_VALUE: simple_code:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: simple_code:in <- $r13
	#DEBUG_VALUE: simple_code:in_pos <- [$rsp+0]
	#DEBUG_VALUE: simple_code:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: simple_code:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: simple_code:coder <- $rbx
	#DEBUG_VALUE: out_start <- $rbp
	#DEBUG_VALUE: copy_or_code:pcoder <- $rbx
	#DEBUG_VALUE: copy_or_code:allocator <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:in <- $r13
	#DEBUG_VALUE: copy_or_code:in_pos <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:in_size <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:out <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:out_pos <- $r14
	#DEBUG_VALUE: copy_or_code:coder <- $rbx
	.loc	0 0 0 is_stmt 0                 # liblzma/simple/simple_coder.c:0:0
	movb	$1, 64(%rbx)
.Ltmp82:
.LBB1_12:                               # %cleanup.cont
	#DEBUG_VALUE: simple_code:pcoder <- $rbx
	#DEBUG_VALUE: simple_code:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: simple_code:in <- $r13
	#DEBUG_VALUE: simple_code:in_pos <- [$rsp+0]
	#DEBUG_VALUE: simple_code:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: simple_code:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: simple_code:coder <- $rbx
	#DEBUG_VALUE: out_start <- $rbp
	#DEBUG_VALUE: ret <- 0
	.loc	0 136 23 is_stmt 1              # liblzma/simple/simple_coder.c:136:23
	movq	112(%rsp), %rax
	movq	(%rax), %r15
	.loc	0 136 32 is_stmt 0              # liblzma/simple/simple_coder.c:136:32
	subq	%rbp, %r15
.Ltmp83:
	#DEBUG_VALUE: size <- $r15
	#DEBUG_VALUE: call_filter:size <- $r15
	#DEBUG_VALUE: call_filter:pcoder <- $rbx
	#DEBUG_VALUE: call_filter:buffer <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: call_filter:coder <- $rbx
	.loc	0 62 47 is_stmt 1               # liblzma/simple/simple_coder.c:62:47
	movq	80(%rbx), %rdi
	.loc	0 63 11                         # liblzma/simple/simple_coder.c:63:11
	movl	88(%rbx), %esi
	.loc	0 63 27 is_stmt 0               # liblzma/simple/simple_coder.c:63:27
	movzbl	65(%rbx), %edx
	movq	48(%rsp), %rcx                  # 8-byte Reload
	.loc	0 62 26 is_stmt 1               # liblzma/simple/simple_coder.c:62:26
	movq	%r15, %r8
	callq	*72(%rbx)
.Ltmp84:
	#DEBUG_VALUE: call_filter:filtered <- $rax
	#DEBUG_VALUE: filtered <- $rax
	.loc	0 65 17                         # liblzma/simple/simple_coder.c:65:17
	addl	%eax, 88(%rbx)
.Ltmp85:
	.loc	0 140 34                        # liblzma/simple/simple_coder.c:140:34
	movq	%r15, %r12
	subq	%rax, %r12
.Ltmp86:
	#DEBUG_VALUE: unfiltered <- $r12
	.loc	0 145 14                        # liblzma/simple/simple_coder.c:145:14
	movq	$0, 104(%rbx)
	.loc	0 146 15                        # liblzma/simple/simple_coder.c:146:15
	movq	%r12, 120(%rbx)
	.loc	0 148 7                         # liblzma/simple/simple_coder.c:148:7
	cmpb	$1, 64(%rbx)
	jne	.LBB1_14
.Ltmp87:
# %bb.13:                               # %if.end65.thread
	#DEBUG_VALUE: simple_code:pcoder <- $rbx
	#DEBUG_VALUE: simple_code:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: simple_code:in <- $r13
	#DEBUG_VALUE: simple_code:in_pos <- [$rsp+0]
	#DEBUG_VALUE: simple_code:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: simple_code:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: simple_code:coder <- $rbx
	#DEBUG_VALUE: out_start <- $rbp
	#DEBUG_VALUE: size <- $r15
	#DEBUG_VALUE: filtered <- $rax
	#DEBUG_VALUE: unfiltered <- $r12
	.loc	0 0 7 is_stmt 0                 # liblzma/simple/simple_coder.c:0:7
	movq	16(%rsp), %r14                  # 8-byte Reload
.Ltmp88:
	.loc	0 151 16 is_stmt 1              # liblzma/simple/simple_coder.c:151:16
	movq	$0, (%r14)
	movq	40(%rsp), %r15                  # 8-byte Reload
.Ltmp89:
	.loc	0 171 6                         # liblzma/simple/simple_coder.c:171:6
	jmp	.LBB1_29
.Ltmp90:
.LBB1_14:                               # %if.else
	#DEBUG_VALUE: simple_code:pcoder <- $rbx
	#DEBUG_VALUE: simple_code:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: simple_code:in <- $r13
	#DEBUG_VALUE: simple_code:in_pos <- [$rsp+0]
	#DEBUG_VALUE: simple_code:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: simple_code:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: simple_code:coder <- $rbx
	#DEBUG_VALUE: out_start <- $rbp
	#DEBUG_VALUE: size <- $r15
	#DEBUG_VALUE: filtered <- $rax
	#DEBUG_VALUE: unfiltered <- $r12
	.loc	0 153 25                        # liblzma/simple/simple_coder.c:153:25
	cmpq	%rax, %r15
	movq	16(%rsp), %r14                  # 8-byte Reload
.Ltmp91:
	.loc	0 153 14 is_stmt 0              # liblzma/simple/simple_coder.c:153:14
	je	.LBB1_18
.Ltmp92:
# %bb.15:                               # %if.then40
	#DEBUG_VALUE: simple_code:pcoder <- $rbx
	#DEBUG_VALUE: simple_code:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: simple_code:in <- $r13
	#DEBUG_VALUE: simple_code:in_pos <- [$rsp+0]
	#DEBUG_VALUE: simple_code:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: simple_code:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: simple_code:coder <- $rbx
	#DEBUG_VALUE: out_start <- $rbp
	#DEBUG_VALUE: size <- $r15
	#DEBUG_VALUE: filtered <- $rax
	#DEBUG_VALUE: unfiltered <- $r12
	.loc	0 0 0                           # liblzma/simple/simple_coder.c:0:0
	leaq	128(%rbx), %rdi
	movq	112(%rsp), %rbp
.Ltmp93:
	.loc	0 156 13 is_stmt 1              # liblzma/simple/simple_coder.c:156:13
	movq	(%rbp), %rsi
	subq	%r12, %rsi
	movq	%rsi, (%rbp)
	.loc	0 157 30                        # liblzma/simple/simple_coder.c:157:30
	addq	24(%rsp), %rsi                  # 8-byte Folded Reload
	.loc	0 157 4 is_stmt 0               # liblzma/simple/simple_coder.c:157:4
	movq	%r12, %rdx
	callq	memcpy@PLT
.Ltmp94:
.LBB1_18:                               # %if.end65
	#DEBUG_VALUE: simple_code:pcoder <- $rbx
	#DEBUG_VALUE: simple_code:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: simple_code:in <- $r13
	#DEBUG_VALUE: simple_code:in_pos <- [$rsp+0]
	#DEBUG_VALUE: simple_code:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: simple_code:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: simple_code:coder <- $rbx
	.loc	0 171 18 is_stmt 1              # liblzma/simple/simple_coder.c:171:18
	testq	%r12, %r12
	movq	40(%rsp), %r15                  # 8-byte Reload
.Ltmp95:
	.loc	0 171 6 is_stmt 0               # liblzma/simple/simple_coder.c:171:6
	je	.LBB1_29
.Ltmp96:
# %bb.19:                               # %if.then68
	#DEBUG_VALUE: simple_code:pcoder <- $rbx
	#DEBUG_VALUE: simple_code:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: simple_code:in <- $r13
	#DEBUG_VALUE: simple_code:in_pos <- [$rsp+0]
	#DEBUG_VALUE: simple_code:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: simple_code:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: simple_code:coder <- $rbx
	.loc	0 175 13 is_stmt 1              # liblzma/simple/simple_coder.c:175:13
	leaq	128(%rbx), %rbp
.Ltmp97:
	#DEBUG_VALUE: copy_or_code:pcoder <- $rbx
	#DEBUG_VALUE: copy_or_code:allocator <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:in <- $r13
	#DEBUG_VALUE: copy_or_code:in_pos <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:in_size <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:out <- $rbp
	#DEBUG_VALUE: copy_or_code:out_pos <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:out_size <- undef
	#DEBUG_VALUE: copy_or_code:action <- undef
	#DEBUG_VALUE: copy_or_code:coder <- $rbx
	.loc	0 29 18                         # liblzma/simple/simple_coder.c:29:18
	movq	24(%rbx), %r10
.Ltmp98:
	.loc	0 176 13                        # liblzma/simple/simple_coder.c:176:13
	movq	96(%rbx), %rax
.Ltmp99:
	#DEBUG_VALUE: copy_or_code:out_size <- $rax
	.loc	0 29 23                         # liblzma/simple/simple_coder.c:29:23
	testq	%r10, %r10
.Ltmp100:
	.loc	0 29 6 is_stmt 0                # liblzma/simple/simple_coder.c:29:6
	je	.LBB1_20
.Ltmp101:
# %bb.23:                               # %if.else.i195
	#DEBUG_VALUE: simple_code:pcoder <- $rbx
	#DEBUG_VALUE: simple_code:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: simple_code:in <- $r13
	#DEBUG_VALUE: simple_code:in_pos <- [$rsp+0]
	#DEBUG_VALUE: simple_code:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: simple_code:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: simple_code:coder <- $rbx
	#DEBUG_VALUE: copy_or_code:pcoder <- $rbx
	#DEBUG_VALUE: copy_or_code:allocator <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:in <- $r13
	#DEBUG_VALUE: copy_or_code:in_pos <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:in_size <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:out <- $rbp
	#DEBUG_VALUE: copy_or_code:out_pos <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:out_size <- $rax
	#DEBUG_VALUE: copy_or_code:coder <- $rbx
	.loc	0 40 17 is_stmt 1               # liblzma/simple/simple_coder.c:40:17
	movq	(%rbx), %rdi
	.loc	0 39 24                         # liblzma/simple/simple_coder.c:39:24
	subq	$8, %rsp
.Ltmp102:
	.cfi_adjust_cfa_offset 8
	.loc	0 0 24 is_stmt 0                # liblzma/simple/simple_coder.c:0:24
	movq	40(%rsp), %rsi                  # 8-byte Reload
	.loc	0 39 24                         # liblzma/simple/simple_coder.c:39:24
	movq	%r13, %rdx
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	16(%rsp), %r8                   # 8-byte Reload
	movq	%rbp, %r9
	movl	136(%rsp), %r11d
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	callq	*%r10
.Ltmp103:
	#DEBUG_VALUE: ret <- $eax
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	.loc	0 44 7 is_stmt 1                # liblzma/simple/simple_coder.c:44:7
	testl	%eax, %eax
	movq	120(%rsp), %r12
	je	.LBB1_26
.Ltmp104:
# %bb.24:                               # %if.else.i195
	#DEBUG_VALUE: simple_code:pcoder <- $rbx
	#DEBUG_VALUE: simple_code:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: simple_code:in <- $r13
	#DEBUG_VALUE: simple_code:in_pos <- [$rsp+0]
	#DEBUG_VALUE: simple_code:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: simple_code:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: simple_code:coder <- $rbx
	#DEBUG_VALUE: copy_or_code:pcoder <- $rbx
	#DEBUG_VALUE: copy_or_code:allocator <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:in <- $r13
	#DEBUG_VALUE: copy_or_code:in_pos <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:in_size <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:out <- $rbp
	#DEBUG_VALUE: copy_or_code:out_pos <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:coder <- $rbx
	#DEBUG_VALUE: ret <- $eax
	cmpl	$1, %eax
	je	.LBB1_25
	jmp	.LBB1_32
.Ltmp105:
.LBB1_20:                               # %if.then.i201
	#DEBUG_VALUE: simple_code:pcoder <- $rbx
	#DEBUG_VALUE: simple_code:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: simple_code:in <- $r13
	#DEBUG_VALUE: simple_code:in_pos <- [$rsp+0]
	#DEBUG_VALUE: simple_code:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: simple_code:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: simple_code:coder <- $rbx
	#DEBUG_VALUE: copy_or_code:pcoder <- $rbx
	#DEBUG_VALUE: copy_or_code:allocator <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:in <- $r13
	#DEBUG_VALUE: copy_or_code:in_pos <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:in_size <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:out <- $rbp
	#DEBUG_VALUE: copy_or_code:out_pos <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:out_size <- $rax
	#DEBUG_VALUE: copy_or_code:coder <- $rbx
	.loc	0 30 3                          # liblzma/simple/simple_coder.c:30:3
	movq	%r13, %rdi
	movq	(%rsp), %rsi                    # 8-byte Reload
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rbp, %rcx
	movq	%r14, %r8
	movq	%rax, %r9
	callq	lzma_bufcpy@PLT
.Ltmp106:
	.loc	0 0 3 is_stmt 0                 # liblzma/simple/simple_coder.c:0:3
	movl	128(%rsp), %eax
	cmpl	$3, %eax
	movq	120(%rsp), %r12
.Ltmp107:
	.loc	0 33 25 is_stmt 1               # liblzma/simple/simple_coder.c:33:25
	jne	.LBB1_26
.Ltmp108:
# %bb.21:                               # %if.then.i201
	#DEBUG_VALUE: simple_code:pcoder <- $rbx
	#DEBUG_VALUE: simple_code:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: simple_code:in <- $r13
	#DEBUG_VALUE: simple_code:in_pos <- [$rsp+0]
	#DEBUG_VALUE: simple_code:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: simple_code:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: simple_code:coder <- $rbx
	#DEBUG_VALUE: copy_or_code:pcoder <- $rbx
	#DEBUG_VALUE: copy_or_code:allocator <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:in <- $r13
	#DEBUG_VALUE: copy_or_code:in_pos <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:in_size <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:out <- $rbp
	#DEBUG_VALUE: copy_or_code:out_pos <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:coder <- $rbx
	cmpb	$0, 65(%rbx)
	je	.LBB1_26
.Ltmp109:
# %bb.22:                               # %land.lhs.true2.i207
	#DEBUG_VALUE: simple_code:pcoder <- $rbx
	#DEBUG_VALUE: simple_code:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: simple_code:in <- $r13
	#DEBUG_VALUE: simple_code:in_pos <- [$rsp+0]
	#DEBUG_VALUE: simple_code:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: simple_code:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: simple_code:coder <- $rbx
	#DEBUG_VALUE: copy_or_code:pcoder <- $rbx
	#DEBUG_VALUE: copy_or_code:allocator <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:in <- $r13
	#DEBUG_VALUE: copy_or_code:in_pos <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:in_size <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:out <- $rbp
	#DEBUG_VALUE: copy_or_code:out_pos <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:coder <- $rbx
	.loc	0 0 25 is_stmt 0                # liblzma/simple/simple_coder.c:0:25
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	.loc	0 34 16 is_stmt 1               # liblzma/simple/simple_coder.c:34:16
	cmpq	%rax, (%rcx)
.Ltmp110:
	.loc	0 33 7                          # liblzma/simple/simple_coder.c:33:7
	jne	.LBB1_26
.Ltmp111:
.LBB1_25:                               # %cleanup.cont79.sink.split
	#DEBUG_VALUE: simple_code:pcoder <- $rbx
	#DEBUG_VALUE: simple_code:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: simple_code:in <- $r13
	#DEBUG_VALUE: simple_code:in_pos <- [$rsp+0]
	#DEBUG_VALUE: simple_code:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: simple_code:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: simple_code:coder <- $rbx
	#DEBUG_VALUE: copy_or_code:pcoder <- $rbx
	#DEBUG_VALUE: copy_or_code:allocator <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:in <- $r13
	#DEBUG_VALUE: copy_or_code:in_pos <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:in_size <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:out <- $rbp
	#DEBUG_VALUE: copy_or_code:out_pos <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: copy_or_code:coder <- $rbx
	.loc	0 0 0 is_stmt 0                 # liblzma/simple/simple_coder.c:0:0
	movb	$1, 64(%rbx)
.Ltmp112:
.LBB1_26:                               # %cleanup.cont79
	#DEBUG_VALUE: simple_code:pcoder <- $rbx
	#DEBUG_VALUE: simple_code:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: simple_code:in <- $r13
	#DEBUG_VALUE: simple_code:in_pos <- [$rsp+0]
	#DEBUG_VALUE: simple_code:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: simple_code:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: simple_code:coder <- $rbx
	#DEBUG_VALUE: ret <- 0
	.loc	0 183 34 is_stmt 1              # liblzma/simple/simple_coder.c:183:34
	movq	120(%rbx), %r8
.Ltmp113:
	#DEBUG_VALUE: call_filter:size <- $r8
	#DEBUG_VALUE: call_filter:pcoder <- $rbx
	#DEBUG_VALUE: call_filter:buffer <- $rbp
	#DEBUG_VALUE: call_filter:coder <- $rbx
	.loc	0 62 47                         # liblzma/simple/simple_coder.c:62:47
	movq	80(%rbx), %rdi
	.loc	0 63 11                         # liblzma/simple/simple_coder.c:63:11
	movl	88(%rbx), %esi
	.loc	0 63 27 is_stmt 0               # liblzma/simple/simple_coder.c:63:27
	movzbl	65(%rbx), %edx
	.loc	0 62 26 is_stmt 1               # liblzma/simple/simple_coder.c:62:26
	movq	%rbp, %rcx
	callq	*72(%rbx)
.Ltmp114:
	#DEBUG_VALUE: call_filter:filtered <- $rax
	.loc	0 65 17                         # liblzma/simple/simple_coder.c:65:17
	addl	%eax, 88(%rbx)
.Ltmp115:
	.loc	0 182 19                        # liblzma/simple/simple_coder.c:182:19
	movq	%rax, 112(%rbx)
	.loc	0 187 7                         # liblzma/simple/simple_coder.c:187:7
	cmpb	$1, 64(%rbx)
	jne	.LBB1_28
.Ltmp116:
# %bb.27:                               # %if.then87
	#DEBUG_VALUE: simple_code:pcoder <- $rbx
	#DEBUG_VALUE: simple_code:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: simple_code:in <- $r13
	#DEBUG_VALUE: simple_code:in_pos <- [$rsp+0]
	#DEBUG_VALUE: simple_code:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: simple_code:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: simple_code:coder <- $rbx
	.loc	0 188 29                        # liblzma/simple/simple_coder.c:188:29
	movq	120(%rbx), %rax
	.loc	0 188 20 is_stmt 0              # liblzma/simple/simple_coder.c:188:20
	movq	%rax, 112(%rbx)
.Ltmp117:
.LBB1_28:                               # %if.end90
	#DEBUG_VALUE: simple_code:pcoder <- $rbx
	#DEBUG_VALUE: simple_code:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: simple_code:in <- $r13
	#DEBUG_VALUE: simple_code:in_pos <- [$rsp+0]
	#DEBUG_VALUE: simple_code:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: simple_code:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: simple_code:coder <- $rbx
	.loc	0 191 3 is_stmt 1               # liblzma/simple/simple_coder.c:191:3
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	112(%rsp), %r8
	movq	%r12, %r9
	callq	lzma_bufcpy@PLT
.Ltmp118:
.LBB1_29:                               # %if.end96
	#DEBUG_VALUE: simple_code:pcoder <- $rbx
	#DEBUG_VALUE: simple_code:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: simple_code:in <- $r13
	#DEBUG_VALUE: simple_code:in_pos <- [$rsp+0]
	#DEBUG_VALUE: simple_code:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: simple_code:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: simple_code:coder <- $rbx
	.loc	0 196 29                        # liblzma/simple/simple_coder.c:196:29
	cmpb	$1, 64(%rbx)
	jne	.LBB1_31
.Ltmp119:
# %bb.30:                               # %land.lhs.true
	#DEBUG_VALUE: simple_code:pcoder <- $rbx
	#DEBUG_VALUE: simple_code:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: simple_code:in <- $r13
	#DEBUG_VALUE: simple_code:in_pos <- [$rsp+0]
	#DEBUG_VALUE: simple_code:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: simple_code:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: simple_code:coder <- $rbx
	.loc	0 196 39 is_stmt 0              # liblzma/simple/simple_coder.c:196:39
	movq	(%r15), %rcx
	movl	$1, %eax
	.loc	0 196 43                        # liblzma/simple/simple_coder.c:196:43
	cmpq	(%r14), %rcx
.Ltmp120:
	.loc	0 196 6                         # liblzma/simple/simple_coder.c:196:6
	je	.LBB1_32
.Ltmp121:
.LBB1_31:                               # %if.end103
	#DEBUG_VALUE: simple_code:pcoder <- $rbx
	#DEBUG_VALUE: simple_code:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: simple_code:in <- $r13
	#DEBUG_VALUE: simple_code:in_pos <- [$rsp+0]
	#DEBUG_VALUE: simple_code:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: simple_code:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: simple_code:coder <- $rbx
	.loc	0 0 6                           # liblzma/simple/simple_coder.c:0:6
	xorl	%eax, %eax
.Ltmp122:
.LBB1_32:                               # %cleanup106
	#DEBUG_VALUE: simple_code:pcoder <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: simple_code:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: simple_code:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: simple_code:in_pos <- [$rsp+0]
	#DEBUG_VALUE: simple_code:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: simple_code:out <- [DW_OP_LLVM_entry_value 1] $r9
	.loc	0 200 1 epilogue_begin is_stmt 1 # liblzma/simple/simple_coder.c:200:1
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
.Ltmp123:
.Lfunc_end1:
	.size	simple_code, .Lfunc_end1-simple_code
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function simple_coder_end
	.type	simple_coder_end,@function
simple_coder_end:                       # @simple_coder_end
.Lfunc_begin2:
	.loc	0 205 0                         # liblzma/simple/simple_coder.c:205:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: simple_coder_end:pcoder <- $rdi
	#DEBUG_VALUE: simple_coder_end:allocator <- $rsi
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
.Ltmp124:
	#DEBUG_VALUE: simple_coder_end:coder <- $rdi
	movq	%rsi, %rbx
	movq	%rdi, %r14
.Ltmp125:
	.loc	0 207 2 prologue_end            # liblzma/simple/simple_coder.c:207:2
	callq	lzma_next_end@PLT
.Ltmp126:
	#DEBUG_VALUE: simple_coder_end:allocator <- $rbx
	#DEBUG_VALUE: simple_coder_end:coder <- $r14
	#DEBUG_VALUE: simple_coder_end:pcoder <- $r14
	.loc	0 208 19                        # liblzma/simple/simple_coder.c:208:19
	movq	80(%r14), %rdi
	.loc	0 208 2 is_stmt 0               # liblzma/simple/simple_coder.c:208:2
	movq	%rbx, %rsi
	callq	lzma_free@PLT
.Ltmp127:
	.loc	0 209 2 is_stmt 1               # liblzma/simple/simple_coder.c:209:2
	movq	%r14, %rdi
	movq	%rbx, %rsi
	.loc	0 209 2 epilogue_begin is_stmt 0 # liblzma/simple/simple_coder.c:209:2
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp128:
	#DEBUG_VALUE: simple_coder_end:allocator <- $rsi
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp129:
	#DEBUG_VALUE: simple_coder_end:coder <- $rdi
	#DEBUG_VALUE: simple_coder_end:pcoder <- $rdi
	.cfi_def_cfa_offset 8
	jmp	lzma_free@PLT                   # TAILCALL
.Ltmp130:
.Lfunc_end2:
	.size	simple_coder_end, .Lfunc_end2-simple_coder_end
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function simple_coder_update
	.type	simple_coder_update,@function
simple_coder_update:                    # @simple_coder_update
.Lfunc_begin3:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: simple_coder_update:pcoder <- $rdi
	#DEBUG_VALUE: simple_coder_update:allocator <- $rsi
	#DEBUG_VALUE: simple_coder_update:reversed_filters <- $rcx
	#DEBUG_VALUE: simple_coder_update:coder <- $rdi
	.loc	0 222 46 prologue_end is_stmt 1 # liblzma/simple/simple_coder.c:222:46
	leaq	16(%rcx), %rdx
.Ltmp131:
	.loc	0 221 9                         # liblzma/simple/simple_coder.c:221:9
	jmp	lzma_next_filter_update@PLT     # TAILCALL
.Ltmp132:
.Lfunc_end3:
	.size	simple_coder_update, .Lfunc_end3-simple_coder_update
	.cfi_endproc
                                        # -- End function
	.file	11 "liblzma/api/lzma" "bcj.h" md5 0xa1035092336f34cf9afafbb05b1edd83
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	45                              # Offset entry count
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
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp3-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp34-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp34-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp3-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp8-.Lfunc_begin0           #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp13-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp13-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp26-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp34-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp34-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp3-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp8-.Lfunc_begin0           #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp11-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp11-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp26-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp34-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp34-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp3-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp8-.Lfunc_begin0           #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp9-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp9-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp26-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp34-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp34-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp3-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp8-.Lfunc_begin0           #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	88                              # DW_OP_reg8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp10-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp10-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp26-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp34-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	88                              # DW_OP_reg8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp34-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp3-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp8-.Lfunc_begin0           #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	89                              # DW_OP_reg9
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp14-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp14-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	89                              # DW_OP_reg9
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp28-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp33-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp34-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp5-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp6-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp45-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp45-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp122-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp122-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp47-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp53-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp55-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp67-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp69-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp102-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp104-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp122-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp122-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp43-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp43-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp46-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp46-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp53-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp122-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp122-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp38-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp38-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp67-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp69-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp102-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp104-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp37-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp37-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp67-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp69-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp102-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp104-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp48-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp48-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp54-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp54-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp56-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp56-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp67-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp69-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp102-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp104-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp122-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp122-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	89                              # DW_OP_reg9
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp67-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	240                             # 112
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp81-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	240                             # 112
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp67-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	248                             # 120
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp81-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	248                             # 120
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp67-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	128                             # 128
	.byte	1                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp81-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	128                             # 128
	.byte	1                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp45-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp45-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp122-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp57-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp62-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp73-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp58-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp63-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp74-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp74-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp75-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp60-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp93-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp64-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp82-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc22:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp64-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp67-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp69-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp82-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc23:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp64-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp82-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc24:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp64-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp67-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp69-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp82-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc25:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp64-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp67-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp69-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp82-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc26:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp64-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp67-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp69-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp82-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc27:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp64-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp82-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc28:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp64-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp82-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc29:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp68-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc30:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp83-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp89-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp90-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp94-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc31:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp84-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp87-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc32:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp84-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp94-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc33:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp86-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp94-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc34:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp97-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp102-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp104-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp112-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc35:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp97-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp102-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp104-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp112-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc36:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp97-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp102-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp104-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp112-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc37:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp97-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp102-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp104-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp112-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc38:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp99-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp103-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp105-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp106-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc39:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp103-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp105-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc40:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp113-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp114-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc41:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp114-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp116-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc42:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp126-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp126-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp129-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp129-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp130-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc43:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp126-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp126-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp128-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp128-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp130-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc44:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp124-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp126-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp126-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp129-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp129-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp130-.Lfunc_begin0         #   ending offset
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
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
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
	.byte	10                              # Abbreviation Code
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
	.byte	14                              # Abbreviation Code
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
	.byte	5                               # DW_FORM_data2
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # DW_FORM_data1
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
	.byte	19                              # DW_TAG_structure_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	21                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	22                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	23                              # Abbreviation Code
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
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	27                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
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
	.byte	5                               # DW_FORM_data2
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
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
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
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	33                              # Abbreviation Code
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
	.byte	34                              # Abbreviation Code
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
	.byte	35                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
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
	.byte	37                              # Abbreviation Code
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
	.byte	38                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	39                              # Abbreviation Code
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
	.byte	40                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	41                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	42                              # Abbreviation Code
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
	.byte	43                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	44                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	45                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.ascii	"\203\001"                      # DW_AT_call_target
	.byte	24                              # DW_FORM_exprloc
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	46                              # Abbreviation Code
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
	.byte	47                              # Abbreviation Code
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
	.byte	48                              # Abbreviation Code
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	5                               # DWARF version number
	.byte	1                               # DWARF Unit Type
	.byte	8                               # Address Size (in bytes)
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	1                               # Abbrev [1] 0xc:0x7d5 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin0       # DW_AT_high_pc
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
	.byte	5                               # Abbrev [5] 0x86:0x1 DW_TAG_pointer_type
	.byte	6                               # Abbrev [6] 0x87:0x5 DW_TAG_pointer_type
	.long	140                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x8c:0x69 DW_TAG_structure_type
	.byte	72                              # DW_AT_name
	.byte	128                             # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x91:0x9 DW_TAG_member
	.byte	24                              # DW_AT_name
	.long	245                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x9a:0x9 DW_TAG_member
	.byte	56                              # DW_AT_name
	.long	780                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0xa3:0x9 DW_TAG_member
	.byte	58                              # DW_AT_name
	.long	780                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	65                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0xac:0x9 DW_TAG_member
	.byte	59                              # DW_AT_name
	.long	784                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0xb5:0x9 DW_TAG_member
	.byte	64                              # DW_AT_name
	.long	820                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0xbe:0x9 DW_TAG_member
	.byte	65                              # DW_AT_name
	.long	835                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0xc7:0x9 DW_TAG_member
	.byte	66                              # DW_AT_name
	.long	524                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0xd0:0x9 DW_TAG_member
	.byte	67                              # DW_AT_name
	.long	524                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0xd9:0x9 DW_TAG_member
	.byte	68                              # DW_AT_name
	.long	524                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0xe2:0x9 DW_TAG_member
	.byte	69                              # DW_AT_name
	.long	524                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0xeb:0x9 DW_TAG_member
	.byte	70                              # DW_AT_name
	.long	851                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	64                              # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xf5:0x8 DW_TAG_typedef
	.long	253                             # DW_AT_type
	.byte	55                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0xfd:0x4e DW_TAG_structure_type
	.byte	54                              # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x102:0x9 DW_TAG_member
	.byte	25                              # DW_AT_name
	.long	331                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x10b:0x9 DW_TAG_member
	.byte	27                              # DW_AT_name
	.long	340                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x114:0x9 DW_TAG_member
	.byte	32                              # DW_AT_name
	.long	368                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x11d:0x9 DW_TAG_member
	.byte	34                              # DW_AT_name
	.long	376                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x126:0x9 DW_TAG_member
	.byte	46                              # DW_AT_name
	.long	613                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x12f:0x9 DW_TAG_member
	.byte	48                              # DW_AT_name
	.long	638                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x138:0x9 DW_TAG_member
	.byte	50                              # DW_AT_name
	.long	672                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x141:0x9 DW_TAG_member
	.byte	51                              # DW_AT_name
	.long	708                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x14b:0x5 DW_TAG_pointer_type
	.long	336                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x150:0x4 DW_TAG_typedef
	.byte	26                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x154:0x8 DW_TAG_typedef
	.long	348                             # DW_AT_type
	.byte	31                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x15c:0x8 DW_TAG_typedef
	.long	356                             # DW_AT_type
	.byte	30                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x164:0x8 DW_TAG_typedef
	.long	364                             # DW_AT_type
	.byte	29                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x16c:0x4 DW_TAG_base_type
	.byte	28                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x170:0x8 DW_TAG_typedef
	.long	364                             # DW_AT_type
	.byte	33                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x178:0x8 DW_TAG_typedef
	.long	384                             # DW_AT_type
	.byte	45                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x180:0x5 DW_TAG_pointer_type
	.long	389                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x185:0x33 DW_TAG_subroutine_type
	.long	440                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	12                              # Abbrev [12] 0x18a:0x5 DW_TAG_formal_parameter
	.long	331                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x18f:0x5 DW_TAG_formal_parameter
	.long	448                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x194:0x5 DW_TAG_formal_parameter
	.long	549                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x199:0x5 DW_TAG_formal_parameter
	.long	584                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x19e:0x5 DW_TAG_formal_parameter
	.long	524                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1a3:0x5 DW_TAG_formal_parameter
	.long	594                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1a8:0x5 DW_TAG_formal_parameter
	.long	584                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1ad:0x5 DW_TAG_formal_parameter
	.long	524                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1b2:0x5 DW_TAG_formal_parameter
	.long	604                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x1b8:0x8 DW_TAG_typedef
	.long	43                              # DW_AT_type
	.byte	35                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x1c0:0x5 DW_TAG_pointer_type
	.long	453                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x1c5:0x9 DW_TAG_typedef
	.long	462                             # DW_AT_type
	.byte	40                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	403                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x1ce:0x24 DW_TAG_structure_type
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.short	341                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x1d3:0xa DW_TAG_member
	.byte	36                              # DW_AT_name
	.long	498                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	376                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x1dd:0xa DW_TAG_member
	.byte	38                              # DW_AT_name
	.long	532                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x1e7:0xa DW_TAG_member
	.byte	39                              # DW_AT_name
	.long	134                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	401                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x1f2:0x5 DW_TAG_pointer_type
	.long	503                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x1f7:0x15 DW_TAG_subroutine_type
	.long	134                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	12                              # Abbrev [12] 0x1fc:0x5 DW_TAG_formal_parameter
	.long	134                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x201:0x5 DW_TAG_formal_parameter
	.long	524                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x206:0x5 DW_TAG_formal_parameter
	.long	524                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x20c:0x8 DW_TAG_typedef
	.long	364                             # DW_AT_type
	.byte	37                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x214:0x5 DW_TAG_pointer_type
	.long	537                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x219:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	12                              # Abbrev [12] 0x21a:0x5 DW_TAG_formal_parameter
	.long	134                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x21f:0x5 DW_TAG_formal_parameter
	.long	134                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x225:0x5 DW_TAG_restrict_type
	.long	554                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x22a:0x5 DW_TAG_pointer_type
	.long	559                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x22f:0x5 DW_TAG_const_type
	.long	564                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x234:0x8 DW_TAG_typedef
	.long	572                             # DW_AT_type
	.byte	43                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x23c:0x8 DW_TAG_typedef
	.long	580                             # DW_AT_type
	.byte	42                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x244:0x4 DW_TAG_base_type
	.byte	41                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	17                              # Abbrev [17] 0x248:0x5 DW_TAG_restrict_type
	.long	589                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x24d:0x5 DW_TAG_pointer_type
	.long	524                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x252:0x5 DW_TAG_restrict_type
	.long	599                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x257:0x5 DW_TAG_pointer_type
	.long	564                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x25c:0x9 DW_TAG_typedef
	.long	92                              # DW_AT_type
	.byte	44                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	322                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x265:0x8 DW_TAG_typedef
	.long	621                             # DW_AT_type
	.byte	47                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x26d:0x5 DW_TAG_pointer_type
	.long	626                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x272:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	12                              # Abbrev [12] 0x273:0x5 DW_TAG_formal_parameter
	.long	331                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x278:0x5 DW_TAG_formal_parameter
	.long	448                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x27e:0x5 DW_TAG_pointer_type
	.long	643                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x283:0xb DW_TAG_subroutine_type
	.long	654                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	12                              # Abbrev [12] 0x288:0x5 DW_TAG_formal_parameter
	.long	662                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x28e:0x8 DW_TAG_typedef
	.long	113                             # DW_AT_type
	.byte	49                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x296:0x5 DW_TAG_pointer_type
	.long	667                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x29b:0x5 DW_TAG_const_type
	.long	336                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x2a0:0x5 DW_TAG_pointer_type
	.long	677                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2a5:0x1a DW_TAG_subroutine_type
	.long	440                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	12                              # Abbrev [12] 0x2aa:0x5 DW_TAG_formal_parameter
	.long	331                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2af:0x5 DW_TAG_formal_parameter
	.long	703                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2b4:0x5 DW_TAG_formal_parameter
	.long	703                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2b9:0x5 DW_TAG_formal_parameter
	.long	348                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x2bf:0x5 DW_TAG_pointer_type
	.long	348                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x2c4:0x5 DW_TAG_pointer_type
	.long	713                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2c9:0x1a DW_TAG_subroutine_type
	.long	440                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	12                              # Abbrev [12] 0x2ce:0x5 DW_TAG_formal_parameter
	.long	331                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2d3:0x5 DW_TAG_formal_parameter
	.long	448                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2d8:0x5 DW_TAG_formal_parameter
	.long	739                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2dd:0x5 DW_TAG_formal_parameter
	.long	739                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x2e3:0x5 DW_TAG_pointer_type
	.long	744                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x2e8:0x5 DW_TAG_const_type
	.long	749                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x2ed:0x8 DW_TAG_typedef
	.long	757                             # DW_AT_type
	.byte	53                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x2f5:0x17 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x2f9:0x9 DW_TAG_member
	.byte	27                              # DW_AT_name
	.long	340                             # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x302:0x9 DW_TAG_member
	.byte	52                              # DW_AT_name
	.long	134                             # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x30c:0x4 DW_TAG_base_type
	.byte	57                              # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x310:0x5 DW_TAG_pointer_type
	.long	789                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x315:0x1f DW_TAG_subroutine_type
	.long	524                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	12                              # Abbrev [12] 0x31a:0x5 DW_TAG_formal_parameter
	.long	820                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x31f:0x5 DW_TAG_formal_parameter
	.long	835                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x324:0x5 DW_TAG_formal_parameter
	.long	780                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x329:0x5 DW_TAG_formal_parameter
	.long	599                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x32e:0x5 DW_TAG_formal_parameter
	.long	524                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x334:0x5 DW_TAG_pointer_type
	.long	825                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x339:0x8 DW_TAG_typedef
	.long	833                             # DW_AT_type
	.byte	61                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x341:0x2 DW_TAG_structure_type
	.byte	60                              # DW_AT_name
                                        # DW_AT_declaration
	.byte	9                               # Abbrev [9] 0x343:0x8 DW_TAG_typedef
	.long	843                             # DW_AT_type
	.byte	63                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x34b:0x8 DW_TAG_typedef
	.long	88                              # DW_AT_type
	.byte	62                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0x353:0xb DW_TAG_array_type
	.long	564                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x358:0x5 DW_TAG_subrange_type
	.long	862                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x35e:0x4 DW_TAG_base_type
	.byte	71                              # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	24                              # Abbrev [24] 0x362:0x7e DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	94                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	440                             # DW_AT_type
                                        # DW_AT_external
	.byte	25                              # Abbrev [25] 0x371:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	24                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.long	1035                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0x37a:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	80                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.long	448                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x383:0x9 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	98                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	228                             # DW_AT_decl_line
	.long	1040                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0x38c:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	59                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.long	784                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x395:0x9 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_location
	.byte	99                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	231                             # DW_AT_decl_line
	.long	524                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x39e:0x9 DW_TAG_formal_parameter
	.byte	5                               # DW_AT_location
	.byte	100                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	231                             # DW_AT_decl_line
	.long	524                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x3a7:0xc DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.asciz	"\320"
	.byte	101                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	232                             # DW_AT_decl_line
	.long	835                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x3b3:0x9 DW_TAG_formal_parameter
	.byte	6                               # DW_AT_location
	.byte	58                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	232                             # DW_AT_decl_line
	.long	780                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x3bc:0x11 DW_TAG_lexical_block
	.byte	1                               # DW_AT_low_pc
	.long	.Ltmp8-.Ltmp5                   # DW_AT_high_pc
	.byte	28                              # Abbrev [28] 0x3c2:0xa DW_TAG_variable
	.byte	7                               # DW_AT_location
	.byte	64                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	265                             # DW_AT_decl_line
	.long	1984                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x3cd:0x6 DW_TAG_call_site
	.long	992                             # DW_AT_call_origin
	.byte	2                               # DW_AT_call_return_pc
	.byte	29                              # Abbrev [29] 0x3d3:0x6 DW_TAG_call_site
	.long	992                             # DW_AT_call_origin
	.byte	3                               # DW_AT_call_return_pc
	.byte	30                              # Abbrev [30] 0x3d9:0x6 DW_TAG_call_site
	.long	1011                            # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	4                               # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0x3e0:0x13 DW_TAG_subprogram
	.byte	73                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	211                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	134                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	12                              # Abbrev [12] 0x3e8:0x5 DW_TAG_formal_parameter
	.long	524                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x3ed:0x5 DW_TAG_formal_parameter
	.long	448                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0x3f3:0x18 DW_TAG_subprogram
	.byte	74                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	440                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	12                              # Abbrev [12] 0x3fb:0x5 DW_TAG_formal_parameter
	.long	1035                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x400:0x5 DW_TAG_formal_parameter
	.long	448                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x405:0x5 DW_TAG_formal_parameter
	.long	1040                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x40b:0x5 DW_TAG_pointer_type
	.long	245                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x410:0x5 DW_TAG_pointer_type
	.long	1045                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x415:0x5 DW_TAG_const_type
	.long	1050                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x41a:0x8 DW_TAG_typedef
	.long	1058                            # DW_AT_type
	.byte	77                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x422:0x21 DW_TAG_structure_type
	.byte	76                              # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x427:0x9 DW_TAG_member
	.byte	27                              # DW_AT_name
	.long	340                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x430:0x9 DW_TAG_member
	.byte	32                              # DW_AT_name
	.long	1091                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x439:0x9 DW_TAG_member
	.byte	52                              # DW_AT_name
	.long	134                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x443:0x8 DW_TAG_typedef
	.long	1099                            # DW_AT_type
	.byte	75                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x44b:0x5 DW_TAG_pointer_type
	.long	1104                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x450:0x15 DW_TAG_subroutine_type
	.long	440                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	12                              # Abbrev [12] 0x455:0x5 DW_TAG_formal_parameter
	.long	1035                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x45a:0x5 DW_TAG_formal_parameter
	.long	448                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x45f:0x5 DW_TAG_formal_parameter
	.long	1040                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	32                              # Abbrev [32] 0x465:0x63 DW_TAG_subprogram
	.byte	78                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	440                             # DW_AT_type
                                        # DW_AT_inline
	.byte	33                              # Abbrev [33] 0x46d:0x8 DW_TAG_formal_parameter
	.byte	79                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.long	331                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x475:0x8 DW_TAG_formal_parameter
	.byte	80                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.long	448                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x47d:0x8 DW_TAG_formal_parameter
	.byte	81                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.long	549                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x485:0x8 DW_TAG_formal_parameter
	.byte	82                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.long	584                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x48d:0x8 DW_TAG_formal_parameter
	.byte	83                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.long	524                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x495:0x8 DW_TAG_formal_parameter
	.byte	84                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.long	594                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x49d:0x8 DW_TAG_formal_parameter
	.byte	85                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.long	584                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x4a5:0x8 DW_TAG_formal_parameter
	.byte	86                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.long	524                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x4ad:0x8 DW_TAG_formal_parameter
	.byte	87                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.long	604                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0x4b5:0x8 DW_TAG_variable
	.byte	25                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.long	135                             # DW_AT_type
	.byte	35                              # Abbrev [35] 0x4bd:0xa DW_TAG_lexical_block
	.byte	34                              # Abbrev [34] 0x4be:0x8 DW_TAG_variable
	.byte	88                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.long	1224                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x4c8:0x5 DW_TAG_const_type
	.long	440                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x4cd:0x31 DW_TAG_subprogram
	.byte	89                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	524                             # DW_AT_type
                                        # DW_AT_inline
	.byte	33                              # Abbrev [33] 0x4d5:0x8 DW_TAG_formal_parameter
	.byte	79                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.long	331                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x4dd:0x8 DW_TAG_formal_parameter
	.byte	70                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.long	599                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x4e5:0x8 DW_TAG_formal_parameter
	.byte	69                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.long	524                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0x4ed:0x8 DW_TAG_variable
	.byte	25                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.long	135                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0x4f5:0x8 DW_TAG_variable
	.byte	68                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	62                              # DW_AT_decl_line
	.long	1278                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x4fe:0x5 DW_TAG_const_type
	.long	524                             # DW_AT_type
	.byte	36                              # Abbrev [36] 0x503:0x1e1 DW_TAG_subprogram
	.byte	5                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	5                               # DW_AT_frame_base
	.byte	156
	.byte	17
	.ascii	"\220\177"
	.byte	34
                                        # DW_AT_call_all_calls
	.byte	95                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	440                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x516:0x9 DW_TAG_formal_parameter
	.byte	8                               # DW_AT_location
	.byte	79                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.long	331                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x51f:0x9 DW_TAG_formal_parameter
	.byte	9                               # DW_AT_location
	.byte	80                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.long	448                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x528:0x9 DW_TAG_formal_parameter
	.byte	10                              # DW_AT_location
	.byte	81                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.long	549                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x531:0x9 DW_TAG_formal_parameter
	.byte	11                              # DW_AT_location
	.byte	82                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.long	584                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x53a:0x9 DW_TAG_formal_parameter
	.byte	12                              # DW_AT_location
	.byte	83                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.long	524                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x543:0x9 DW_TAG_formal_parameter
	.byte	13                              # DW_AT_location
	.byte	84                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.long	594                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x54c:0x9 DW_TAG_formal_parameter
	.byte	14                              # DW_AT_location
	.byte	85                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.long	584                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x555:0x9 DW_TAG_formal_parameter
	.byte	15                              # DW_AT_location
	.byte	86                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.long	524                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x55e:0x9 DW_TAG_formal_parameter
	.byte	16                              # DW_AT_location
	.byte	87                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.long	604                             # DW_AT_type
	.byte	37                              # Abbrev [37] 0x567:0x9 DW_TAG_variable
	.byte	17                              # DW_AT_location
	.byte	25                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.long	135                             # DW_AT_type
	.byte	37                              # Abbrev [37] 0x570:0x9 DW_TAG_variable
	.byte	18                              # DW_AT_location
	.byte	104                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.long	1278                            # DW_AT_type
	.byte	37                              # Abbrev [37] 0x579:0x9 DW_TAG_variable
	.byte	19                              # DW_AT_location
	.byte	105                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.long	1278                            # DW_AT_type
	.byte	38                              # Abbrev [38] 0x582:0xaa DW_TAG_lexical_block
	.byte	0                               # DW_AT_ranges
	.byte	37                              # Abbrev [37] 0x584:0x9 DW_TAG_variable
	.byte	20                              # DW_AT_location
	.byte	106                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.long	1278                            # DW_AT_type
	.byte	37                              # Abbrev [37] 0x58d:0x9 DW_TAG_variable
	.byte	30                              # DW_AT_location
	.byte	69                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.long	1278                            # DW_AT_type
	.byte	37                              # Abbrev [37] 0x596:0x9 DW_TAG_variable
	.byte	32                              # DW_AT_location
	.byte	68                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.long	1278                            # DW_AT_type
	.byte	37                              # Abbrev [37] 0x59f:0x9 DW_TAG_variable
	.byte	33                              # DW_AT_location
	.byte	107                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	140                             # DW_AT_decl_line
	.long	1278                            # DW_AT_type
	.byte	38                              # Abbrev [38] 0x5a8:0x52 DW_TAG_lexical_block
	.byte	1                               # DW_AT_ranges
	.byte	34                              # Abbrev [34] 0x5aa:0x8 DW_TAG_variable
	.byte	88                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.long	1224                            # DW_AT_type
	.byte	39                              # Abbrev [39] 0x5b2:0x47 DW_TAG_inlined_subroutine
	.long	1125                            # DW_AT_abstract_origin
	.byte	2                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	127                             # DW_AT_call_line
	.byte	25                              # DW_AT_call_column
	.byte	40                              # Abbrev [40] 0x5bb:0x6 DW_TAG_formal_parameter
	.byte	21                              # DW_AT_location
	.long	1133                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0x5c1:0x6 DW_TAG_formal_parameter
	.byte	22                              # DW_AT_location
	.long	1141                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0x5c7:0x6 DW_TAG_formal_parameter
	.byte	23                              # DW_AT_location
	.long	1149                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0x5cd:0x6 DW_TAG_formal_parameter
	.byte	24                              # DW_AT_location
	.long	1157                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0x5d3:0x6 DW_TAG_formal_parameter
	.byte	25                              # DW_AT_location
	.long	1165                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0x5d9:0x6 DW_TAG_formal_parameter
	.byte	26                              # DW_AT_location
	.long	1173                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0x5df:0x6 DW_TAG_formal_parameter
	.byte	27                              # DW_AT_location
	.long	1181                            # DW_AT_abstract_origin
	.byte	41                              # Abbrev [41] 0x5e5:0x6 DW_TAG_variable
	.byte	28                              # DW_AT_location
	.long	1205                            # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x5eb:0xd DW_TAG_lexical_block
	.byte	6                               # DW_AT_low_pc
	.long	.Ltmp70-.Ltmp66                 # DW_AT_high_pc
	.byte	41                              # Abbrev [41] 0x5f1:0x6 DW_TAG_variable
	.byte	29                              # DW_AT_location
	.long	1214                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	42                              # Abbrev [42] 0x5fa:0x31 DW_TAG_inlined_subroutine
	.long	1229                            # DW_AT_abstract_origin
	.byte	7                               # DW_AT_low_pc
	.long	.Ltmp85-.Ltmp83                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	137                             # DW_AT_call_line
	.byte	27                              # DW_AT_call_column
	.byte	43                              # Abbrev [43] 0x607:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	1237                            # DW_AT_abstract_origin
	.byte	43                              # Abbrev [43] 0x60e:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	48
	.long	1245                            # DW_AT_abstract_origin
	.byte	43                              # Abbrev [43] 0x616:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	95
	.long	1253                            # DW_AT_abstract_origin
	.byte	44                              # Abbrev [44] 0x61d:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	83
	.long	1261                            # DW_AT_abstract_origin
	.byte	41                              # Abbrev [41] 0x624:0x6 DW_TAG_variable
	.byte	31                              # DW_AT_location
	.long	1269                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x62c:0x60 DW_TAG_lexical_block
	.byte	8                               # DW_AT_low_pc
	.long	.Ltmp112-.Ltmp96                # DW_AT_high_pc
	.byte	34                              # Abbrev [34] 0x632:0x8 DW_TAG_variable
	.byte	88                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.long	1224                            # DW_AT_type
	.byte	39                              # Abbrev [39] 0x63a:0x51 DW_TAG_inlined_subroutine
	.long	1125                            # DW_AT_abstract_origin
	.byte	3                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	173                             # DW_AT_call_line
	.byte	25                              # DW_AT_call_column
	.byte	43                              # Abbrev [43] 0x643:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	1133                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0x64a:0x6 DW_TAG_formal_parameter
	.byte	34                              # DW_AT_location
	.long	1141                            # DW_AT_abstract_origin
	.byte	43                              # Abbrev [43] 0x650:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	93
	.long	1149                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0x657:0x6 DW_TAG_formal_parameter
	.byte	35                              # DW_AT_location
	.long	1157                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0x65d:0x6 DW_TAG_formal_parameter
	.byte	36                              # DW_AT_location
	.long	1165                            # DW_AT_abstract_origin
	.byte	43                              # Abbrev [43] 0x663:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	86
	.long	1173                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0x66a:0x6 DW_TAG_formal_parameter
	.byte	37                              # DW_AT_location
	.long	1181                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0x670:0x6 DW_TAG_formal_parameter
	.byte	38                              # DW_AT_location
	.long	1189                            # DW_AT_abstract_origin
	.byte	44                              # Abbrev [44] 0x676:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	83
	.long	1205                            # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x67d:0xd DW_TAG_lexical_block
	.byte	9                               # DW_AT_low_pc
	.long	.Ltmp105-.Ltmp101               # DW_AT_high_pc
	.byte	41                              # Abbrev [41] 0x683:0x6 DW_TAG_variable
	.byte	39                              # DW_AT_location
	.long	1214                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	42                              # Abbrev [42] 0x68c:0x2f DW_TAG_inlined_subroutine
	.long	1229                            # DW_AT_abstract_origin
	.byte	10                              # DW_AT_low_pc
	.long	.Ltmp115-.Ltmp113               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	182                             # DW_AT_call_line
	.byte	21                              # DW_AT_call_column
	.byte	43                              # Abbrev [43] 0x699:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	1237                            # DW_AT_abstract_origin
	.byte	43                              # Abbrev [43] 0x6a0:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	86
	.long	1245                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0x6a7:0x6 DW_TAG_formal_parameter
	.byte	40                              # DW_AT_location
	.long	1253                            # DW_AT_abstract_origin
	.byte	44                              # Abbrev [44] 0x6ad:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	83
	.long	1261                            # DW_AT_abstract_origin
	.byte	41                              # Abbrev [41] 0x6b4:0x6 DW_TAG_variable
	.byte	41                              # DW_AT_location
	.long	1269                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x6bb:0x6 DW_TAG_call_site
	.long	1764                            # DW_AT_call_origin
	.byte	11                              # DW_AT_call_return_pc
	.byte	45                              # Abbrev [45] 0x6c1:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	80
	.byte	12                              # DW_AT_call_return_pc
	.byte	29                              # Abbrev [29] 0x6c5:0x6 DW_TAG_call_site
	.long	1764                            # DW_AT_call_origin
	.byte	13                              # DW_AT_call_return_pc
	.byte	45                              # Abbrev [45] 0x6cb:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	83
	.byte	14                              # DW_AT_call_return_pc
	.byte	45                              # Abbrev [45] 0x6cf:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	90
	.byte	15                              # DW_AT_call_return_pc
	.byte	29                              # Abbrev [29] 0x6d3:0x6 DW_TAG_call_site
	.long	1764                            # DW_AT_call_origin
	.byte	16                              # DW_AT_call_return_pc
	.byte	45                              # Abbrev [45] 0x6d9:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	83
	.byte	17                              # DW_AT_call_return_pc
	.byte	29                              # Abbrev [29] 0x6dd:0x6 DW_TAG_call_site
	.long	1764                            # DW_AT_call_origin
	.byte	18                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0x6e4:0x27 DW_TAG_subprogram
	.byte	90                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	242                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	524                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	12                              # Abbrev [12] 0x6ec:0x5 DW_TAG_formal_parameter
	.long	549                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x6f1:0x5 DW_TAG_formal_parameter
	.long	584                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x6f6:0x5 DW_TAG_formal_parameter
	.long	524                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x6fb:0x5 DW_TAG_formal_parameter
	.long	594                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x700:0x5 DW_TAG_formal_parameter
	.long	584                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x705:0x5 DW_TAG_formal_parameter
	.long	524                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	46                              # Abbrev [46] 0x70b:0x39 DW_TAG_subprogram
	.byte	19                              # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	96                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	204                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	25                              # Abbrev [25] 0x716:0x9 DW_TAG_formal_parameter
	.byte	42                              # DW_AT_location
	.byte	79                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	204                             # DW_AT_decl_line
	.long	331                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x71f:0x9 DW_TAG_formal_parameter
	.byte	43                              # DW_AT_location
	.byte	80                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	204                             # DW_AT_decl_line
	.long	448                             # DW_AT_type
	.byte	37                              # Abbrev [37] 0x728:0x9 DW_TAG_variable
	.byte	44                              # DW_AT_location
	.byte	25                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	206                             # DW_AT_decl_line
	.long	135                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x731:0x6 DW_TAG_call_site
	.long	1860                            # DW_AT_call_origin
	.byte	20                              # DW_AT_call_return_pc
	.byte	29                              # Abbrev [29] 0x737:0x6 DW_TAG_call_site
	.long	1875                            # DW_AT_call_origin
	.byte	21                              # DW_AT_call_return_pc
	.byte	30                              # Abbrev [30] 0x73d:0x6 DW_TAG_call_site
	.long	1875                            # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	22                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	47                              # Abbrev [47] 0x744:0xf DW_TAG_subprogram
	.byte	91                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	12                              # Abbrev [12] 0x748:0x5 DW_TAG_formal_parameter
	.long	1035                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x74d:0x5 DW_TAG_formal_parameter
	.long	448                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	47                              # Abbrev [47] 0x753:0xf DW_TAG_subprogram
	.byte	92                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	12                              # Abbrev [12] 0x757:0x5 DW_TAG_formal_parameter
	.long	134                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x75c:0x5 DW_TAG_formal_parameter
	.long	448                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0x762:0x46 DW_TAG_subprogram
	.byte	23                              # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	97                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	440                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x771:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	79                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.long	331                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x77b:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	80                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.long	448                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x785:0x8 DW_TAG_formal_parameter
	.byte	109                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	216                             # DW_AT_decl_line
	.long	739                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x78d:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	82
	.byte	108                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.long	739                             # DW_AT_type
	.byte	48                              # Abbrev [48] 0x797:0xa DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	25                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	219                             # DW_AT_decl_line
	.long	135                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x7a1:0x6 DW_TAG_call_site
	.long	1960                            # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	24                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0x7a8:0x18 DW_TAG_subprogram
	.byte	93                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	231                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	440                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	12                              # Abbrev [12] 0x7b0:0x5 DW_TAG_formal_parameter
	.long	1035                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x7b5:0x5 DW_TAG_formal_parameter
	.long	448                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x7ba:0x5 DW_TAG_formal_parameter
	.long	739                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x7c0:0x5 DW_TAG_pointer_type
	.long	1989                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x7c5:0x5 DW_TAG_const_type
	.long	1994                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x7ca:0x8 DW_TAG_typedef
	.long	2002                            # DW_AT_type
	.byte	103                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x7d2:0xe DW_TAG_structure_type
	.byte	4                               # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x7d6:0x9 DW_TAG_member
	.byte	102                             # DW_AT_name
	.long	835                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	88                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
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
	.uleb128 .Ltmp61-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp89-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp90-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp94-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges1:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp64-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp82-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges2:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp64-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp82-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges3:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp97-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp98-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp99-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp112-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	444                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/simple/simple_coder.c" # string offset=105
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
	.asciz	"end_was_reached"               # string offset=810
.Linfo_string57:
	.asciz	"_Bool"                         # string offset=826
.Linfo_string58:
	.asciz	"is_encoder"                    # string offset=832
.Linfo_string59:
	.asciz	"filter"                        # string offset=843
.Linfo_string60:
	.asciz	"lzma_simple_s"                 # string offset=850
.Linfo_string61:
	.asciz	"lzma_simple"                   # string offset=864
.Linfo_string62:
	.asciz	"__uint32_t"                    # string offset=876
.Linfo_string63:
	.asciz	"uint32_t"                      # string offset=887
.Linfo_string64:
	.asciz	"simple"                        # string offset=896
.Linfo_string65:
	.asciz	"now_pos"                       # string offset=903
.Linfo_string66:
	.asciz	"allocated"                     # string offset=911
.Linfo_string67:
	.asciz	"pos"                           # string offset=921
.Linfo_string68:
	.asciz	"filtered"                      # string offset=925
.Linfo_string69:
	.asciz	"size"                          # string offset=934
.Linfo_string70:
	.asciz	"buffer"                        # string offset=939
.Linfo_string71:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=946
.Linfo_string72:
	.asciz	"lzma_coder_s"                  # string offset=966
.Linfo_string73:
	.asciz	"lzma_alloc"                    # string offset=979
.Linfo_string74:
	.asciz	"lzma_next_filter_init"         # string offset=990
.Linfo_string75:
	.asciz	"lzma_init_function"            # string offset=1012
.Linfo_string76:
	.asciz	"lzma_filter_info_s"            # string offset=1031
.Linfo_string77:
	.asciz	"lzma_filter_info"              # string offset=1050
.Linfo_string78:
	.asciz	"copy_or_code"                  # string offset=1067
.Linfo_string79:
	.asciz	"pcoder"                        # string offset=1080
.Linfo_string80:
	.asciz	"allocator"                     # string offset=1087
.Linfo_string81:
	.asciz	"in"                            # string offset=1097
.Linfo_string82:
	.asciz	"in_pos"                        # string offset=1100
.Linfo_string83:
	.asciz	"in_size"                       # string offset=1107
.Linfo_string84:
	.asciz	"out"                           # string offset=1115
.Linfo_string85:
	.asciz	"out_pos"                       # string offset=1119
.Linfo_string86:
	.asciz	"out_size"                      # string offset=1127
.Linfo_string87:
	.asciz	"action"                        # string offset=1136
.Linfo_string88:
	.asciz	"ret"                           # string offset=1143
.Linfo_string89:
	.asciz	"call_filter"                   # string offset=1147
.Linfo_string90:
	.asciz	"lzma_bufcpy"                   # string offset=1159
.Linfo_string91:
	.asciz	"lzma_next_end"                 # string offset=1171
.Linfo_string92:
	.asciz	"lzma_free"                     # string offset=1185
.Linfo_string93:
	.asciz	"lzma_next_filter_update"       # string offset=1195
.Linfo_string94:
	.asciz	"lzma_simple_coder_init"        # string offset=1219
.Linfo_string95:
	.asciz	"simple_code"                   # string offset=1242
.Linfo_string96:
	.asciz	"simple_coder_end"              # string offset=1254
.Linfo_string97:
	.asciz	"simple_coder_update"           # string offset=1271
.Linfo_string98:
	.asciz	"filters"                       # string offset=1291
.Linfo_string99:
	.asciz	"simple_size"                   # string offset=1299
.Linfo_string100:
	.asciz	"unfiltered_max"                # string offset=1311
.Linfo_string101:
	.asciz	"alignment"                     # string offset=1326
.Linfo_string102:
	.asciz	"start_offset"                  # string offset=1336
.Linfo_string103:
	.asciz	"lzma_options_bcj"              # string offset=1349
.Linfo_string104:
	.asciz	"out_avail"                     # string offset=1366
.Linfo_string105:
	.asciz	"buf_avail"                     # string offset=1376
.Linfo_string106:
	.asciz	"out_start"                     # string offset=1386
.Linfo_string107:
	.asciz	"unfiltered"                    # string offset=1396
.Linfo_string108:
	.asciz	"reversed_filters"              # string offset=1407
.Linfo_string109:
	.asciz	"filters_null"                  # string offset=1424
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.Lfunc_begin0
	.quad	.Ltmp5
	.quad	.Ltmp14
	.quad	.Ltmp23
	.quad	.Ltmp33
	.quad	.Lfunc_begin1
	.quad	.Ltmp66
	.quad	.Ltmp83
	.quad	.Ltmp96
	.quad	.Ltmp101
	.quad	.Ltmp113
	.quad	.Ltmp49
	.quad	.Ltmp68
	.quad	.Ltmp76
	.quad	.Ltmp84
	.quad	.Ltmp103
	.quad	.Ltmp106
	.quad	.Ltmp114
	.quad	.Ltmp118
	.quad	.Lfunc_begin2
	.quad	.Ltmp126
	.quad	.Ltmp127
	.quad	.Ltmp129
	.quad	.Lfunc_begin3
	.quad	.Ltmp131
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
