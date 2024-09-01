	.text
	.file	"sha256.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/check/sha256.c" md5 0xf08126c77e17cbad9e33d75af3140f58
	.file	1 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	2 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.globl	lzma_sha256_init                # -- Begin function lzma_sha256_init
	.p2align	4, 0x90
	.type	lzma_sha256_init,@function
lzma_sha256_init:                       # @lzma_sha256_init
.Lfunc_begin0:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_sha256_init:check <- $rdi
	.loc	0 144 2 prologue_end            # liblzma/check/sha256.c:144:2
	movaps	lzma_sha256_init.s+16(%rip), %xmm0
	movups	%xmm0, 80(%rdi)
	movaps	lzma_sha256_init.s(%rip), %xmm0
	movups	%xmm0, 64(%rdi)
	.loc	0 145 27                        # liblzma/check/sha256.c:145:27
	movq	$0, 96(%rdi)
	.loc	0 147 2                         # liblzma/check/sha256.c:147:2
	retq
.Ltmp0:
.Lfunc_end0:
	.size	lzma_sha256_init, .Lfunc_end0-lzma_sha256_init
	.cfi_endproc
                                        # -- End function
	.globl	lzma_sha256_update              # -- Begin function lzma_sha256_update
	.p2align	4, 0x90
	.type	lzma_sha256_update,@function
lzma_sha256_update:                     # @lzma_sha256_update
.Lfunc_begin1:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_sha256_update:buf <- $rdi
	#DEBUG_VALUE: lzma_sha256_update:size <- $rsi
	#DEBUG_VALUE: lzma_sha256_update:check <- $rdx
	.loc	0 158 14 prologue_end           # liblzma/check/sha256.c:158:14
	testq	%rsi, %rsi
	.loc	0 158 2 is_stmt 0               # liblzma/check/sha256.c:158:2
	je	.LBB1_6
.Ltmp1:
# %bb.1:                                # %while.body.lr.ph
	#DEBUG_VALUE: lzma_sha256_update:buf <- $rdi
	#DEBUG_VALUE: lzma_sha256_update:size <- $rsi
	#DEBUG_VALUE: lzma_sha256_update:check <- $rdx
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
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	jmp	.LBB1_2
.Ltmp2:
	.p2align	4, 0x90
.LBB1_4:                                # %if.end12
                                        #   in Loop: Header=BB1_2 Depth=1
	#DEBUG_VALUE: lzma_sha256_update:check <- $rbx
	.loc	0 0 0                           # liblzma/check/sha256.c:0:0
	addq	%r12, %r15
.Ltmp3:
	#DEBUG_VALUE: lzma_sha256_update:buf <- $r15
	subq	%r12, %r14
.Ltmp4:
	#DEBUG_VALUE: lzma_sha256_update:size <- $r14
	#DEBUG_VALUE: lzma_sha256_update:buf <- $r15
	#DEBUG_VALUE: lzma_sha256_update:size <- $r14
	.loc	0 158 2                         # liblzma/check/sha256.c:158:2
	je	.LBB1_5
.Ltmp5:
.LBB1_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_sha256_update:buf <- $r15
	#DEBUG_VALUE: lzma_sha256_update:size <- $r14
	#DEBUG_VALUE: lzma_sha256_update:check <- $rbx
	#DEBUG_VALUE: lzma_sha256_update:buf <- $r15
	#DEBUG_VALUE: lzma_sha256_update:size <- $r14
	.loc	0 159 49 is_stmt 1              # liblzma/check/sha256.c:159:49
	movq	96(%rbx), %rdi
	.loc	0 159 54 is_stmt 0              # liblzma/check/sha256.c:159:54
	andl	$63, %edi
.Ltmp6:
	#DEBUG_VALUE: copy_start <- $edi
	.loc	0 160 25 is_stmt 1              # liblzma/check/sha256.c:160:25
	movl	$64, %r12d
	subq	%rdi, %r12
.Ltmp7:
	#DEBUG_VALUE: copy_size <- $r12
	.loc	0 161 7                         # liblzma/check/sha256.c:161:7
	cmpq	%r14, %r12
	cmovaeq	%r14, %r12
.Ltmp8:
	#DEBUG_VALUE: copy_size <- $r12
	.loc	0 164 27                        # liblzma/check/sha256.c:164:27
	addq	%rbx, %rdi
.Ltmp9:
	.loc	0 164 3 is_stmt 0               # liblzma/check/sha256.c:164:3
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	memcpy@PLT
.Ltmp10:
	#DEBUG_VALUE: lzma_sha256_update:buf <- undef
	#DEBUG_VALUE: lzma_sha256_update:size <- undef
	.loc	0 0 3                           # liblzma/check/sha256.c:0:3
	movq	96(%rbx), %rax
	.loc	0 168 28 is_stmt 1              # liblzma/check/sha256.c:168:28
	addq	%r12, %rax
	movq	%rax, 96(%rbx)
.Ltmp11:
	.loc	0 170 41                        # liblzma/check/sha256.c:170:41
	testb	$63, %al
.Ltmp12:
	.loc	0 170 7 is_stmt 0               # liblzma/check/sha256.c:170:7
	jne	.LBB1_4
.Ltmp13:
# %bb.3:                                # %if.then11
                                        #   in Loop: Header=BB1_2 Depth=1
	#DEBUG_VALUE: lzma_sha256_update:check <- $rbx
	#DEBUG_VALUE: copy_size <- $r12
	.loc	0 171 4 is_stmt 1               # liblzma/check/sha256.c:171:4
	movq	%rbx, %rdi
	callq	process
.Ltmp14:
	.loc	0 0 4 is_stmt 0                 # liblzma/check/sha256.c:0:4
	jmp	.LBB1_4
.Ltmp15:
.LBB1_5:
	#DEBUG_VALUE: lzma_sha256_update:buf <- $r15
	#DEBUG_VALUE: lzma_sha256_update:size <- $r14
	#DEBUG_VALUE: lzma_sha256_update:check <- $rbx
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
.Ltmp16:
	#DEBUG_VALUE: lzma_sha256_update:check <- [DW_OP_LLVM_entry_value 1] $rdx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp17:
	.cfi_def_cfa_offset 16
	popq	%r15
.Ltmp18:
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r14
	.cfi_restore %r15
.LBB1_6:                                # %while.end
	#DEBUG_VALUE: lzma_sha256_update:check <- [DW_OP_LLVM_entry_value 1] $rdx
	.loc	0 174 2 is_stmt 1               # liblzma/check/sha256.c:174:2
	retq
.Ltmp19:
.Lfunc_end1:
	.size	lzma_sha256_update, .Lfunc_end1-lzma_sha256_update
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function process
	.type	process,@function
process:                                # @process
.Lfunc_begin2:
	.loc	0 119 0                         # liblzma/check/sha256.c:119:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: process:check <- $rdi
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
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
.Ltmp20:
	#DEBUG_VALUE: i <- 0
	.loc	0 127 13 prologue_end           # liblzma/check/sha256.c:127:13
	movl	(%rdi), %eax
.Ltmp21:
	#DEBUG_VALUE: i <- 1
	movl	4(%rdi), %ecx
	bswapl	%eax
.Ltmp22:
	#DEBUG_VALUE: process:data <- [DW_OP_LLVM_fragment 0 32] $eax
	.loc	0 0 13 is_stmt 0                # liblzma/check/sha256.c:0:13
	movl	%eax, 72(%rsp)                  # 4-byte Spill
.Ltmp23:
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 72, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	.loc	0 127 13                        # liblzma/check/sha256.c:127:13
	bswapl	%ecx
.Ltmp24:
	#DEBUG_VALUE: process:data <- [DW_OP_LLVM_fragment 32 32] $ecx
	#DEBUG_VALUE: i <- 2
	.loc	0 0 13                          # liblzma/check/sha256.c:0:13
	movl	%ecx, 68(%rsp)                  # 4-byte Spill
.Ltmp25:
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 68, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	.loc	0 127 13                        # liblzma/check/sha256.c:127:13
	movl	8(%rdi), %eax
	bswapl	%eax
.Ltmp26:
	#DEBUG_VALUE: process:data <- [DW_OP_LLVM_fragment 64 32] $eax
	#DEBUG_VALUE: i <- 3
	.loc	0 0 13                          # liblzma/check/sha256.c:0:13
	movl	%eax, 64(%rsp)                  # 4-byte Spill
.Ltmp27:
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	.loc	0 127 13                        # liblzma/check/sha256.c:127:13
	movl	12(%rdi), %eax
	bswapl	%eax
.Ltmp28:
	#DEBUG_VALUE: process:data <- [DW_OP_LLVM_fragment 96 32] $eax
	#DEBUG_VALUE: i <- 4
	.loc	0 0 13                          # liblzma/check/sha256.c:0:13
	movl	%eax, 60(%rsp)                  # 4-byte Spill
.Ltmp29:
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 60, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	.loc	0 127 13                        # liblzma/check/sha256.c:127:13
	movl	16(%rdi), %eax
	bswapl	%eax
.Ltmp30:
	#DEBUG_VALUE: process:data <- [DW_OP_LLVM_fragment 128 32] $eax
	#DEBUG_VALUE: i <- 5
	.loc	0 0 13                          # liblzma/check/sha256.c:0:13
	movl	%eax, 56(%rsp)                  # 4-byte Spill
.Ltmp31:
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 56, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	.loc	0 127 13                        # liblzma/check/sha256.c:127:13
	movl	20(%rdi), %eax
	bswapl	%eax
.Ltmp32:
	#DEBUG_VALUE: process:data <- [DW_OP_LLVM_fragment 160 32] $eax
	#DEBUG_VALUE: i <- 6
	.loc	0 0 13                          # liblzma/check/sha256.c:0:13
	movl	%eax, 52(%rsp)                  # 4-byte Spill
.Ltmp33:
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 52, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	.loc	0 127 13                        # liblzma/check/sha256.c:127:13
	movl	24(%rdi), %eax
	bswapl	%eax
.Ltmp34:
	#DEBUG_VALUE: process:data <- [DW_OP_LLVM_fragment 192 32] $eax
	#DEBUG_VALUE: i <- 7
	.loc	0 0 13                          # liblzma/check/sha256.c:0:13
	movl	%eax, 48(%rsp)                  # 4-byte Spill
.Ltmp35:
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 48, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	.loc	0 127 13                        # liblzma/check/sha256.c:127:13
	movl	28(%rdi), %eax
	bswapl	%eax
.Ltmp36:
	#DEBUG_VALUE: process:data <- [DW_OP_LLVM_fragment 224 32] $eax
	#DEBUG_VALUE: i <- 8
	.loc	0 0 13                          # liblzma/check/sha256.c:0:13
	movl	%eax, 44(%rsp)                  # 4-byte Spill
.Ltmp37:
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 44, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	.loc	0 127 13                        # liblzma/check/sha256.c:127:13
	movl	32(%rdi), %eax
	bswapl	%eax
.Ltmp38:
	#DEBUG_VALUE: process:data <- [DW_OP_LLVM_fragment 256 32] $eax
	#DEBUG_VALUE: i <- 9
	.loc	0 0 13                          # liblzma/check/sha256.c:0:13
	movl	%eax, 40(%rsp)                  # 4-byte Spill
.Ltmp39:
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 40, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	.loc	0 127 13                        # liblzma/check/sha256.c:127:13
	movl	36(%rdi), %eax
	bswapl	%eax
.Ltmp40:
	#DEBUG_VALUE: process:data <- [DW_OP_LLVM_fragment 288 32] $eax
	#DEBUG_VALUE: i <- 10
	.loc	0 0 13                          # liblzma/check/sha256.c:0:13
	movl	%eax, 36(%rsp)                  # 4-byte Spill
.Ltmp41:
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 36, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	.loc	0 127 13                        # liblzma/check/sha256.c:127:13
	movl	40(%rdi), %eax
	bswapl	%eax
.Ltmp42:
	#DEBUG_VALUE: process:data <- [DW_OP_LLVM_fragment 320 32] $eax
	#DEBUG_VALUE: i <- 11
	.loc	0 0 13                          # liblzma/check/sha256.c:0:13
	movl	%eax, 32(%rsp)                  # 4-byte Spill
.Ltmp43:
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	.loc	0 127 13                        # liblzma/check/sha256.c:127:13
	movl	44(%rdi), %eax
	bswapl	%eax
.Ltmp44:
	#DEBUG_VALUE: process:data <- [DW_OP_LLVM_fragment 352 32] $eax
	#DEBUG_VALUE: i <- 12
	.loc	0 0 13                          # liblzma/check/sha256.c:0:13
	movl	%eax, 28(%rsp)                  # 4-byte Spill
.Ltmp45:
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 28, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	.loc	0 127 13                        # liblzma/check/sha256.c:127:13
	movl	48(%rdi), %eax
	bswapl	%eax
.Ltmp46:
	#DEBUG_VALUE: process:data <- [DW_OP_LLVM_fragment 384 32] $eax
	#DEBUG_VALUE: i <- 13
	.loc	0 0 13                          # liblzma/check/sha256.c:0:13
	movl	%eax, 24(%rsp)                  # 4-byte Spill
.Ltmp47:
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 24, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	.loc	0 127 13                        # liblzma/check/sha256.c:127:13
	movl	52(%rdi), %eax
	bswapl	%eax
.Ltmp48:
	#DEBUG_VALUE: process:data <- [DW_OP_LLVM_fragment 416 32] $eax
	#DEBUG_VALUE: i <- 14
	.loc	0 0 13                          # liblzma/check/sha256.c:0:13
	movl	%eax, 20(%rsp)                  # 4-byte Spill
.Ltmp49:
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 20, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	.loc	0 127 13                        # liblzma/check/sha256.c:127:13
	movl	56(%rdi), %eax
	bswapl	%eax
.Ltmp50:
	#DEBUG_VALUE: process:data <- [DW_OP_LLVM_fragment 448 32] $eax
	#DEBUG_VALUE: i <- 15
	.loc	0 0 13                          # liblzma/check/sha256.c:0:13
	movl	%eax, 16(%rsp)                  # 4-byte Spill
.Ltmp51:
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 16, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	.loc	0 127 13                        # liblzma/check/sha256.c:127:13
	movl	60(%rdi), %eax
	bswapl	%eax
.Ltmp52:
	#DEBUG_VALUE: process:data <- [DW_OP_LLVM_fragment 480 32] $eax
	#DEBUG_VALUE: i <- 16
	#DEBUG_VALUE: transform:state <- [DW_OP_plus_uconst 64, DW_OP_stack_value] $rdi
	.loc	0 0 13                          # liblzma/check/sha256.c:0:13
	movl	%eax, 12(%rsp)                  # 4-byte Spill
.Ltmp53:
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 12, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	.loc	0 95 2 is_stmt 1                # liblzma/check/sha256.c:95:2
	movl	64(%rdi), %r10d
	movl	68(%rdi), %ecx
	movl	72(%rdi), %esi
	movl	76(%rdi), %r8d
	movl	80(%rdi), %r11d
	movl	84(%rdi), %r15d
	movl	88(%rdi), %eax
	movq	%rdi, 96(%rsp)                  # 8-byte Spill
.Ltmp54:
	#DEBUG_VALUE: transform:state <- [DW_OP_plus_uconst 96, DW_OP_deref, DW_OP_plus_uconst 64, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: process:check <- [DW_OP_plus_uconst 96] [$rsp+0]
	movl	92(%rdi), %r13d
.Ltmp55:
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 224 32] $r13d
	.loc	0 0 2 is_stmt 0                 # liblzma/check/sha256.c:0:2
	movq	$-16, %r12
.Ltmp56:
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 0 32] $r10d
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 32 32] $ecx
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 64 32] $esi
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 96 32] $r8d
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 128 32] $r11d
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 160 32] $r15d
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 192 32] $eax
	#DEBUG_VALUE: j <- 0
	movl	%r10d, -20(%rsp)                # 4-byte Spill
.Ltmp57:
	#DEBUG_VALUE: transform:T <- [DW_OP_constu 20, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	movl	%ecx, -16(%rsp)                 # 4-byte Spill
.Ltmp58:
	#DEBUG_VALUE: transform:T <- [DW_OP_constu 16, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	movl	%ecx, %edi
	movl	%esi, -12(%rsp)                 # 4-byte Spill
.Ltmp59:
	#DEBUG_VALUE: transform:T <- [DW_OP_constu 12, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	movl	%r8d, -8(%rsp)                  # 4-byte Spill
.Ltmp60:
	#DEBUG_VALUE: transform:T <- [DW_OP_constu 8, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	movl	%r11d, -4(%rsp)                 # 4-byte Spill
.Ltmp61:
	#DEBUG_VALUE: transform:T <- [DW_OP_constu 4, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	movl	%r15d, (%rsp)                   # 4-byte Spill
.Ltmp62:
	#DEBUG_VALUE: transform:T <- [DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	movl	%eax, 4(%rsp)                   # 4-byte Spill
.Ltmp63:
	#DEBUG_VALUE: transform:T <- [DW_OP_plus_uconst 4, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	movl	%r13d, 8(%rsp)                  # 4-byte Spill
.Ltmp64:
	#DEBUG_VALUE: transform:T <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
                                        # implicit-def: $ecx
                                        # implicit-def: $r9d
                                        # implicit-def: $ebx
                                        # implicit-def: $edx
                                        # kill: killed $edx
                                        # implicit-def: $edx
                                        # kill: killed $edx
                                        # implicit-def: $edx
                                        # kill: killed $edx
                                        # implicit-def: $edx
                                        # kill: killed $edx
                                        # implicit-def: $edx
                                        # kill: killed $edx
                                        # implicit-def: $edx
                                        # kill: killed $edx
                                        # implicit-def: $ebp
                                        # kill: killed $ebp
                                        # implicit-def: $ebp
                                        # kill: killed $ebp
                                        # implicit-def: $ebp
                                        # kill: killed $ebp
                                        # implicit-def: $ebp
                                        # kill: killed $ebp
                                        # implicit-def: $ebp
                                        # kill: killed $ebp
                                        # implicit-def: $ebp
                                        # kill: killed $ebp
                                        # implicit-def: $ebp
                                        # kill: killed $ebp
	jmp	.LBB2_1
.Ltmp65:
	.p2align	4, 0x90
.LBB2_33:                               # %cond.end1615.i
                                        #   in Loop: Header=BB2_1 Depth=1
	#DEBUG_VALUE: process:check <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 72, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 68, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 60, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 56, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 52, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 48, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 44, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 40, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 36, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 28, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 24, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 20, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 16, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 12, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:state <- [DW_OP_plus_uconst 96, DW_OP_deref, DW_OP_plus_uconst 64, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: j <- [DW_OP_constu 40, DW_OP_minus, DW_OP_deref_size 8, DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 112, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 120, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 116, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 76, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 84, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 88, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 44, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 28, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 128, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 48, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 52, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	movl	%edx, -124(%rsp)                # 4-byte Spill
	movl	%r11d, %ecx
	roll	$26, %ecx
	movl	%r11d, %edx
	roll	$21, %edx
	xorl	%ecx, %edx
	movl	%r11d, %ecx
	roll	$7, %ecx
	xorl	%edx, %ecx
	addl	%r13d, %ecx
	movl	%eax, %edx
	xorl	%r15d, %edx
	andl	%r11d, %edx
	xorl	%eax, %edx
	addl	%ecx, %edx
	movl	76(%rsp), %ebx                  # 4-byte Reload
	addl	-112(%rsp), %ebx                # 4-byte Folded Reload
	addl	%edx, %ebx
	movl	%r10d, %ecx
	roll	$30, %ecx
	movl	%r10d, %edx
	roll	$19, %edx
	xorl	%ecx, %edx
	movl	%r10d, %ecx
	roll	$10, %ecx
	xorl	%edx, %ecx
	movl	%edi, %edx
	andl	%r10d, %edx
	movl	%edi, %r9d
	orl	%r10d, %r9d
	andl	%esi, %r9d
	orl	%edx, %r9d
	addl	%ecx, %r9d
	addl	%ebx, %r8d
	addl	%ebx, %r9d
	movl	%r8d, %ecx
	roll	$26, %ecx
	movl	%r8d, %edx
	roll	$21, %edx
	xorl	%ecx, %edx
	movl	%r8d, %ecx
	roll	$7, %ecx
	xorl	%edx, %ecx
	addl	%eax, %ebp
	movl	%r15d, %eax
	xorl	%r11d, %eax
	andl	%r8d, %eax
	xorl	%r15d, %eax
	addl	%eax, %ebp
	addl	-92(%rsp), %ebp                 # 4-byte Folded Reload
	addl	%ecx, %ebp
	movl	%r9d, %eax
	roll	$30, %eax
	movl	%r9d, %ecx
	roll	$19, %ecx
	xorl	%eax, %ecx
	movl	%r9d, %edx
	roll	$10, %edx
	xorl	%ecx, %edx
	movl	%r9d, %ecx
	andl	%r10d, %ecx
	movl	%r9d, %eax
	orl	%r10d, %eax
	andl	%edi, %eax
	orl	%ecx, %eax
	addl	%edx, %eax
	addl	%ebp, %esi
	addl	%ebp, %eax
	movl	%esi, %ecx
	roll	$26, %ecx
	movl	%esi, %edx
	roll	$21, %edx
	xorl	%ecx, %edx
	movl	%esi, %ecx
	roll	$7, %ecx
	xorl	%edx, %ecx
	addl	%r15d, %r14d
	movl	%r8d, %edx
	xorl	%r11d, %edx
	andl	%esi, %edx
	xorl	%r11d, %edx
	addl	%edx, %r14d
	movl	%eax, %edx
	roll	$30, %edx
	addl	-120(%rsp), %r14d               # 4-byte Folded Reload
	movl	%eax, %ebp
	roll	$19, %ebp
	addl	%ecx, %r14d
	movl	%eax, %ecx
	roll	$10, %ecx
	xorl	%edx, %ebp
	xorl	%ebp, %ecx
	movl	%eax, %edx
	andl	%r9d, %edx
	movl	%eax, %ebp
	orl	%r9d, %ebp
	andl	%r10d, %ebp
	orl	%edx, %ebp
	addl	%r14d, %edi
	movl	%edi, %edx
	roll	$26, %edx
	addl	%ecx, %ebp
	movl	%edi, %ecx
	roll	$21, %ecx
	addl	%r14d, %ebp
	movl	%edi, %ebx
	roll	$7, %ebx
	xorl	%edx, %ecx
	xorl	%ecx, %ebx
	movl	80(%rsp), %r14d                 # 4-byte Reload
	addl	%r11d, %r14d
	movl	%esi, %ecx
	xorl	%r8d, %ecx
	andl	%edi, %ecx
	xorl	%r8d, %ecx
	addl	%ecx, %r14d
	addl	-116(%rsp), %r14d               # 4-byte Folded Reload
	movl	%ebp, %ecx
	roll	$30, %ecx
	addl	%ebx, %r14d
	movl	%ebp, %edx
	roll	$19, %edx
	xorl	%ecx, %edx
	movl	%ebp, %ecx
	roll	$10, %ecx
	xorl	%edx, %ecx
	movl	%ebp, %edx
	andl	%eax, %edx
	movl	%ebp, %r11d
	orl	%eax, %r11d
	andl	%r9d, %r11d
	orl	%edx, %r11d
	addl	%ecx, %r11d
	addl	%r14d, %r10d
	movl	%r10d, %ecx
	roll	$26, %ecx
	addl	%r14d, %r11d
	movl	%r10d, %edx
	roll	$21, %edx
	xorl	%ecx, %edx
	movl	%r10d, %ecx
	roll	$7, %ecx
	xorl	%edx, %ecx
	movl	84(%rsp), %ebx                  # 4-byte Reload
	addl	%r8d, %ebx
	movl	%edi, %edx
	xorl	%esi, %edx
	andl	%r10d, %edx
	xorl	%esi, %edx
	addl	%edx, %ebx
	addl	-72(%rsp), %ebx                 # 4-byte Folded Reload
	addl	%ecx, %ebx
	movl	%r11d, %ecx
	roll	$30, %ecx
	movl	%r11d, %edx
	roll	$19, %edx
	xorl	%ecx, %edx
	movl	%r11d, %ecx
	roll	$10, %ecx
	xorl	%edx, %ecx
	movl	%r11d, %edx
	andl	%ebp, %edx
	movl	%r11d, %r8d
	orl	%ebp, %r8d
	andl	%eax, %r8d
	orl	%edx, %r8d
	addl	%ecx, %r8d
	addl	%ebx, %r9d
	addl	%ebx, %r8d
	movl	%r9d, %ecx
	roll	$26, %ecx
	movl	%r9d, %edx
	roll	$21, %edx
	xorl	%ecx, %edx
	movl	%r9d, %ecx
	roll	$7, %ecx
	xorl	%edx, %ecx
	movl	88(%rsp), %ebx                  # 4-byte Reload
	addl	%esi, %ebx
	movl	%r10d, %edx
	xorl	%edi, %edx
	andl	%r9d, %edx
	xorl	%edi, %edx
	addl	%edx, %ebx
	addl	-76(%rsp), %ebx                 # 4-byte Folded Reload
	addl	%ecx, %ebx
	movl	%r8d, %ecx
	roll	$30, %ecx
	movl	%r8d, %edx
	roll	$19, %edx
	xorl	%ecx, %edx
	movl	%r8d, %ecx
	roll	$10, %ecx
	xorl	%edx, %ecx
	movl	%r8d, %esi
	andl	%r11d, %esi
	movl	%r8d, %edx
	orl	%r11d, %edx
	andl	%ebp, %edx
	orl	%esi, %edx
	addl	%ecx, %edx
	addl	%ebx, %eax
	addl	%ebx, %edx
	movl	%eax, %ecx
	roll	$26, %ecx
	movl	%eax, %esi
	roll	$21, %esi
	xorl	%ecx, %esi
	movl	%eax, %ecx
	roll	$7, %ecx
	xorl	%esi, %ecx
	movl	92(%rsp), %ebx                  # 4-byte Reload
	addl	%edi, %ebx
	movl	%r9d, %esi
	xorl	%r10d, %esi
	andl	%eax, %esi
	xorl	%r10d, %esi
	addl	%esi, %ebx
	movl	%edx, %esi
	roll	$30, %esi
	addl	-80(%rsp), %ebx                 # 4-byte Folded Reload
	movl	%edx, %edi
	roll	$19, %edi
	addl	%ecx, %ebx
	movl	%edx, %ecx
	roll	$10, %ecx
	xorl	%esi, %edi
	xorl	%edi, %ecx
	movl	%edx, %esi
	andl	%r8d, %esi
	movl	%edx, %edi
	orl	%r8d, %edi
	andl	%r11d, %edi
	orl	%esi, %edi
	addl	%ebx, %ebp
	movl	%ebp, %esi
	roll	$26, %esi
	addl	%ecx, %edi
	movl	%ebp, %ecx
	roll	$21, %ecx
	addl	%ebx, %edi
	movl	%ebp, %ebx
	roll	$7, %ebx
	xorl	%esi, %ecx
	xorl	%ecx, %ebx
	movl	-32(%rsp), %r14d                # 4-byte Reload
	addl	%r10d, %r14d
	movl	%eax, %ecx
	xorl	%r9d, %ecx
	andl	%ebp, %ecx
	xorl	%r9d, %ecx
	addl	%ecx, %r14d
	addl	-84(%rsp), %r14d                # 4-byte Folded Reload
	movl	%edi, %ecx
	roll	$30, %ecx
	addl	%ebx, %r14d
	movl	%edi, %esi
	roll	$19, %esi
	xorl	%ecx, %esi
	movl	%edi, %ecx
	roll	$10, %ecx
	xorl	%esi, %ecx
	movl	%edi, %esi
	andl	%edx, %esi
	movl	%edi, %r10d
	orl	%edx, %r10d
	andl	%r8d, %r10d
	orl	%esi, %r10d
	addl	%ecx, %r10d
	addl	%r14d, %r11d
	movl	%r11d, %ecx
	roll	$26, %ecx
	addl	%r14d, %r10d
	movl	%r11d, %esi
	roll	$21, %esi
	xorl	%ecx, %esi
	movl	%r11d, %ecx
	roll	$7, %ecx
	xorl	%esi, %ecx
	movl	-68(%rsp), %ebx                 # 4-byte Reload
	addl	%r9d, %ebx
	movl	%ebp, %esi
	xorl	%eax, %esi
	andl	%r11d, %esi
	xorl	%eax, %esi
	addl	%esi, %ebx
	addl	-88(%rsp), %ebx                 # 4-byte Folded Reload
	addl	%ecx, %ebx
	movl	%r10d, %ecx
	roll	$30, %ecx
	movl	%r10d, %esi
	roll	$19, %esi
	xorl	%ecx, %esi
	movl	%r10d, %ecx
	roll	$10, %ecx
	xorl	%esi, %ecx
	movl	%r10d, %esi
	andl	%edi, %esi
	movl	%r10d, %r13d
	orl	%edi, %r13d
	andl	%edx, %r13d
	orl	%esi, %r13d
	addl	%ecx, %r13d
	addl	%ebx, %r8d
	addl	%ebx, %r13d
	movl	%r8d, %ecx
	roll	$26, %ecx
	movl	%r8d, %esi
	roll	$21, %esi
	xorl	%ecx, %esi
	movl	%r8d, %ecx
	roll	$7, %ecx
	xorl	%esi, %ecx
	movl	-64(%rsp), %r9d                 # 4-byte Reload
	addl	%eax, %r9d
	movl	%r11d, %eax
	xorl	%ebp, %eax
	andl	%r8d, %eax
	xorl	%ebp, %eax
	addl	%eax, %r9d
	addl	-44(%rsp), %r9d                 # 4-byte Folded Reload
	addl	%ecx, %r9d
	movl	%r13d, %eax
	roll	$30, %eax
	movl	%r13d, %ecx
	roll	$19, %ecx
	xorl	%eax, %ecx
	movl	%r13d, %esi
	roll	$10, %esi
	xorl	%ecx, %esi
	movl	%r13d, %ecx
	andl	%r10d, %ecx
	movl	%r13d, %eax
	orl	%r10d, %eax
	andl	%edi, %eax
	orl	%ecx, %eax
	addl	%esi, %eax
	addl	%r9d, %edx
	addl	%r9d, %eax
	movl	%edx, %ecx
	roll	$26, %ecx
	movl	%edx, %esi
	roll	$21, %esi
	xorl	%ecx, %esi
	movl	%edx, %ecx
	roll	$7, %ecx
	xorl	%esi, %ecx
	movl	-60(%rsp), %ebx                 # 4-byte Reload
	addl	%ebp, %ebx
	movl	%r8d, %esi
	xorl	%r11d, %esi
	andl	%edx, %esi
	xorl	%r11d, %esi
	addl	%esi, %ebx
	movl	%eax, %esi
	roll	$30, %esi
	movl	-28(%rsp), %ebp                 # 4-byte Reload
	addl	%ebp, %ebx
	movl	%eax, %r9d
	roll	$19, %r9d
	addl	%ecx, %ebx
	movl	%eax, %ecx
	roll	$10, %ecx
	xorl	%esi, %r9d
	xorl	%r9d, %ecx
	movl	%eax, %esi
	andl	%r13d, %esi
	movl	%eax, %r15d
	orl	%r13d, %r15d
	andl	%r10d, %r15d
	orl	%esi, %r15d
	addl	%ebx, %edi
	movl	%edi, %esi
	roll	$26, %esi
	addl	%ecx, %r15d
	movl	%edi, %ecx
	roll	$21, %ecx
	addl	%ebx, %r15d
	movl	%edi, %r9d
	roll	$7, %r9d
	xorl	%esi, %ecx
	xorl	%ecx, %r9d
	movl	-56(%rsp), %ebx                 # 4-byte Reload
	addl	%r11d, %ebx
	movl	%edx, %ecx
	xorl	%r8d, %ecx
	andl	%edi, %ecx
	xorl	%r8d, %ecx
	addl	%ecx, %ebx
	addl	-128(%rsp), %ebx                # 4-byte Folded Reload
	movl	%r15d, %ecx
	roll	$30, %ecx
	addl	%r9d, %ebx
	movl	%r15d, %esi
	roll	$19, %esi
	xorl	%ecx, %esi
	movl	%r15d, %ecx
	roll	$10, %ecx
	xorl	%esi, %ecx
	movl	%r15d, %esi
	andl	%eax, %esi
	movl	%r15d, %r11d
	orl	%eax, %r11d
	andl	%r13d, %r11d
	orl	%esi, %r11d
	addl	%ecx, %r11d
	addl	%ebx, %r10d
.Ltmp66:
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 0 32] $r10d
	movl	%r10d, %ecx
	roll	$26, %ecx
	addl	%ebx, %r11d
.Ltmp67:
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 128 32] $r11d
	movl	%r10d, %esi
	roll	$21, %esi
	xorl	%ecx, %esi
	movl	%r10d, %ecx
	roll	$7, %ecx
	xorl	%esi, %ecx
	movl	-108(%rsp), %r9d                # 4-byte Reload
	addl	%r8d, %r9d
	movl	%edi, %esi
	xorl	%edx, %esi
	andl	%r10d, %esi
	xorl	%edx, %esi
	addl	%esi, %r9d
	addl	-48(%rsp), %r9d                 # 4-byte Folded Reload
	addl	%ecx, %r9d
	movl	%r11d, %ecx
	roll	$30, %ecx
	movl	%r11d, %esi
	roll	$19, %esi
	xorl	%ecx, %esi
	movl	%r11d, %ecx
	roll	$10, %ecx
	xorl	%esi, %ecx
	movl	%r11d, %esi
	andl	%r15d, %esi
	movl	%r11d, %r8d
	orl	%r15d, %r8d
	andl	%eax, %r8d
	orl	%esi, %r8d
	addl	%ecx, %r8d
	addl	%r9d, %r13d
.Ltmp68:
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 224 32] $r13d
	addl	%r9d, %r8d
.Ltmp69:
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 96 32] $r8d
	movl	%r13d, %ecx
	roll	$26, %ecx
	movl	%r13d, %esi
	roll	$21, %esi
	xorl	%ecx, %esi
	movl	%r13d, %ecx
	roll	$7, %ecx
	xorl	%esi, %ecx
	movl	-104(%rsp), %r9d                # 4-byte Reload
	addl	%edx, %r9d
	movl	%r10d, %edx
	xorl	%edi, %edx
	andl	%r13d, %edx
	xorl	%edi, %edx
	addl	%edx, %r9d
	addl	-52(%rsp), %r9d                 # 4-byte Folded Reload
	addl	%ecx, %r9d
	movl	%r8d, %ecx
	roll	$30, %ecx
	movl	%r8d, %edx
	roll	$19, %edx
	xorl	%ecx, %edx
	movl	%r8d, %ecx
	roll	$10, %ecx
	xorl	%edx, %ecx
	movl	%r8d, %edx
	andl	%r11d, %edx
	movl	%r8d, %esi
	orl	%r11d, %esi
	andl	%r15d, %esi
	orl	%edx, %esi
	addl	%ecx, %esi
	addl	%r9d, %eax
.Ltmp70:
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 192 32] $eax
	addl	%r9d, %esi
.Ltmp71:
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 64 32] $esi
	movl	%eax, %ecx
	roll	$26, %ecx
	movl	%eax, %edx
	roll	$21, %edx
	xorl	%ecx, %edx
	movl	%eax, %ecx
	roll	$7, %ecx
	xorl	%edx, %ecx
	movl	-100(%rsp), %r9d                # 4-byte Reload
	addl	%edi, %r9d
	movl	%r13d, %edx
	xorl	%r10d, %edx
	andl	%eax, %edx
	xorl	%r10d, %edx
	addl	%edx, %r9d
	movl	%esi, %edx
	roll	$30, %edx
	addl	-24(%rsp), %r9d                 # 4-byte Folded Reload
	movl	%esi, %edi
	roll	$19, %edi
	addl	%ecx, %r9d
	movl	%esi, %ecx
	roll	$10, %ecx
	xorl	%edx, %edi
	xorl	%edi, %ecx
	movl	%esi, %edx
	andl	%r8d, %edx
	movl	%esi, %edi
	orl	%r8d, %edi
	andl	%r11d, %edi
	orl	%edx, %edi
	addl	%r9d, %r15d
.Ltmp72:
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 160 32] $r15d
	movl	%r15d, %edx
	roll	$26, %edx
	addl	%ecx, %edi
	movl	%r15d, %ecx
	roll	$21, %ecx
	addl	%r9d, %edi
.Ltmp73:
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 32 32] $edi
	movl	%r15d, %r9d
	roll	$7, %r9d
	xorl	%edx, %ecx
	xorl	%ecx, %r9d
.Ltmp74:
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 124, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	movl	-96(%rsp), %ebx                 # 4-byte Reload
.Ltmp75:
	.loc	0 102 24 is_stmt 1              # liblzma/check/sha256.c:102:24
	addl	%r10d, %ebx
.Ltmp76:
	.loc	0 0 0 is_stmt 0                 # liblzma/check/sha256.c:0:0
	movl	%eax, %ecx
	xorl	%r13d, %ecx
	andl	%r15d, %ecx
	xorl	%r13d, %ecx
.Ltmp77:
	.loc	0 102 24                        # liblzma/check/sha256.c:102:24
	addl	%ecx, %ebx
	movl	-124(%rsp), %r14d               # 4-byte Reload
	addl	%r14d, %ebx
.Ltmp78:
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 0 32] undef
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 128 32] undef
	movl	%edi, %ecx
	roll	$30, %ecx
	addl	%r9d, %ebx
.Ltmp79:
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 0 32] $ebx
	movl	%edi, %edx
	roll	$19, %edx
	xorl	%ecx, %edx
	movl	%edi, %ecx
	roll	$10, %ecx
	xorl	%edx, %ecx
	movl	%edi, %edx
	andl	%esi, %edx
	movl	%edi, %r10d
	orl	%esi, %r10d
	andl	%r8d, %r10d
	orl	%edx, %r10d
	addl	%ecx, %r10d
	addl	%ebx, %r11d
.Ltmp80:
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 128 32] $r11d
	addl	%ebx, %r10d
.Ltmp81:
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 0 32] $r10d
	#DEBUG_VALUE: j <- [DW_OP_constu 40, DW_OP_minus, DW_OP_deref_size 8, DW_OP_plus_uconst 32, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 32 32] $edi
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 64 32] $esi
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 96 32] $r8d
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 128 32] $r11d
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 160 32] $r15d
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 192 32] $eax
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 224 32] $r13d
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 112, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 120, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 116, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 76, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 84, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 88, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 44, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 28, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 128, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 48, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 52, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 124, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	.loc	0 0 24                          # liblzma/check/sha256.c:0:24
	movq	-40(%rsp), %r12                 # 8-byte Reload
.Ltmp82:
	.loc	0 98 29 is_stmt 1               # liblzma/check/sha256.c:98:29
	addq	$16, %r12
	movl	-112(%rsp), %ecx                # 4-byte Reload
	movl	-92(%rsp), %r9d                 # 4-byte Reload
	movl	-120(%rsp), %ebx                # 4-byte Reload
	movl	-116(%rsp), %edx                # 4-byte Reload
	movl	%edx, -32(%rsp)                 # 4-byte Spill
	movl	-72(%rsp), %edx                 # 4-byte Reload
	movl	%edx, -68(%rsp)                 # 4-byte Spill
	movl	-76(%rsp), %edx                 # 4-byte Reload
	movl	%edx, -64(%rsp)                 # 4-byte Spill
	movl	-80(%rsp), %edx                 # 4-byte Reload
	movl	%edx, -60(%rsp)                 # 4-byte Spill
	movl	-84(%rsp), %edx                 # 4-byte Reload
	movl	%edx, -56(%rsp)                 # 4-byte Spill
	movl	-88(%rsp), %edx                 # 4-byte Reload
	movl	%edx, -116(%rsp)                # 4-byte Spill
.Ltmp83:
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	.loc	0 0 29 is_stmt 0                # liblzma/check/sha256.c:0:29
	movl	-44(%rsp), %edx                 # 4-byte Reload
	movl	%edx, -120(%rsp)                # 4-byte Spill
.Ltmp84:
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 64 32] $ebx
	movl	%ebp, -108(%rsp)                # 4-byte Spill
	movl	-128(%rsp), %edx                # 4-byte Reload
	movl	%edx, -104(%rsp)                # 4-byte Spill
	movl	-48(%rsp), %edx                 # 4-byte Reload
	movl	%edx, -100(%rsp)                # 4-byte Spill
	movl	-52(%rsp), %edx                 # 4-byte Reload
	movl	%edx, -96(%rsp)                 # 4-byte Spill
	movl	-24(%rsp), %edx                 # 4-byte Reload
	movl	%edx, -128(%rsp)                # 4-byte Spill
.Ltmp85:
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 104, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	movl	%r14d, -124(%rsp)               # 4-byte Spill
.Ltmp86:
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 124, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 480 32] $r14d
	.loc	0 98 29                         # liblzma/check/sha256.c:98:29
	cmpq	$48, %r12
.Ltmp87:
	.loc	0 98 2                          # liblzma/check/sha256.c:98:2
	jae	.LBB2_34
.Ltmp88:
.LBB2_1:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: process:check <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 72, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 68, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 60, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 56, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 52, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 48, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 44, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 40, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 36, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 28, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 24, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 20, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 16, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 12, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:state <- [DW_OP_plus_uconst 96, DW_OP_deref, DW_OP_plus_uconst 64, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 224 32] $r13d
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 0 32] $r10d
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 32 32] $edi
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 64 32] $esi
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 96 32] $r8d
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 128 32] $r11d
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 160 32] $r15d
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 192 32] $eax
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 16, DW_OP_stack_value] $r12
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 0 32] $r10d
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 32 32] $edi
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 64 32] $esi
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 96 32] $r8d
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 128 32] $r11d
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 160 32] $r15d
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 192 32] $eax
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 224 32] $r13d
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 0 32] $ecx
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 32 32] $r9d
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 64 32] $ebx
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 68, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 64, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 56, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 116, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 120, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 108, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 104, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 100, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 96, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 128, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 124, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	.loc	0 0 2                           # liblzma/check/sha256.c:0:2
	movl	72(%rsp), %ebp                  # 4-byte Reload
	movl	%ebp, -112(%rsp)                # 4-byte Spill
.Ltmp89:
	.loc	0 99 3 is_stmt 1                # liblzma/check/sha256.c:99:3
	cmpq	$-16, %r12
	movq	%r12, -40(%rsp)                 # 8-byte Spill
.Ltmp90:
	#DEBUG_VALUE: j <- [DW_OP_constu 40, DW_OP_minus, DW_OP_deref_size 8, DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	jne	.LBB2_2
.Ltmp91:
# %bb.3:                                # %cond.end.i
                                        #   in Loop: Header=BB2_1 Depth=1
	#DEBUG_VALUE: process:check <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 72, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 68, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 60, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 56, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 52, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 48, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 44, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 40, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 36, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 28, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 24, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 20, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 16, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 12, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:state <- [DW_OP_plus_uconst 96, DW_OP_deref, DW_OP_plus_uconst 64, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 224 32] $r13d
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 0 32] $r10d
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 32 32] $edi
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 64 32] $esi
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 96 32] $r8d
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 128 32] $r11d
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 160 32] $r15d
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 192 32] $eax
	#DEBUG_VALUE: j <- [DW_OP_constu 40, DW_OP_minus, DW_OP_deref_size 8, DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 0 32] $ecx
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 32 32] $r9d
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 64 32] $ebx
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 68, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 64, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 56, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 116, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 120, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 108, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 104, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 100, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 96, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 128, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 124, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_plus_uconst 72, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 224 32] undef
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 96 32] undef
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 224 32] undef
	.loc	0 0 3 is_stmt 0                 # liblzma/check/sha256.c:0:3
	movl	68(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, -92(%rsp)                 # 4-byte Spill
	.loc	0 99 3                          # liblzma/check/sha256.c:99:3
	cmpq	$-16, %r12
	.loc	0 99 10                         # liblzma/check/sha256.c:99:10
	jne	.LBB2_4
.Ltmp92:
.LBB2_5:                                # %cond.end159.i
                                        #   in Loop: Header=BB2_1 Depth=1
	#DEBUG_VALUE: process:check <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 72, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 68, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 60, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 56, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 52, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 48, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 44, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 40, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 36, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 28, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 24, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 20, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 16, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 12, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:state <- [DW_OP_plus_uconst 96, DW_OP_deref, DW_OP_plus_uconst 64, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 0 32] $r10d
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 32 32] $edi
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 64 32] $esi
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 128 32] $r11d
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 160 32] $r15d
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 192 32] $eax
	#DEBUG_VALUE: j <- [DW_OP_constu 40, DW_OP_minus, DW_OP_deref_size 8, DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 112, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 32 32] $r9d
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 64 32] $ebx
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 68, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 64, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 56, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 116, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 120, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 108, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 104, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 100, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 96, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 128, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 124, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_plus_uconst 68, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 192 32] undef
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 64 32] undef
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 192 32] undef
	.loc	0 0 10                          # liblzma/check/sha256.c:0:10
	movl	64(%rsp), %ebp                  # 4-byte Reload
	.loc	0 99 3                          # liblzma/check/sha256.c:99:3
	cmpq	$-16, %r12
	movl	-32(%rsp), %r14d                # 4-byte Reload
	.loc	0 99 17                         # liblzma/check/sha256.c:99:17
	jne	.LBB2_6
.Ltmp93:
.LBB2_7:                                # %cond.end263.i
                                        #   in Loop: Header=BB2_1 Depth=1
	#DEBUG_VALUE: process:check <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 72, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 68, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 60, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 56, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 52, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 48, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 44, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 40, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 36, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 28, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 24, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 20, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 16, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 12, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:state <- [DW_OP_plus_uconst 96, DW_OP_deref, DW_OP_plus_uconst 64, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 0 32] $r10d
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 32 32] $edi
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 128 32] $r11d
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 160 32] $r15d
	#DEBUG_VALUE: j <- [DW_OP_constu 40, DW_OP_minus, DW_OP_deref_size 8, DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 112, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 64 32] $ebx
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 68, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 64, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 56, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 116, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 120, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 108, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 104, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 100, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 96, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 128, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 124, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 160 32] undef
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 32 32] undef
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 160 32] undef
	.loc	0 0 17                          # liblzma/check/sha256.c:0:17
	movl	60(%rsp), %ebx                  # 4-byte Reload
	.loc	0 99 3                          # liblzma/check/sha256.c:99:3
	cmpq	$-16, %r12
	.loc	0 99 24                         # liblzma/check/sha256.c:99:24
	jne	.LBB2_8
.Ltmp94:
.LBB2_9:                                # %cond.end367.i
                                        #   in Loop: Header=BB2_1 Depth=1
	#DEBUG_VALUE: process:check <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 72, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 68, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 60, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 56, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 52, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 48, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 44, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 40, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 36, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 28, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 24, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 20, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 16, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 12, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:state <- [DW_OP_plus_uconst 96, DW_OP_deref, DW_OP_plus_uconst 64, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 0 32] $r10d
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 128 32] $r11d
	#DEBUG_VALUE: j <- [DW_OP_constu 40, DW_OP_minus, DW_OP_deref_size 8, DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 112, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 64 32] $ebp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 68, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 64, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 56, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 116, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 120, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 108, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 104, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 100, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 96, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 128, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 124, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_plus_uconst 60, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 128 32] undef
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 0 32] undef
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 128 32] undef
	.loc	0 0 24                          # liblzma/check/sha256.c:0:24
	movl	56(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, -72(%rsp)                 # 4-byte Spill
	.loc	0 99 3                          # liblzma/check/sha256.c:99:3
	cmpq	$-16, %r12
	.loc	0 100 3 is_stmt 1               # liblzma/check/sha256.c:100:3
	jne	.LBB2_10
.Ltmp95:
.LBB2_11:                               # %cond.end471.i
                                        #   in Loop: Header=BB2_1 Depth=1
	#DEBUG_VALUE: process:check <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 72, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 68, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 60, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 56, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 52, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 48, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 44, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 40, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 36, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 28, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 24, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 20, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 16, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 12, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:state <- [DW_OP_plus_uconst 96, DW_OP_deref, DW_OP_plus_uconst 64, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: j <- [DW_OP_constu 40, DW_OP_minus, DW_OP_deref_size 8, DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 112, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 64 32] $ebp
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 96 32] $ebx
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 68, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 64, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 56, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 116, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 120, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 108, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 104, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 100, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 96, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 128, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 124, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_plus_uconst 56, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 96 32] undef
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 224 32] undef
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 96 32] undef
	.loc	0 0 3 is_stmt 0                 # liblzma/check/sha256.c:0:3
	movl	52(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, -76(%rsp)                 # 4-byte Spill
	.loc	0 99 3 is_stmt 1                # liblzma/check/sha256.c:99:3
	cmpq	$-16, %r12
	.loc	0 100 10                        # liblzma/check/sha256.c:100:10
	jne	.LBB2_12
.Ltmp96:
.LBB2_13:                               # %cond.end575.i
                                        #   in Loop: Header=BB2_1 Depth=1
	#DEBUG_VALUE: process:check <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 72, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 68, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 60, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 56, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 52, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 48, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 44, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 40, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 36, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 28, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 24, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 20, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 16, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 12, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:state <- [DW_OP_plus_uconst 96, DW_OP_deref, DW_OP_plus_uconst 64, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: j <- [DW_OP_constu 40, DW_OP_minus, DW_OP_deref_size 8, DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 112, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 64 32] $ebp
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 96 32] $ebx
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 64, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 56, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 116, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 120, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 108, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 104, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 100, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 96, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 128, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 124, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_plus_uconst 52, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 64 32] undef
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 192 32] undef
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 64 32] undef
	.loc	0 0 10 is_stmt 0                # liblzma/check/sha256.c:0:10
	movl	48(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, -80(%rsp)                 # 4-byte Spill
	.loc	0 99 3 is_stmt 1                # liblzma/check/sha256.c:99:3
	cmpq	$-16, %r12
	.loc	0 100 17                        # liblzma/check/sha256.c:100:17
	jne	.LBB2_14
.Ltmp97:
.LBB2_15:                               # %cond.end679.i
                                        #   in Loop: Header=BB2_1 Depth=1
	#DEBUG_VALUE: process:check <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 72, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 68, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 60, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 56, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 52, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 48, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 44, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 40, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 36, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 28, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 24, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 20, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 16, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 12, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:state <- [DW_OP_plus_uconst 96, DW_OP_deref, DW_OP_plus_uconst 64, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: j <- [DW_OP_constu 40, DW_OP_minus, DW_OP_deref_size 8, DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 112, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 64 32] $ebp
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 96 32] $ebx
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 76, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 56, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 116, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 120, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 108, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 104, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 100, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 96, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 128, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 124, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_plus_uconst 48, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 32 32] undef
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 160 32] undef
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 32 32] undef
	.loc	0 0 17 is_stmt 0                # liblzma/check/sha256.c:0:17
	movl	44(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, -84(%rsp)                 # 4-byte Spill
	.loc	0 99 3 is_stmt 1                # liblzma/check/sha256.c:99:3
	cmpq	$-16, %r12
	.loc	0 100 24                        # liblzma/check/sha256.c:100:24
	jne	.LBB2_16
.Ltmp98:
.LBB2_17:                               # %cond.end783.i
                                        #   in Loop: Header=BB2_1 Depth=1
	#DEBUG_VALUE: process:check <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 72, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 68, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 60, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 56, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 52, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 48, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 44, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 40, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 36, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 28, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 24, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 20, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 16, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 12, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:state <- [DW_OP_plus_uconst 96, DW_OP_deref, DW_OP_plus_uconst 64, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: j <- [DW_OP_constu 40, DW_OP_minus, DW_OP_deref_size 8, DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 112, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 64 32] $ebp
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 96 32] $ebx
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 76, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 56, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 116, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 120, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 108, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 104, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 100, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 96, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 128, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 124, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_plus_uconst 44, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 0 32] undef
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 128 32] undef
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 0 32] undef
	.loc	0 0 24 is_stmt 0                # liblzma/check/sha256.c:0:24
	movl	40(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, -88(%rsp)                 # 4-byte Spill
	.loc	0 99 3 is_stmt 1                # liblzma/check/sha256.c:99:3
	cmpq	$-16, %r12
	.loc	0 101 3                         # liblzma/check/sha256.c:101:3
	je	.LBB2_19
.Ltmp99:
.LBB2_18:                               # %cond.true850.i
                                        #   in Loop: Header=BB2_1 Depth=1
	#DEBUG_VALUE: process:check <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 72, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 68, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 60, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 56, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 52, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 48, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 44, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 40, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 36, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 28, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 24, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 20, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 16, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 12, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:state <- [DW_OP_plus_uconst 96, DW_OP_deref, DW_OP_plus_uconst 64, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: j <- [DW_OP_constu 40, DW_OP_minus, DW_OP_deref_size 8, DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 112, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 64 32] $ebp
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 96 32] $ebx
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 76, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 84, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 116, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 120, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 108, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 104, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 100, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 96, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 128, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 124, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	.loc	0 0 3 is_stmt 0                 # liblzma/check/sha256.c:0:3
	movl	-80(%rsp), %r9d                 # 4-byte Reload
	.loc	0 101 3                         # liblzma/check/sha256.c:101:3
	movl	%r9d, %ecx
	roll	$15, %ecx
	movl	%r9d, %edx
	roll	$13, %edx
	xorl	%ecx, %edx
	movl	%r9d, %ecx
	shrl	$10, %ecx
	movl	-120(%rsp), %r14d               # 4-byte Reload
	movl	%r14d, %r9d
	roll	$25, %r9d
	xorl	%edx, %ecx
	movl	%r14d, %edx
	roll	$14, %edx
	xorl	%r9d, %edx
	shrl	$3, %r14d
	xorl	%edx, %r14d
	movl	-116(%rsp), %edx                # 4-byte Reload
	addl	-92(%rsp), %edx                 # 4-byte Folded Reload
	addl	%r14d, %edx
	addl	%ecx, %edx
.Ltmp100:
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 256 32] $edx
	.loc	0 0 3                           # liblzma/check/sha256.c:0:3
	movl	%edx, -88(%rsp)                 # 4-byte Spill
.Ltmp101:
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 88, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
.LBB2_19:                               # %cond.end887.i
                                        #   in Loop: Header=BB2_1 Depth=1
	#DEBUG_VALUE: process:check <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 72, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 68, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 60, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 56, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 52, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 48, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 44, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 40, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 36, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 28, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 24, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 20, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 16, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 12, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:state <- [DW_OP_plus_uconst 96, DW_OP_deref, DW_OP_plus_uconst 64, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: j <- [DW_OP_constu 40, DW_OP_minus, DW_OP_deref_size 8, DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 112, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 64 32] $ebp
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 96 32] $ebx
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 76, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 84, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 120, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 108, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 104, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 100, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 96, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 128, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 124, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 88, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 224 32] undef
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 96 32] undef
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 224 32] undef
	movl	%ebx, -116(%rsp)                # 4-byte Spill
.Ltmp102:
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 116, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	movl	36(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, -44(%rsp)                 # 4-byte Spill
	.loc	0 99 3 is_stmt 1                # liblzma/check/sha256.c:99:3
	cmpq	$-16, %r12
	.loc	0 101 10                        # liblzma/check/sha256.c:101:10
	je	.LBB2_21
.Ltmp103:
# %bb.20:                               # %cond.true954.i
                                        #   in Loop: Header=BB2_1 Depth=1
	#DEBUG_VALUE: process:check <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 72, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 68, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 60, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 56, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 52, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 48, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 44, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 40, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 36, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 28, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 24, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 20, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 16, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 12, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:state <- [DW_OP_plus_uconst 96, DW_OP_deref, DW_OP_plus_uconst 64, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: j <- [DW_OP_constu 40, DW_OP_minus, DW_OP_deref_size 8, DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 112, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 64 32] $ebp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 116, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 76, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 84, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 88, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 120, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 108, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 104, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 100, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 96, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 128, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 124, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	.loc	0 0 10 is_stmt 0                # liblzma/check/sha256.c:0:10
	movl	-84(%rsp), %r9d                 # 4-byte Reload
	.loc	0 101 10                        # liblzma/check/sha256.c:101:10
	movl	%r9d, %ecx
	roll	$15, %ecx
	movl	%r9d, %edx
	roll	$13, %edx
	xorl	%ecx, %edx
	movl	%r9d, %ecx
	shrl	$10, %ecx
	movl	-108(%rsp), %ebx                # 4-byte Reload
	movl	%ebx, %r9d
	roll	$25, %r9d
	xorl	%edx, %ecx
	movl	%ebx, %edx
	roll	$14, %edx
	xorl	%r9d, %edx
	movl	%ebx, %r9d
	shrl	$3, %r9d
	xorl	%edx, %r9d
	movl	-120(%rsp), %edx                # 4-byte Reload
	addl	%ebp, %edx
	addl	%r9d, %edx
	addl	%ecx, %edx
.Ltmp104:
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 288 32] $edx
	.loc	0 0 10                          # liblzma/check/sha256.c:0:10
	movl	%edx, -44(%rsp)                 # 4-byte Spill
.Ltmp105:
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 44, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
.LBB2_21:                               # %cond.end991.i
                                        #   in Loop: Header=BB2_1 Depth=1
	#DEBUG_VALUE: process:check <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 72, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 68, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 60, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 56, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 52, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 48, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 44, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 40, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 36, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 28, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 24, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 20, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 16, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 12, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:state <- [DW_OP_plus_uconst 96, DW_OP_deref, DW_OP_plus_uconst 64, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: j <- [DW_OP_constu 40, DW_OP_minus, DW_OP_deref_size 8, DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 112, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 64 32] $ebp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 116, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 76, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 84, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 88, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 108, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 104, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 100, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 96, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 128, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 124, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	movl	%ebp, -120(%rsp)                # 4-byte Spill
.Ltmp106:
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 120, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	movl	SHA256_K+64(,%r12,4), %ecx
	movl	%ecx, 76(%rsp)                  # 4-byte Spill
	movl	SHA256_K+68(,%r12,4), %ebp
	movl	SHA256_K+72(,%r12,4), %r14d
	movl	SHA256_K+76(,%r12,4), %edx
	movl	%edx, 80(%rsp)                  # 4-byte Spill
	movl	SHA256_K+80(,%r12,4), %edx
	movl	%edx, 84(%rsp)                  # 4-byte Spill
	movl	SHA256_K+84(,%r12,4), %edx
	movl	%edx, 88(%rsp)                  # 4-byte Spill
	movl	SHA256_K+88(,%r12,4), %edx
	movl	%edx, 92(%rsp)                  # 4-byte Spill
	movl	SHA256_K+92(,%r12,4), %edx
	movl	%edx, -32(%rsp)                 # 4-byte Spill
	movl	SHA256_K+96(,%r12,4), %edx
	movl	%edx, -68(%rsp)                 # 4-byte Spill
	movl	SHA256_K+100(,%r12,4), %edx
.Ltmp107:
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 44, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 192 32] undef
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 64 32] undef
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 192 32] undef
	movl	%edx, -64(%rsp)                 # 4-byte Spill
.Ltmp108:
	.loc	0 101 17                        # liblzma/check/sha256.c:101:17
	movl	SHA256_K+104(,%r12,4), %edx
	movl	%edx, -60(%rsp)                 # 4-byte Spill
	movl	32(%rsp), %edx                  # 4-byte Reload
	movl	%edx, -28(%rsp)                 # 4-byte Spill
	.loc	0 99 3 is_stmt 1                # liblzma/check/sha256.c:99:3
	cmpq	$-16, %r12
	.loc	0 101 17                        # liblzma/check/sha256.c:101:17
	je	.LBB2_23
.Ltmp109:
# %bb.22:                               # %cond.true1058.i
                                        #   in Loop: Header=BB2_1 Depth=1
	#DEBUG_VALUE: process:check <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 72, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 68, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 60, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 56, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 52, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 48, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 44, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 40, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 36, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 28, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 24, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 20, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 16, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 12, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:state <- [DW_OP_plus_uconst 96, DW_OP_deref, DW_OP_plus_uconst 64, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: j <- [DW_OP_constu 40, DW_OP_minus, DW_OP_deref_size 8, DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 112, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 120, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 116, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 76, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 84, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 88, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 44, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 108, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 104, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 100, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 96, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 128, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 124, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	.loc	0 0 17 is_stmt 0                # liblzma/check/sha256.c:0:17
	movl	-88(%rsp), %edx                 # 4-byte Reload
	.loc	0 101 17                        # liblzma/check/sha256.c:101:17
	movl	%edx, %ecx
	roll	$15, %ecx
	movl	%edx, %r9d
	roll	$13, %r9d
	xorl	%ecx, %r9d
	movl	%edx, %ecx
	shrl	$10, %ecx
	movl	-104(%rsp), %ebx                # 4-byte Reload
	movl	%ebx, %edx
	roll	$25, %edx
	xorl	%r9d, %ecx
	movl	%ebx, %r9d
	roll	$14, %r9d
	xorl	%edx, %r9d
	movl	%ebx, %edx
	shrl	$3, %edx
	xorl	%r9d, %edx
	movl	-108(%rsp), %r9d                # 4-byte Reload
	addl	-116(%rsp), %r9d                # 4-byte Folded Reload
	addl	%edx, %r9d
	addl	%ecx, %r9d
.Ltmp110:
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 320 32] $r9d
	.loc	0 0 17                          # liblzma/check/sha256.c:0:17
	movl	%r9d, -28(%rsp)                 # 4-byte Spill
.Ltmp111:
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 28, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
.LBB2_23:                               # %cond.end1095.i
                                        #   in Loop: Header=BB2_1 Depth=1
	#DEBUG_VALUE: process:check <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 72, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 68, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 60, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 56, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 52, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 48, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 44, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 40, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 36, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 28, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 24, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 20, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 16, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 12, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:state <- [DW_OP_plus_uconst 96, DW_OP_deref, DW_OP_plus_uconst 64, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: j <- [DW_OP_constu 40, DW_OP_minus, DW_OP_deref_size 8, DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 112, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 120, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 116, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 76, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 84, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 88, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 44, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 104, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 100, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 96, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 128, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 124, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 28, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 160 32] undef
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 32 32] undef
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 160 32] undef
	movq	-40(%rsp), %rcx                 # 8-byte Reload
	.loc	0 101 24                        # liblzma/check/sha256.c:101:24
	movl	SHA256_K+108(,%rcx,4), %edx
	movl	%edx, -56(%rsp)                 # 4-byte Spill
	movl	28(%rsp), %ebx                  # 4-byte Reload
	.loc	0 99 3 is_stmt 1                # liblzma/check/sha256.c:99:3
	cmpq	$-16, %rcx
	.loc	0 101 24                        # liblzma/check/sha256.c:101:24
	je	.LBB2_25
.Ltmp112:
# %bb.24:                               # %cond.true1162.i
                                        #   in Loop: Header=BB2_1 Depth=1
	#DEBUG_VALUE: process:check <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 72, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 68, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 60, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 56, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 52, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 48, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 44, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 40, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 36, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 28, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 24, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 20, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 16, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 12, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:state <- [DW_OP_plus_uconst 96, DW_OP_deref, DW_OP_plus_uconst 64, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: j <- [DW_OP_constu 40, DW_OP_minus, DW_OP_deref_size 8, DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 112, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 120, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 116, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 76, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 84, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 88, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 44, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 28, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 104, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 100, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 96, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 128, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 124, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	.loc	0 0 24 is_stmt 0                # liblzma/check/sha256.c:0:24
	movl	-44(%rsp), %r9d                 # 4-byte Reload
	.loc	0 101 24                        # liblzma/check/sha256.c:101:24
	movl	%r9d, %ecx
	roll	$15, %ecx
	movl	%r9d, %edx
	roll	$13, %edx
	xorl	%ecx, %edx
	movl	%r9d, %ecx
	shrl	$10, %ecx
	movl	-100(%rsp), %ebx                # 4-byte Reload
	movl	%ebx, %r9d
	roll	$25, %r9d
	xorl	%edx, %ecx
	movl	%ebx, %edx
	roll	$14, %edx
	xorl	%r9d, %edx
	movl	%ebx, %r9d
	shrl	$3, %r9d
	xorl	%edx, %r9d
	movl	-104(%rsp), %ebx                # 4-byte Reload
	addl	-72(%rsp), %ebx                 # 4-byte Folded Reload
	addl	%r9d, %ebx
	addl	%ecx, %ebx
.Ltmp113:
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 352 32] $ebx
.LBB2_25:                               # %cond.end1199.i
                                        #   in Loop: Header=BB2_1 Depth=1
	#DEBUG_VALUE: process:check <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 72, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 68, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 60, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 56, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 52, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 48, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 44, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 40, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 36, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 28, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 24, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 20, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 16, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 12, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:state <- [DW_OP_plus_uconst 96, DW_OP_deref, DW_OP_plus_uconst 64, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: j <- [DW_OP_constu 40, DW_OP_minus, DW_OP_deref_size 8, DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 112, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 120, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 116, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 76, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 84, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 88, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 44, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 28, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 100, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 96, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 128, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 124, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 352 32] $ebx
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 128 32] undef
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 0 32] undef
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 128 32] undef
	.loc	0 0 24                          # liblzma/check/sha256.c:0:24
	movq	-40(%rsp), %rcx                 # 8-byte Reload
	.loc	0 102 3 is_stmt 1               # liblzma/check/sha256.c:102:3
	movl	SHA256_K+112(,%rcx,4), %edx
	movl	%edx, -108(%rsp)                # 4-byte Spill
	movl	24(%rsp), %edx                  # 4-byte Reload
	movl	%edx, -48(%rsp)                 # 4-byte Spill
	.loc	0 99 3                          # liblzma/check/sha256.c:99:3
	cmpq	$-16, %rcx
	.loc	0 102 3                         # liblzma/check/sha256.c:102:3
	je	.LBB2_27
.Ltmp114:
# %bb.26:                               # %cond.true1266.i
                                        #   in Loop: Header=BB2_1 Depth=1
	#DEBUG_VALUE: process:check <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 72, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 68, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 60, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 56, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 52, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 48, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 44, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 40, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 36, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 28, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 24, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 20, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 16, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 12, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:state <- [DW_OP_plus_uconst 96, DW_OP_deref, DW_OP_plus_uconst 64, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: j <- [DW_OP_constu 40, DW_OP_minus, DW_OP_deref_size 8, DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 112, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 120, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 116, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 76, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 84, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 88, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 44, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 28, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 352 32] $ebx
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 100, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 96, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 128, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 124, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	.loc	0 0 3 is_stmt 0                 # liblzma/check/sha256.c:0:3
	movl	-28(%rsp), %r9d                 # 4-byte Reload
	.loc	0 102 3                         # liblzma/check/sha256.c:102:3
	movl	%r9d, %ecx
	roll	$15, %ecx
	movl	%r9d, %edx
	roll	$13, %edx
	xorl	%ecx, %edx
	movl	%r9d, %ecx
	shrl	$10, %ecx
	movl	-96(%rsp), %r12d                # 4-byte Reload
	movl	%r12d, %r9d
	roll	$25, %r9d
	xorl	%edx, %ecx
	movl	%r12d, %edx
	roll	$14, %edx
	xorl	%r9d, %edx
	movl	%r12d, %r9d
	shrl	$3, %r9d
	xorl	%edx, %r9d
	movl	-100(%rsp), %edx                # 4-byte Reload
	addl	-76(%rsp), %edx                 # 4-byte Folded Reload
	addl	%r9d, %edx
	addl	%ecx, %edx
.Ltmp115:
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 384 32] $edx
	.loc	0 0 3                           # liblzma/check/sha256.c:0:3
	movl	%edx, -48(%rsp)                 # 4-byte Spill
.Ltmp116:
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 48, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
.LBB2_27:                               # %cond.end1303.i
                                        #   in Loop: Header=BB2_1 Depth=1
	#DEBUG_VALUE: process:check <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 72, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 68, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 60, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 56, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 52, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 48, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 44, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 40, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 36, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 28, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 24, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 20, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 16, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 12, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:state <- [DW_OP_plus_uconst 96, DW_OP_deref, DW_OP_plus_uconst 64, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: j <- [DW_OP_constu 40, DW_OP_minus, DW_OP_deref_size 8, DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 112, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 120, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 116, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 76, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 84, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 88, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 44, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 28, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 352 32] $ebx
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 96, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 128, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 124, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 48, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 96 32] undef
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 224 32] undef
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 96 32] undef
	movq	-40(%rsp), %rcx                 # 8-byte Reload
	.loc	0 102 10                        # liblzma/check/sha256.c:102:10
	movl	SHA256_K+116(,%rcx,4), %edx
	movl	%edx, -104(%rsp)                # 4-byte Spill
	movl	20(%rsp), %edx                  # 4-byte Reload
	movl	%edx, -52(%rsp)                 # 4-byte Spill
	.loc	0 99 3 is_stmt 1                # liblzma/check/sha256.c:99:3
	cmpq	$-16, %rcx
	.loc	0 102 10                        # liblzma/check/sha256.c:102:10
	je	.LBB2_29
.Ltmp117:
# %bb.28:                               # %cond.true1370.i
                                        #   in Loop: Header=BB2_1 Depth=1
	#DEBUG_VALUE: process:check <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 72, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 68, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 60, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 56, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 52, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 48, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 44, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 40, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 36, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 28, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 24, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 20, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 16, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 12, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:state <- [DW_OP_plus_uconst 96, DW_OP_deref, DW_OP_plus_uconst 64, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: j <- [DW_OP_constu 40, DW_OP_minus, DW_OP_deref_size 8, DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 112, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 120, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 116, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 76, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 84, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 88, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 44, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 28, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 352 32] $ebx
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 48, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 96, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 128, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 124, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	movl	%ebx, %ecx
	roll	$15, %ecx
	movl	%ebx, %edx
	roll	$13, %edx
	xorl	%ecx, %edx
	movl	%ebx, %ecx
	shrl	$10, %ecx
	movl	-128(%rsp), %r12d               # 4-byte Reload
	movl	%r12d, %r9d
	roll	$25, %r9d
	xorl	%edx, %ecx
	movl	%r12d, %edx
	roll	$14, %edx
	xorl	%r9d, %edx
	movl	%r12d, %r9d
	shrl	$3, %r9d
	xorl	%edx, %r9d
	movl	-96(%rsp), %edx                 # 4-byte Reload
	addl	-80(%rsp), %edx                 # 4-byte Folded Reload
	addl	%r9d, %edx
	addl	%ecx, %edx
.Ltmp118:
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 416 32] $edx
	.loc	0 0 10 is_stmt 0                # liblzma/check/sha256.c:0:10
	movl	%edx, -52(%rsp)                 # 4-byte Spill
.Ltmp119:
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 52, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
.LBB2_29:                               # %cond.end1407.i
                                        #   in Loop: Header=BB2_1 Depth=1
	#DEBUG_VALUE: process:check <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 72, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 68, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 60, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 56, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 52, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 48, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 44, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 40, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 36, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 28, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 24, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 20, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 16, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 12, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:state <- [DW_OP_plus_uconst 96, DW_OP_deref, DW_OP_plus_uconst 64, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: j <- [DW_OP_constu 40, DW_OP_minus, DW_OP_deref_size 8, DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 112, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 120, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 116, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 76, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 84, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 88, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 44, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 28, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 352 32] $ebx
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 48, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 128, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 124, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 52, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 64 32] undef
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 192 32] undef
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 64 32] undef
	movq	-40(%rsp), %rcx                 # 8-byte Reload
	.loc	0 102 17                        # liblzma/check/sha256.c:102:17
	movl	SHA256_K+120(,%rcx,4), %edx
	movl	%edx, -100(%rsp)                # 4-byte Spill
	movl	16(%rsp), %edx                  # 4-byte Reload
	.loc	0 99 3 is_stmt 1                # liblzma/check/sha256.c:99:3
	cmpq	$-16, %rcx
	.loc	0 102 17                        # liblzma/check/sha256.c:102:17
	je	.LBB2_31
.Ltmp120:
# %bb.30:                               # %cond.true1474.i
                                        #   in Loop: Header=BB2_1 Depth=1
	#DEBUG_VALUE: process:check <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 72, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 68, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 60, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 56, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 52, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 48, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 44, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 40, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 36, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 28, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 24, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 20, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 16, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 12, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:state <- [DW_OP_plus_uconst 96, DW_OP_deref, DW_OP_plus_uconst 64, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: j <- [DW_OP_constu 40, DW_OP_minus, DW_OP_deref_size 8, DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 112, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 120, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 116, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 76, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 84, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 88, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 44, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 28, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 352 32] $ebx
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 48, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 52, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 128, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 124, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	.loc	0 0 17 is_stmt 0                # liblzma/check/sha256.c:0:17
	movl	-48(%rsp), %r9d                 # 4-byte Reload
	.loc	0 102 17                        # liblzma/check/sha256.c:102:17
	movl	%r9d, %ecx
	roll	$15, %ecx
	movl	%r9d, %edx
	roll	$13, %edx
	xorl	%ecx, %edx
	movl	%r9d, %ecx
	shrl	$10, %ecx
	movl	-124(%rsp), %r12d               # 4-byte Reload
	movl	%r12d, %r9d
	roll	$25, %r9d
	xorl	%edx, %ecx
	movl	%r12d, %edx
	roll	$14, %edx
	xorl	%r9d, %edx
	shrl	$3, %r12d
	xorl	%edx, %r12d
	movl	-128(%rsp), %edx                # 4-byte Reload
	addl	-84(%rsp), %edx                 # 4-byte Folded Reload
	addl	%r12d, %edx
	addl	%ecx, %edx
.Ltmp121:
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 448 32] $edx
.LBB2_31:                               # %cond.end1511.i
                                        #   in Loop: Header=BB2_1 Depth=1
	#DEBUG_VALUE: process:check <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 72, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 68, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 60, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 56, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 52, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 48, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 44, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 40, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 36, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 28, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 24, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 20, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 16, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 12, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:state <- [DW_OP_plus_uconst 96, DW_OP_deref, DW_OP_plus_uconst 64, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: j <- [DW_OP_constu 40, DW_OP_minus, DW_OP_deref_size 8, DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 112, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 120, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 116, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 76, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 84, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 88, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 44, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 28, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 352 32] $ebx
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 48, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 52, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 124, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 448 32] $edx
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 32 32] undef
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 160 32] undef
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 32 32] undef
	.loc	0 0 17                          # liblzma/check/sha256.c:0:17
	movl	%edx, -24(%rsp)                 # 4-byte Spill
.Ltmp122:
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	movl	%ebx, -128(%rsp)                # 4-byte Spill
.Ltmp123:
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 128, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	movq	-40(%rsp), %rcx                 # 8-byte Reload
	.loc	0 102 24                        # liblzma/check/sha256.c:102:24
	movl	SHA256_K+124(,%rcx,4), %edx
	movl	%edx, -96(%rsp)                 # 4-byte Spill
	movl	12(%rsp), %edx                  # 4-byte Reload
	.loc	0 99 3 is_stmt 1                # liblzma/check/sha256.c:99:3
	cmpq	$-16, %rcx
	.loc	0 102 24                        # liblzma/check/sha256.c:102:24
	je	.LBB2_33
.Ltmp124:
# %bb.32:                               # %cond.true1578.i
                                        #   in Loop: Header=BB2_1 Depth=1
	#DEBUG_VALUE: process:check <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 72, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 68, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 60, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 56, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 52, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 48, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 44, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 40, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 36, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 28, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 24, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 20, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 16, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 12, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:state <- [DW_OP_plus_uconst 96, DW_OP_deref, DW_OP_plus_uconst 64, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: j <- [DW_OP_constu 40, DW_OP_minus, DW_OP_deref_size 8, DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 112, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 120, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 116, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 76, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 84, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 88, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 44, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 28, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 128, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 48, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 52, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 124, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	.loc	0 0 24 is_stmt 0                # liblzma/check/sha256.c:0:24
	movl	-52(%rsp), %r9d                 # 4-byte Reload
	.loc	0 102 24                        # liblzma/check/sha256.c:102:24
	movl	%r9d, %ecx
	roll	$15, %ecx
	movl	%r9d, %edx
	roll	$13, %edx
	xorl	%ecx, %edx
	movl	%r9d, %ecx
	shrl	$10, %ecx
	movl	%r14d, %ebx
	movl	-112(%rsp), %r14d               # 4-byte Reload
	movl	%r14d, %r9d
	roll	$25, %r9d
	xorl	%edx, %ecx
	movl	%r14d, %edx
	roll	$14, %edx
	xorl	%r9d, %edx
	movl	%r14d, %r9d
	movl	%ebx, %r14d
	shrl	$3, %r9d
	xorl	%edx, %r9d
	movl	-124(%rsp), %edx                # 4-byte Reload
	addl	-88(%rsp), %edx                 # 4-byte Folded Reload
	addl	%r9d, %edx
	addl	%ecx, %edx
.Ltmp125:
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 480 32] $edx
	.loc	0 0 24                          # liblzma/check/sha256.c:0:24
	jmp	.LBB2_33
.Ltmp126:
	.p2align	4, 0x90
.LBB2_2:                                # %cond.true.i
                                        #   in Loop: Header=BB2_1 Depth=1
	#DEBUG_VALUE: process:check <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 72, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 68, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 60, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 56, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 52, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 48, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 44, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 40, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 36, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 28, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 24, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 20, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 16, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 12, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:state <- [DW_OP_plus_uconst 96, DW_OP_deref, DW_OP_plus_uconst 64, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 224 32] $r13d
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 0 32] $r10d
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 32 32] $edi
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 64 32] $esi
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 96 32] $r8d
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 128 32] $r11d
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 160 32] $r15d
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 192 32] $eax
	#DEBUG_VALUE: j <- [DW_OP_constu 40, DW_OP_minus, DW_OP_deref_size 8, DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 0 32] $ecx
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 32 32] $r9d
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 64 32] $ebx
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 68, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 64, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 56, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 116, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 120, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 108, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 104, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 100, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 96, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 128, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 124, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	movl	-128(%rsp), %ebp                # 4-byte Reload
	.loc	0 99 3 is_stmt 1                # liblzma/check/sha256.c:99:3
	movl	%ebp, %r14d
	roll	$15, %r14d
	movl	%ebp, %r12d
	roll	$13, %r12d
	xorl	%r14d, %r12d
	movl	%ebp, %r14d
	shrl	$10, %r14d
	movl	%r9d, %ebp
	roll	$25, %ebp
	xorl	%r12d, %r14d
	movl	%r9d, %r12d
	roll	$14, %r12d
	xorl	%ebp, %r12d
	movl	%r9d, %ebp
	shrl	$3, %ebp
	xorl	%r12d, %ebp
	movq	-40(%rsp), %r12                 # 8-byte Reload
	addl	-120(%rsp), %ecx                # 4-byte Folded Reload
.Ltmp127:
	addl	%ebp, %ecx
	addl	%r14d, %ecx
.Ltmp128:
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 0 32] $ecx
	.loc	0 0 3 is_stmt 0                 # liblzma/check/sha256.c:0:3
	movl	%ecx, -112(%rsp)                # 4-byte Spill
.Ltmp129:
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 112, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 112, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 224 32] undef
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 96 32] undef
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 224 32] undef
	movl	68(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, -92(%rsp)                 # 4-byte Spill
	.loc	0 99 3                          # liblzma/check/sha256.c:99:3
	cmpq	$-16, %r12
	.loc	0 99 10                         # liblzma/check/sha256.c:99:10
	je	.LBB2_5
.Ltmp130:
.LBB2_4:                                # %cond.true122.i
                                        #   in Loop: Header=BB2_1 Depth=1
	#DEBUG_VALUE: process:check <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 72, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 68, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 60, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 56, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 52, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 48, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 44, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 40, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 36, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 28, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 24, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 20, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 16, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 12, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:state <- [DW_OP_plus_uconst 96, DW_OP_deref, DW_OP_plus_uconst 64, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 0 32] $r10d
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 32 32] $edi
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 64 32] $esi
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 128 32] $r11d
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 160 32] $r15d
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 192 32] $eax
	#DEBUG_VALUE: j <- [DW_OP_constu 40, DW_OP_minus, DW_OP_deref_size 8, DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 112, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 32 32] $r9d
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 64 32] $ebx
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 68, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 64, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 56, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 116, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 120, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 108, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 104, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 100, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 96, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 128, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 124, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	.loc	0 0 10                          # liblzma/check/sha256.c:0:10
	movl	-124(%rsp), %r14d               # 4-byte Reload
	.loc	0 99 10                         # liblzma/check/sha256.c:99:10
	movl	%r14d, %ecx
	roll	$15, %ecx
	movl	%r14d, %ebp
	roll	$13, %ebp
	xorl	%ecx, %ebp
	movl	%r14d, %ecx
	shrl	$10, %ecx
	movl	%ebx, %r14d
	roll	$25, %r14d
	xorl	%ebp, %ecx
	movl	%ebx, %ebp
	roll	$14, %ebp
	xorl	%r14d, %ebp
	movl	%ebx, %r14d
	shrl	$3, %r14d
	xorl	%ebp, %r14d
	addl	-108(%rsp), %r9d                # 4-byte Folded Reload
.Ltmp131:
	addl	%r14d, %r9d
	addl	%ecx, %r9d
.Ltmp132:
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 32 32] $r9d
	.loc	0 0 10                          # liblzma/check/sha256.c:0:10
	movl	%r9d, -92(%rsp)                 # 4-byte Spill
.Ltmp133:
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 192 32] undef
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 64 32] undef
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 192 32] undef
	movl	64(%rsp), %ebp                  # 4-byte Reload
	.loc	0 99 3                          # liblzma/check/sha256.c:99:3
	cmpq	$-16, %r12
	movl	-32(%rsp), %r14d                # 4-byte Reload
	.loc	0 99 17                         # liblzma/check/sha256.c:99:17
	je	.LBB2_7
.Ltmp134:
.LBB2_6:                                # %cond.true226.i
                                        #   in Loop: Header=BB2_1 Depth=1
	#DEBUG_VALUE: process:check <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 72, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 68, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 60, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 56, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 52, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 48, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 44, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 40, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 36, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 28, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 24, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 20, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 16, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 12, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:state <- [DW_OP_plus_uconst 96, DW_OP_deref, DW_OP_plus_uconst 64, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 0 32] $r10d
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 32 32] $edi
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 128 32] $r11d
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 160 32] $r15d
	#DEBUG_VALUE: j <- [DW_OP_constu 40, DW_OP_minus, DW_OP_deref_size 8, DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 112, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 64 32] $ebx
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 68, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 64, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 56, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 116, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 120, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 108, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 104, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 100, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 96, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 128, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 124, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	.loc	0 0 17                          # liblzma/check/sha256.c:0:17
	movl	-112(%rsp), %ebp                # 4-byte Reload
	.loc	0 99 17                         # liblzma/check/sha256.c:99:17
	movl	%ebp, %ecx
	roll	$15, %ecx
	movl	%ebp, %r9d
	roll	$13, %r9d
	xorl	%ecx, %r9d
	movl	%ebp, %ecx
	shrl	$10, %ecx
	movl	%r14d, %ebp
	roll	$25, %ebp
	xorl	%r9d, %ecx
	movl	%r14d, %r9d
	roll	$14, %r9d
	xorl	%ebp, %r9d
	movl	%r14d, %ebp
	shrl	$3, %ebp
	xorl	%r9d, %ebp
	addl	-104(%rsp), %ebx                # 4-byte Folded Reload
.Ltmp135:
	addl	%ebp, %ebx
	addl	%ecx, %ebx
.Ltmp136:
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 64 32] $ebx
	.loc	0 0 17                          # liblzma/check/sha256.c:0:17
	movl	%ebx, %ebp
.Ltmp137:
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 64 32] $ebp
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 64 32] $ebx
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 160 32] undef
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 32 32] undef
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 160 32] undef
	movl	60(%rsp), %ebx                  # 4-byte Reload
.Ltmp138:
	.loc	0 99 3                          # liblzma/check/sha256.c:99:3
	cmpq	$-16, %r12
	.loc	0 99 24                         # liblzma/check/sha256.c:99:24
	je	.LBB2_9
.Ltmp139:
.LBB2_8:                                # %cond.true330.i
                                        #   in Loop: Header=BB2_1 Depth=1
	#DEBUG_VALUE: process:check <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 72, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 68, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 60, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 56, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 52, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 48, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 44, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 40, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 36, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 28, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 24, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 20, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 16, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 12, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:state <- [DW_OP_plus_uconst 96, DW_OP_deref, DW_OP_plus_uconst 64, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 0 32] $r10d
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 128 32] $r11d
	#DEBUG_VALUE: j <- [DW_OP_constu 40, DW_OP_minus, DW_OP_deref_size 8, DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 112, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 64 32] $ebp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 68, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 64, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 56, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 116, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 120, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 108, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 104, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 100, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 96, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 128, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 124, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	.loc	0 0 24                          # liblzma/check/sha256.c:0:24
	movl	-92(%rsp), %ebx                 # 4-byte Reload
	.loc	0 99 24                         # liblzma/check/sha256.c:99:24
	movl	%ebx, %ecx
	roll	$15, %ecx
	movl	%ebx, %r9d
	roll	$13, %r9d
	xorl	%ecx, %r9d
	movl	%ebx, %ecx
	shrl	$10, %ecx
	movl	-68(%rsp), %edx                 # 4-byte Reload
	movl	%edx, %ebx
	roll	$25, %ebx
	xorl	%r9d, %ecx
	movl	%edx, %r9d
	roll	$14, %r9d
	xorl	%ebx, %r9d
	movl	%edx, %ebx
	shrl	$3, %ebx
	xorl	%r9d, %ebx
	addl	-100(%rsp), %r14d               # 4-byte Folded Reload
	addl	%ebx, %r14d
	addl	%ecx, %r14d
.Ltmp140:
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 96 32] $r14d
	.loc	0 0 24                          # liblzma/check/sha256.c:0:24
	movl	%r14d, %ebx
.Ltmp141:
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 96 32] $ebx
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 96 32] $ebx
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 128 32] undef
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 0 32] undef
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 128 32] undef
	movl	56(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, -72(%rsp)                 # 4-byte Spill
	.loc	0 99 3                          # liblzma/check/sha256.c:99:3
	cmpq	$-16, %r12
	.loc	0 100 3 is_stmt 1               # liblzma/check/sha256.c:100:3
	je	.LBB2_11
.Ltmp142:
.LBB2_10:                               # %cond.true434.i
                                        #   in Loop: Header=BB2_1 Depth=1
	#DEBUG_VALUE: process:check <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 72, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 68, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 60, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 56, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 52, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 48, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 44, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 40, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 36, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 28, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 24, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 20, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 16, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 12, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:state <- [DW_OP_plus_uconst 96, DW_OP_deref, DW_OP_plus_uconst 64, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: j <- [DW_OP_constu 40, DW_OP_minus, DW_OP_deref_size 8, DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 112, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 64 32] $ebp
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 96 32] $ebx
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 68, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 64, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 56, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 116, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 120, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 108, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 104, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 100, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 96, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 128, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 124, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	movl	%ebp, %ecx
	roll	$15, %ecx
	movl	%ebp, %edx
	roll	$13, %edx
	xorl	%ecx, %edx
	movl	%ebp, %ecx
	shrl	$10, %ecx
	movl	-64(%rsp), %r14d                # 4-byte Reload
	movl	%r14d, %r9d
	roll	$25, %r9d
	xorl	%edx, %ecx
	movl	%r14d, %edx
	roll	$14, %edx
	xorl	%r9d, %edx
	movl	%r14d, %r9d
	shrl	$3, %r9d
	xorl	%edx, %r9d
	movl	-68(%rsp), %edx                 # 4-byte Reload
	addl	-96(%rsp), %edx                 # 4-byte Folded Reload
	addl	%r9d, %edx
	addl	%ecx, %edx
.Ltmp143:
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 128 32] $edx
	.loc	0 0 3 is_stmt 0                 # liblzma/check/sha256.c:0:3
	movl	%edx, -72(%rsp)                 # 4-byte Spill
.Ltmp144:
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 96 32] undef
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 224 32] undef
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 96 32] undef
	movl	52(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, -76(%rsp)                 # 4-byte Spill
	.loc	0 99 3 is_stmt 1                # liblzma/check/sha256.c:99:3
	cmpq	$-16, %r12
	.loc	0 100 10                        # liblzma/check/sha256.c:100:10
	je	.LBB2_13
.Ltmp145:
.LBB2_12:                               # %cond.true538.i
                                        #   in Loop: Header=BB2_1 Depth=1
	#DEBUG_VALUE: process:check <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 72, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 68, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 60, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 56, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 52, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 48, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 44, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 40, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 36, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 28, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 24, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 20, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 16, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 12, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:state <- [DW_OP_plus_uconst 96, DW_OP_deref, DW_OP_plus_uconst 64, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: j <- [DW_OP_constu 40, DW_OP_minus, DW_OP_deref_size 8, DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 112, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 64 32] $ebp
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 96 32] $ebx
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 64, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 56, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 116, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 120, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 108, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 104, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 100, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 96, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 128, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 124, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	movl	%ebx, %ecx
	roll	$15, %ecx
	movl	%ebx, %edx
	roll	$13, %edx
	xorl	%ecx, %edx
	movl	%ebx, %ecx
	shrl	$10, %ecx
	movl	-60(%rsp), %r14d                # 4-byte Reload
	movl	%r14d, %r9d
	roll	$25, %r9d
	xorl	%edx, %ecx
	movl	%r14d, %edx
	roll	$14, %edx
	xorl	%r9d, %edx
	movl	%r14d, %r9d
	shrl	$3, %r9d
	xorl	%edx, %r9d
	movl	-64(%rsp), %edx                 # 4-byte Reload
	addl	-128(%rsp), %edx                # 4-byte Folded Reload
	addl	%r9d, %edx
	addl	%ecx, %edx
.Ltmp146:
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 160 32] $edx
	.loc	0 0 10 is_stmt 0                # liblzma/check/sha256.c:0:10
	movl	%edx, -76(%rsp)                 # 4-byte Spill
.Ltmp147:
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 76, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 76, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 64 32] undef
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 192 32] undef
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 64 32] undef
	movl	48(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, -80(%rsp)                 # 4-byte Spill
	.loc	0 99 3 is_stmt 1                # liblzma/check/sha256.c:99:3
	cmpq	$-16, %r12
	.loc	0 100 17                        # liblzma/check/sha256.c:100:17
	je	.LBB2_15
.Ltmp148:
.LBB2_14:                               # %cond.true642.i
                                        #   in Loop: Header=BB2_1 Depth=1
	#DEBUG_VALUE: process:check <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 72, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 68, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 60, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 56, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 52, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 48, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 44, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 40, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 36, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 28, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 24, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 20, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 16, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 12, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:state <- [DW_OP_plus_uconst 96, DW_OP_deref, DW_OP_plus_uconst 64, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: j <- [DW_OP_constu 40, DW_OP_minus, DW_OP_deref_size 8, DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 112, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 64 32] $ebp
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 96 32] $ebx
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 76, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 56, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 116, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 120, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 108, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 104, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 100, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 96, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 128, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 124, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	.loc	0 0 17 is_stmt 0                # liblzma/check/sha256.c:0:17
	movl	-72(%rsp), %r9d                 # 4-byte Reload
	.loc	0 100 17                        # liblzma/check/sha256.c:100:17
	movl	%r9d, %ecx
	roll	$15, %ecx
	movl	%r9d, %edx
	roll	$13, %edx
	xorl	%ecx, %edx
	movl	%r9d, %ecx
	shrl	$10, %ecx
	movl	-56(%rsp), %r14d                # 4-byte Reload
	movl	%r14d, %r9d
	roll	$25, %r9d
	xorl	%edx, %ecx
	movl	%r14d, %edx
	roll	$14, %edx
	xorl	%r9d, %edx
	movl	%r14d, %r9d
	shrl	$3, %r9d
	xorl	%edx, %r9d
	movl	-60(%rsp), %edx                 # 4-byte Reload
	addl	-124(%rsp), %edx                # 4-byte Folded Reload
	addl	%r9d, %edx
	addl	%ecx, %edx
.Ltmp149:
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 192 32] $edx
	.loc	0 0 17                          # liblzma/check/sha256.c:0:17
	movl	%edx, -80(%rsp)                 # 4-byte Spill
.Ltmp150:
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 32 32] undef
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 160 32] undef
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 32 32] undef
	movl	44(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, -84(%rsp)                 # 4-byte Spill
	.loc	0 99 3 is_stmt 1                # liblzma/check/sha256.c:99:3
	cmpq	$-16, %r12
	.loc	0 100 24                        # liblzma/check/sha256.c:100:24
	je	.LBB2_17
.Ltmp151:
.LBB2_16:                               # %cond.true746.i
                                        #   in Loop: Header=BB2_1 Depth=1
	#DEBUG_VALUE: process:check <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 72, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 68, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 60, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 56, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 52, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 48, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 44, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 40, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 36, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 28, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 24, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 20, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 16, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 12, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:state <- [DW_OP_plus_uconst 96, DW_OP_deref, DW_OP_plus_uconst 64, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: j <- [DW_OP_constu 40, DW_OP_minus, DW_OP_deref_size 8, DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 112, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 64 32] $ebp
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 96 32] $ebx
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 76, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 56, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 116, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 120, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 108, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 104, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 100, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 96, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 128, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 124, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	.loc	0 0 24 is_stmt 0                # liblzma/check/sha256.c:0:24
	movl	-76(%rsp), %r9d                 # 4-byte Reload
	.loc	0 100 24                        # liblzma/check/sha256.c:100:24
	movl	%r9d, %ecx
	roll	$15, %ecx
	movl	%r9d, %edx
	roll	$13, %edx
	xorl	%ecx, %edx
	movl	%r9d, %ecx
	shrl	$10, %ecx
	movl	-116(%rsp), %r14d               # 4-byte Reload
	movl	%r14d, %r9d
	roll	$25, %r9d
	xorl	%edx, %ecx
	movl	%r14d, %edx
	roll	$14, %edx
	xorl	%r9d, %edx
	movl	%r14d, %r9d
	shrl	$3, %r9d
	xorl	%edx, %r9d
	movl	-56(%rsp), %edx                 # 4-byte Reload
	addl	-112(%rsp), %edx                # 4-byte Folded Reload
	addl	%r9d, %edx
	addl	%ecx, %edx
.Ltmp152:
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 224 32] $edx
	.loc	0 0 24                          # liblzma/check/sha256.c:0:24
	movl	%edx, -84(%rsp)                 # 4-byte Spill
.Ltmp153:
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 84, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 84, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 0 32] undef
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 128 32] undef
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 0 32] undef
	movl	40(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, -88(%rsp)                 # 4-byte Spill
	.loc	0 99 3 is_stmt 1                # liblzma/check/sha256.c:99:3
	cmpq	$-16, %r12
	.loc	0 101 3                         # liblzma/check/sha256.c:101:3
	jne	.LBB2_18
	jmp	.LBB2_19
.Ltmp154:
.LBB2_34:                               # %transform.exit
	#DEBUG_VALUE: process:check <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 72, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 68, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_LLVM_fragment 64 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 60, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 56, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 52, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 48, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 44, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 40, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 36, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 28, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 24, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 20, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 16, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: process:data <- [DW_OP_plus_uconst 12, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	#DEBUG_VALUE: transform:state <- [DW_OP_plus_uconst 96, DW_OP_deref, DW_OP_plus_uconst 64, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 224 32] $r13d
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 0 32] $r10d
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 32 32] $edi
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 64 32] $esi
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 96 32] $r8d
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 128 32] $r11d
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 160 32] $r15d
	#DEBUG_VALUE: transform:T <- [DW_OP_LLVM_fragment 192 32] $eax
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 112, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 0 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 32 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_LLVM_fragment 64 32] $ebx
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 96 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 68, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 128 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 64, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 160 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 192 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 56, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 224 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 116, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 120, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 288 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 28, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 320 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 104, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 352 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 100, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 384 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 96, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 416 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 128, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 448 32] $rsp
	#DEBUG_VALUE: transform:W <- [DW_OP_constu 124, DW_OP_minus, DW_OP_deref, DW_OP_LLVM_fragment 480 32] $rsp
	.loc	0 106 11                        # liblzma/check/sha256.c:106:11
	addl	-20(%rsp), %r10d                # 4-byte Folded Reload
.Ltmp155:
	.loc	0 0 11 is_stmt 0                # liblzma/check/sha256.c:0:11
	movq	96(%rsp), %rcx                  # 8-byte Reload
	.loc	0 106 11                        # liblzma/check/sha256.c:106:11
	movl	%r10d, 64(%rcx)
	.loc	0 107 11 is_stmt 1              # liblzma/check/sha256.c:107:11
	addl	-16(%rsp), %edi                 # 4-byte Folded Reload
.Ltmp156:
	movl	%edi, 68(%rcx)
	.loc	0 108 11                        # liblzma/check/sha256.c:108:11
	addl	-12(%rsp), %esi                 # 4-byte Folded Reload
.Ltmp157:
	movl	%esi, 72(%rcx)
	.loc	0 109 11                        # liblzma/check/sha256.c:109:11
	addl	-8(%rsp), %r8d                  # 4-byte Folded Reload
.Ltmp158:
	movl	%r8d, 76(%rcx)
	.loc	0 110 11                        # liblzma/check/sha256.c:110:11
	addl	-4(%rsp), %r11d                 # 4-byte Folded Reload
.Ltmp159:
	movl	%r11d, 80(%rcx)
	.loc	0 111 11                        # liblzma/check/sha256.c:111:11
	addl	(%rsp), %r15d                   # 4-byte Folded Reload
.Ltmp160:
	movl	%r15d, 84(%rcx)
	.loc	0 112 11                        # liblzma/check/sha256.c:112:11
	addl	4(%rsp), %eax                   # 4-byte Folded Reload
.Ltmp161:
	movl	%eax, 88(%rcx)
	.loc	0 113 11                        # liblzma/check/sha256.c:113:11
	addl	8(%rsp), %r13d                  # 4-byte Folded Reload
.Ltmp162:
	movl	%r13d, 92(%rcx)
.Ltmp163:
	.loc	0 133 1 epilogue_begin          # liblzma/check/sha256.c:133:1
	addq	$104, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
.Ltmp164:
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
.Ltmp165:
.Lfunc_end2:
	.size	process, .Lfunc_end2-process
	.cfi_endproc
                                        # -- End function
	.globl	lzma_sha256_finish              # -- Begin function lzma_sha256_finish
	.p2align	4, 0x90
	.type	lzma_sha256_finish,@function
lzma_sha256_finish:                     # @lzma_sha256_finish
.Lfunc_begin3:
	.loc	0 180 0                         # liblzma/check/sha256.c:180:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_sha256_finish:check <- $rdi
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
.Ltmp166:
	.loc	0 183 35 prologue_end           # liblzma/check/sha256.c:183:35
	movq	96(%rdi), %rax
	.loc	0 183 40 is_stmt 0              # liblzma/check/sha256.c:183:40
	andl	$63, %eax
.Ltmp167:
	#DEBUG_VALUE: lzma_sha256_finish:pos <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $eax
	.loc	0 0 0                           # liblzma/check/sha256.c:0:0
	movb	$-128, (%rdi,%rax)
.Ltmp168:
	#DEBUG_VALUE: lzma_sha256_finish:pos <- undef
	.loc	0 186 2 is_stmt 1               # liblzma/check/sha256.c:186:2
	cmpq	$55, %rax
	je	.LBB3_6
.Ltmp169:
# %bb.1:                                # %entry
	#DEBUG_VALUE: lzma_sha256_finish:check <- $rbx
	cmpl	$63, %eax
	jne	.LBB3_2
.Ltmp170:
.LBB3_3:                                # %if.then.peel
	#DEBUG_VALUE: lzma_sha256_finish:check <- $rbx
	.loc	0 188 4                         # liblzma/check/sha256.c:188:4
	movq	%rbx, %rdi
	callq	process
.Ltmp171:
	.loc	0 0 4 is_stmt 0                 # liblzma/check/sha256.c:0:4
	xorl	%eax, %eax
.Ltmp172:
	#DEBUG_VALUE: lzma_sha256_finish:pos <- 0
.LBB3_4:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_sha256_finish:check <- $rbx
	movb	$0, (%rbx,%rax)
.Ltmp173:
	#DEBUG_VALUE: lzma_sha256_finish:pos <- undef
	.loc	0 186 2 is_stmt 1               # liblzma/check/sha256.c:186:2
	cmpq	$63, %rax
	je	.LBB3_3
.Ltmp174:
# %bb.5:                                # %while.cond
                                        #   in Loop: Header=BB3_4 Depth=1
	#DEBUG_VALUE: lzma_sha256_finish:check <- $rbx
	.loc	0 0 0 is_stmt 0                 # liblzma/check/sha256.c:0:0
	leaq	1(%rax), %rcx
.Ltmp175:
	#DEBUG_VALUE: lzma_sha256_finish:pos <- $rcx
	.loc	0 186 2                         # liblzma/check/sha256.c:186:2
	cmpq	$55, %rax
	movq	%rcx, %rax
	jne	.LBB3_4
.Ltmp176:
.LBB3_6:                                # %while.end
	#DEBUG_VALUE: lzma_sha256_finish:check <- $rbx
	.loc	0 196 27 is_stmt 1              # liblzma/check/sha256.c:196:27
	movq	96(%rbx), %rax
	leaq	(,%rax,8), %rcx
	movq	%rcx, 96(%rbx)
	.loc	0 198 36                        # liblzma/check/sha256.c:198:36
	movq	%rax, %rdx
	shlq	$59, %rdx
	movl	%eax, %esi
	andl	$8160, %esi                     # imm = 0x1FE0
	shlq	$43, %rsi
	orq	%rdx, %rsi
	movl	%eax, %edx
	andl	$2088960, %edx                  # imm = 0x1FE000
	shlq	$27, %rdx
	orq	%rsi, %rdx
	movl	%eax, %esi
	andl	$534773760, %esi                # imm = 0x1FE00000
	shlq	$11, %rsi
	orq	%rdx, %rsi
	movq	%rax, %rdx
	shrq	$5, %rdx
	andl	$-16777216, %edx                # imm = 0xFF000000
	orq	%rsi, %rdx
	movq	%rax, %rsi
	shrq	$21, %rsi
	andl	$16711680, %esi                 # imm = 0xFF0000
	orq	%rdx, %rsi
	shrq	$37, %rax
	andl	$65280, %eax                    # imm = 0xFF00
	orq	%rsi, %rax
	shrq	$56, %rcx
	orq	%rax, %rcx
	.loc	0 198 34 is_stmt 0              # liblzma/check/sha256.c:198:34
	movq	%rcx, 56(%rbx)
	.loc	0 200 2 is_stmt 1               # liblzma/check/sha256.c:200:2
	movq	%rbx, %rdi
	callq	process
.Ltmp177:
	#DEBUG_VALUE: i <- 3
	.loc	0 203 26                        # liblzma/check/sha256.c:203:26
	pxor	%xmm0, %xmm0
	movdqu	64(%rbx), %xmm1
.Ltmp178:
	#DEBUG_VALUE: i <- 4
	#DEBUG_VALUE: i <- 7
	movdqu	80(%rbx), %xmm2
	movdqa	%xmm1, %xmm3
	punpckhbw	%xmm0, %xmm3            # xmm3 = xmm3[8],xmm0[8],xmm3[9],xmm0[9],xmm3[10],xmm0[10],xmm3[11],xmm0[11],xmm3[12],xmm0[12],xmm3[13],xmm0[13],xmm3[14],xmm0[14],xmm3[15],xmm0[15]
	pshuflw	$27, %xmm3, %xmm3               # xmm3 = xmm3[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm3, %xmm3               # xmm3 = xmm3[0,1,2,3,7,6,5,4]
	punpcklbw	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	pshuflw	$27, %xmm1, %xmm1               # xmm1 = xmm1[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm1, %xmm1               # xmm1 = xmm1[0,1,2,3,7,6,5,4]
	packuswb	%xmm3, %xmm1
	.loc	0 203 24 is_stmt 0              # liblzma/check/sha256.c:203:24
	movdqu	%xmm1, (%rbx)
	.loc	0 203 26                        # liblzma/check/sha256.c:203:26
	movdqa	%xmm2, %xmm1
	punpckhbw	%xmm0, %xmm1            # xmm1 = xmm1[8],xmm0[8],xmm1[9],xmm0[9],xmm1[10],xmm0[10],xmm1[11],xmm0[11],xmm1[12],xmm0[12],xmm1[13],xmm0[13],xmm1[14],xmm0[14],xmm1[15],xmm0[15]
	pshuflw	$27, %xmm1, %xmm1               # xmm1 = xmm1[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm1, %xmm1               # xmm1 = xmm1[0,1,2,3,7,6,5,4]
	punpcklbw	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	pshuflw	$27, %xmm2, %xmm0               # xmm0 = xmm2[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm0, %xmm0               # xmm0 = xmm0[0,1,2,3,7,6,5,4]
	packuswb	%xmm1, %xmm0
	.loc	0 203 24                        # liblzma/check/sha256.c:203:24
	movdqu	%xmm0, 16(%rbx)
.Ltmp179:
	#DEBUG_VALUE: i <- 8
	.loc	0 206 1 epilogue_begin is_stmt 1 # liblzma/check/sha256.c:206:1
	popq	%rbx
.Ltmp180:
	#DEBUG_VALUE: lzma_sha256_finish:check <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 8
	retq
.Ltmp181:
.LBB3_2:
	.cfi_def_cfa_offset 16
	#DEBUG_VALUE: lzma_sha256_finish:check <- $rbx
	.loc	0 0 0 is_stmt 0                 # liblzma/check/sha256.c:0:0
	incq	%rax
.Ltmp182:
	#DEBUG_VALUE: lzma_sha256_finish:pos <- $rax
	.loc	0 186 2 is_stmt 1               # liblzma/check/sha256.c:186:2
	jmp	.LBB3_4
.Ltmp183:
.Lfunc_end3:
	.size	lzma_sha256_finish, .Lfunc_end3-lzma_sha256_finish
	.cfi_endproc
                                        # -- End function
	.type	lzma_sha256_init.s,@object      # @lzma_sha256_init.s
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	4, 0x0
lzma_sha256_init.s:
	.long	1779033703                      # 0x6a09e667
	.long	3144134277                      # 0xbb67ae85
	.long	1013904242                      # 0x3c6ef372
	.long	2773480762                      # 0xa54ff53a
	.long	1359893119                      # 0x510e527f
	.long	2600822924                      # 0x9b05688c
	.long	528734635                       # 0x1f83d9ab
	.long	1541459225                      # 0x5be0cd19
	.size	lzma_sha256_init.s, 32

	.type	SHA256_K,@object                # @SHA256_K
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
SHA256_K:
	.long	1116352408                      # 0x428a2f98
	.long	1899447441                      # 0x71374491
	.long	3049323471                      # 0xb5c0fbcf
	.long	3921009573                      # 0xe9b5dba5
	.long	961987163                       # 0x3956c25b
	.long	1508970993                      # 0x59f111f1
	.long	2453635748                      # 0x923f82a4
	.long	2870763221                      # 0xab1c5ed5
	.long	3624381080                      # 0xd807aa98
	.long	310598401                       # 0x12835b01
	.long	607225278                       # 0x243185be
	.long	1426881987                      # 0x550c7dc3
	.long	1925078388                      # 0x72be5d74
	.long	2162078206                      # 0x80deb1fe
	.long	2614888103                      # 0x9bdc06a7
	.long	3248222580                      # 0xc19bf174
	.long	3835390401                      # 0xe49b69c1
	.long	4022224774                      # 0xefbe4786
	.long	264347078                       # 0xfc19dc6
	.long	604807628                       # 0x240ca1cc
	.long	770255983                       # 0x2de92c6f
	.long	1249150122                      # 0x4a7484aa
	.long	1555081692                      # 0x5cb0a9dc
	.long	1996064986                      # 0x76f988da
	.long	2554220882                      # 0x983e5152
	.long	2821834349                      # 0xa831c66d
	.long	2952996808                      # 0xb00327c8
	.long	3210313671                      # 0xbf597fc7
	.long	3336571891                      # 0xc6e00bf3
	.long	3584528711                      # 0xd5a79147
	.long	113926993                       # 0x6ca6351
	.long	338241895                       # 0x14292967
	.long	666307205                       # 0x27b70a85
	.long	773529912                       # 0x2e1b2138
	.long	1294757372                      # 0x4d2c6dfc
	.long	1396182291                      # 0x53380d13
	.long	1695183700                      # 0x650a7354
	.long	1986661051                      # 0x766a0abb
	.long	2177026350                      # 0x81c2c92e
	.long	2456956037                      # 0x92722c85
	.long	2730485921                      # 0xa2bfe8a1
	.long	2820302411                      # 0xa81a664b
	.long	3259730800                      # 0xc24b8b70
	.long	3345764771                      # 0xc76c51a3
	.long	3516065817                      # 0xd192e819
	.long	3600352804                      # 0xd6990624
	.long	4094571909                      # 0xf40e3585
	.long	275423344                       # 0x106aa070
	.long	430227734                       # 0x19a4c116
	.long	506948616                       # 0x1e376c08
	.long	659060556                       # 0x2748774c
	.long	883997877                       # 0x34b0bcb5
	.long	958139571                       # 0x391c0cb3
	.long	1322822218                      # 0x4ed8aa4a
	.long	1537002063                      # 0x5b9cca4f
	.long	1747873779                      # 0x682e6ff3
	.long	1955562222                      # 0x748f82ee
	.long	2024104815                      # 0x78a5636f
	.long	2227730452                      # 0x84c87814
	.long	2361852424                      # 0x8cc70208
	.long	2428436474                      # 0x90befffa
	.long	2756734187                      # 0xa4506ceb
	.long	3204031479                      # 0xbef9a3f7
	.long	3329325298                      # 0xc67178f2
	.size	SHA256_K, 256

	.file	3 "liblzma/check" "check.h" md5 0x938220df6e0ab33115ef85b0d8c70c5b
	.file	4 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	15                              # Offset entry count
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
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp10-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp15-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp4-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp10-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp15-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp17-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp16-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp9-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp7-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp15-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp54-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp54-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	224                             # 96
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp21-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp21-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp24-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp26-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	50                              # DW_OP_lit2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp28-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	51                              # DW_OP_lit3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp28-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp30-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	52                              # DW_OP_lit4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp30-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	53                              # DW_OP_lit5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp34-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	54                              # DW_OP_lit6
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp34-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp36-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	55                              # DW_OP_lit7
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp38-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	56                              # DW_OP_lit8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp38-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp40-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	57                              # DW_OP_lit9
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp40-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp42-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	58                              # DW_OP_lit10
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp42-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp44-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	59                              # DW_OP_lit11
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp44-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp46-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	60                              # DW_OP_lit12
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp46-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp48-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	61                              # DW_OP_lit13
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp48-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	62                              # DW_OP_lit14
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp52-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	63                              # DW_OP_lit15
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp52-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp65-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	64                              # DW_OP_lit16
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp22-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp23-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp24-.Lfunc_begin0          #   ending offset
	.byte	5                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp25-.Lfunc_begin0          #   ending offset
	.byte	8                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	82                              # super-register DW_OP_reg2
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp26-.Lfunc_begin0          #   ending offset
	.byte	10                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	196                             # 68
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          #   ending offset
	.byte	13                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	196                             # 68
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	80                              # super-register DW_OP_reg0
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp28-.Lfunc_begin0          #   ending offset
	.byte	15                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	196                             # 68
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp28-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          #   ending offset
	.byte	18                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	196                             # 68
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	80                              # super-register DW_OP_reg0
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp30-.Lfunc_begin0          #   ending offset
	.byte	19                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	196                             # 68
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	60                              # 60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp30-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	22                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	196                             # 68
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	60                              # 60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	80                              # super-register DW_OP_reg0
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	23                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	196                             # 68
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	60                              # 60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	56                              # 56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp33-.Lfunc_begin0          #   ending offset
	.byte	26                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	196                             # 68
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	60                              # 60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	56                              # 56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	80                              # super-register DW_OP_reg0
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp33-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp34-.Lfunc_begin0          #   ending offset
	.byte	27                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	196                             # 68
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	60                              # 60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	56                              # 56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	52                              # 52
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp34-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp35-.Lfunc_begin0          #   ending offset
	.byte	30                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	196                             # 68
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	60                              # 60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	56                              # 56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	52                              # 52
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	80                              # super-register DW_OP_reg0
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp35-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp36-.Lfunc_begin0          #   ending offset
	.byte	31                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	196                             # 68
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	60                              # 60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	56                              # 56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	52                              # 52
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp37-.Lfunc_begin0          #   ending offset
	.byte	34                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	196                             # 68
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	60                              # 60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	56                              # 56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	52                              # 52
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	80                              # super-register DW_OP_reg0
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp37-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp38-.Lfunc_begin0          #   ending offset
	.byte	35                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	196                             # 68
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	60                              # 60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	56                              # 56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	52                              # 52
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	44                              # 44
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp38-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp39-.Lfunc_begin0          #   ending offset
	.byte	38                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	196                             # 68
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	60                              # 60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	56                              # 56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	52                              # 52
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	44                              # 44
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	80                              # super-register DW_OP_reg0
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp39-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp40-.Lfunc_begin0          #   ending offset
	.byte	39                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	196                             # 68
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	60                              # 60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	56                              # 56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	52                              # 52
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	44                              # 44
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp40-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp41-.Lfunc_begin0          #   ending offset
	.byte	42                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	196                             # 68
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	60                              # 60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	56                              # 56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	52                              # 52
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	44                              # 44
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	80                              # super-register DW_OP_reg0
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp41-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp42-.Lfunc_begin0          #   ending offset
	.byte	43                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	196                             # 68
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	60                              # 60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	56                              # 56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	52                              # 52
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	44                              # 44
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	36                              # 36
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp42-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp43-.Lfunc_begin0          #   ending offset
	.byte	46                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	196                             # 68
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	60                              # 60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	56                              # 56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	52                              # 52
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	44                              # 44
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	36                              # 36
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	80                              # super-register DW_OP_reg0
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp43-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp44-.Lfunc_begin0          #   ending offset
	.byte	47                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	196                             # 68
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	60                              # 60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	56                              # 56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	52                              # 52
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	44                              # 44
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	36                              # 36
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp44-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp45-.Lfunc_begin0          #   ending offset
	.byte	50                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	196                             # 68
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	60                              # 60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	56                              # 56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	52                              # 52
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	44                              # 44
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	36                              # 36
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	80                              # super-register DW_OP_reg0
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp45-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp46-.Lfunc_begin0          #   ending offset
	.byte	51                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	196                             # 68
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	60                              # 60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	56                              # 56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	52                              # 52
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	44                              # 44
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	36                              # 36
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	28                              # 28
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp46-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          #   ending offset
	.byte	54                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	196                             # 68
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	60                              # 60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	56                              # 56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	52                              # 52
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	44                              # 44
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	36                              # 36
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	28                              # 28
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	80                              # super-register DW_OP_reg0
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp47-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp48-.Lfunc_begin0          #   ending offset
	.byte	55                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	196                             # 68
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	60                              # 60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	56                              # 56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	52                              # 52
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	44                              # 44
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	36                              # 36
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	28                              # 28
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp48-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp49-.Lfunc_begin0          #   ending offset
	.byte	58                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	196                             # 68
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	60                              # 60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	56                              # 56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	52                              # 52
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	44                              # 44
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	36                              # 36
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	28                              # 28
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	80                              # super-register DW_OP_reg0
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp49-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	59                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	196                             # 68
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	60                              # 60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	56                              # 56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	52                              # 52
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	44                              # 44
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	36                              # 36
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	28                              # 28
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	20                              # 20
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp51-.Lfunc_begin0          #   ending offset
	.byte	62                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	196                             # 68
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	60                              # 60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	56                              # 56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	52                              # 52
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	44                              # 44
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	36                              # 36
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	28                              # 28
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	20                              # 20
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	80                              # super-register DW_OP_reg0
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp51-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp52-.Lfunc_begin0          #   ending offset
	.byte	63                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	196                             # 68
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	60                              # 60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	56                              # 56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	52                              # 52
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	44                              # 44
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	36                              # 36
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	28                              # 28
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	20                              # 20
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp52-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp53-.Lfunc_begin0          #   ending offset
	.byte	66                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	196                             # 68
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	60                              # 60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	56                              # 56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	52                              # 52
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	44                              # 44
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	36                              # 36
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	28                              # 28
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	20                              # 20
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	80                              # super-register DW_OP_reg0
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	67                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	196                             # 68
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	60                              # 60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	56                              # 56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	52                              # 52
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	44                              # 44
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	36                              # 36
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	28                              # 28
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	20                              # 20
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	12                              # 12
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp52-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp54-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	192                             # 64
	.byte	0                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp54-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	7                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	224                             # 96
	.byte	0                               # 
	.byte	6                               # DW_OP_deref
	.byte	35                              # DW_OP_plus_uconst
	.byte	64                              # 64
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp56-.Lfunc_begin0          #   ending offset
	.byte	5                               # Loc expr size
	.byte	147                             # DW_OP_piece
	.byte	28                              # 28
	.byte	93                              # super-register DW_OP_reg13
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp56-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp57-.Lfunc_begin0          #   ending offset
	.byte	24                              # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	82                              # super-register DW_OP_reg2
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	84                              # super-register DW_OP_reg4
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	88                              # super-register DW_OP_reg8
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	91                              # super-register DW_OP_reg11
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	95                              # super-register DW_OP_reg15
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	80                              # super-register DW_OP_reg0
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	93                              # super-register DW_OP_reg13
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp57-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp58-.Lfunc_begin0          #   ending offset
	.byte	25                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	108                             # -20
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	82                              # super-register DW_OP_reg2
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	84                              # super-register DW_OP_reg4
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	88                              # super-register DW_OP_reg8
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	91                              # super-register DW_OP_reg11
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	95                              # super-register DW_OP_reg15
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	80                              # super-register DW_OP_reg0
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	93                              # super-register DW_OP_reg13
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp58-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp59-.Lfunc_begin0          #   ending offset
	.byte	26                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	108                             # -20
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	112                             # -16
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	84                              # super-register DW_OP_reg4
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	88                              # super-register DW_OP_reg8
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	91                              # super-register DW_OP_reg11
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	95                              # super-register DW_OP_reg15
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	80                              # super-register DW_OP_reg0
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	93                              # super-register DW_OP_reg13
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp59-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp60-.Lfunc_begin0          #   ending offset
	.byte	27                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	108                             # -20
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	112                             # -16
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	116                             # -12
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	88                              # super-register DW_OP_reg8
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	91                              # super-register DW_OP_reg11
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	95                              # super-register DW_OP_reg15
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	80                              # super-register DW_OP_reg0
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	93                              # super-register DW_OP_reg13
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp60-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp61-.Lfunc_begin0          #   ending offset
	.byte	28                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	108                             # -20
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	112                             # -16
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	116                             # -12
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	120                             # -8
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	91                              # super-register DW_OP_reg11
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	95                              # super-register DW_OP_reg15
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	80                              # super-register DW_OP_reg0
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	93                              # super-register DW_OP_reg13
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp61-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp62-.Lfunc_begin0          #   ending offset
	.byte	29                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	108                             # -20
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	112                             # -16
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	116                             # -12
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	120                             # -8
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	124                             # -4
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	95                              # super-register DW_OP_reg15
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	80                              # super-register DW_OP_reg0
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	93                              # super-register DW_OP_reg13
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp62-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp63-.Lfunc_begin0          #   ending offset
	.byte	30                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	108                             # -20
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	112                             # -16
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	116                             # -12
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	120                             # -8
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	124                             # -4
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	80                              # super-register DW_OP_reg0
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	93                              # super-register DW_OP_reg13
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp63-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp64-.Lfunc_begin0          #   ending offset
	.byte	31                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	108                             # -20
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	112                             # -16
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	116                             # -12
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	120                             # -8
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	124                             # -4
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	4                               # 4
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	93                              # super-register DW_OP_reg13
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp64-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp65-.Lfunc_begin0          #   ending offset
	.byte	32                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	108                             # -20
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	112                             # -16
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	116                             # -12
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	120                             # -8
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	124                             # -4
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	4                               # 4
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp66-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp67-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp67-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp68-.Lfunc_begin0          #   ending offset
	.byte	8                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	147                             # DW_OP_piece
	.byte	12                              # 12
	.byte	91                              # super-register DW_OP_reg11
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp68-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp69-.Lfunc_begin0          #   ending offset
	.byte	13                              # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	147                             # DW_OP_piece
	.byte	12                              # 12
	.byte	91                              # super-register DW_OP_reg11
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	93                              # super-register DW_OP_reg13
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp69-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	16                              # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	88                              # super-register DW_OP_reg8
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	91                              # super-register DW_OP_reg11
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	93                              # super-register DW_OP_reg13
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp71-.Lfunc_begin0          #   ending offset
	.byte	19                              # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	88                              # super-register DW_OP_reg8
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	91                              # super-register DW_OP_reg11
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	80                              # super-register DW_OP_reg0
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	93                              # super-register DW_OP_reg13
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp71-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp72-.Lfunc_begin0          #   ending offset
	.byte	22                              # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	84                              # super-register DW_OP_reg4
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	88                              # super-register DW_OP_reg8
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	91                              # super-register DW_OP_reg11
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	80                              # super-register DW_OP_reg0
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	93                              # super-register DW_OP_reg13
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp72-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp73-.Lfunc_begin0          #   ending offset
	.byte	23                              # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	84                              # super-register DW_OP_reg4
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	88                              # super-register DW_OP_reg8
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	91                              # super-register DW_OP_reg11
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	95                              # super-register DW_OP_reg15
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	80                              # super-register DW_OP_reg0
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	93                              # super-register DW_OP_reg13
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp73-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp78-.Lfunc_begin0          #   ending offset
	.byte	24                              # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	85                              # super-register DW_OP_reg5
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	84                              # super-register DW_OP_reg4
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	88                              # super-register DW_OP_reg8
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	91                              # super-register DW_OP_reg11
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	95                              # super-register DW_OP_reg15
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	80                              # super-register DW_OP_reg0
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	93                              # super-register DW_OP_reg13
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp78-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp79-.Lfunc_begin0          #   ending offset
	.byte	22                              # Loc expr size
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	85                              # super-register DW_OP_reg5
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	84                              # super-register DW_OP_reg4
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	88                              # super-register DW_OP_reg8
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	95                              # super-register DW_OP_reg15
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	80                              # super-register DW_OP_reg0
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	93                              # super-register DW_OP_reg13
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp79-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp80-.Lfunc_begin0          #   ending offset
	.byte	23                              # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	85                              # super-register DW_OP_reg5
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	84                              # super-register DW_OP_reg4
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	88                              # super-register DW_OP_reg8
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	95                              # super-register DW_OP_reg15
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	80                              # super-register DW_OP_reg0
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	93                              # super-register DW_OP_reg13
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp80-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp81-.Lfunc_begin0          #   ending offset
	.byte	24                              # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	85                              # super-register DW_OP_reg5
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	84                              # super-register DW_OP_reg4
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	88                              # super-register DW_OP_reg8
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	91                              # super-register DW_OP_reg11
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	95                              # super-register DW_OP_reg15
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	80                              # super-register DW_OP_reg0
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	93                              # super-register DW_OP_reg13
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp81-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp91-.Lfunc_begin0          #   ending offset
	.byte	24                              # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	85                              # super-register DW_OP_reg5
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	84                              # super-register DW_OP_reg4
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	88                              # super-register DW_OP_reg8
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	91                              # super-register DW_OP_reg11
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	95                              # super-register DW_OP_reg15
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	80                              # super-register DW_OP_reg0
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	93                              # super-register DW_OP_reg13
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp91-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp92-.Lfunc_begin0          #   ending offset
	.byte	20                              # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	85                              # super-register DW_OP_reg5
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	84                              # super-register DW_OP_reg4
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	91                              # super-register DW_OP_reg11
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	95                              # super-register DW_OP_reg15
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	80                              # super-register DW_OP_reg0
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp92-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp93-.Lfunc_begin0          #   ending offset
	.byte	14                              # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	85                              # super-register DW_OP_reg5
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	91                              # super-register DW_OP_reg11
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	95                              # super-register DW_OP_reg15
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp93-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp94-.Lfunc_begin0          #   ending offset
	.byte	8                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	147                             # DW_OP_piece
	.byte	12                              # 12
	.byte	91                              # super-register DW_OP_reg11
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp126-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp129-.Lfunc_begin0         #   ending offset
	.byte	24                              # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	85                              # super-register DW_OP_reg5
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	84                              # super-register DW_OP_reg4
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	88                              # super-register DW_OP_reg8
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	91                              # super-register DW_OP_reg11
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	95                              # super-register DW_OP_reg15
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	80                              # super-register DW_OP_reg0
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	93                              # super-register DW_OP_reg13
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp129-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp133-.Lfunc_begin0         #   ending offset
	.byte	20                              # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	85                              # super-register DW_OP_reg5
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	84                              # super-register DW_OP_reg4
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	91                              # super-register DW_OP_reg11
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	95                              # super-register DW_OP_reg15
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	80                              # super-register DW_OP_reg0
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp133-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp137-.Lfunc_begin0         #   ending offset
	.byte	14                              # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	85                              # super-register DW_OP_reg5
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	91                              # super-register DW_OP_reg11
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	95                              # super-register DW_OP_reg15
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp137-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp141-.Lfunc_begin0         #   ending offset
	.byte	8                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	147                             # DW_OP_piece
	.byte	12                              # 12
	.byte	91                              # super-register DW_OP_reg11
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp154-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp155-.Lfunc_begin0         #   ending offset
	.byte	24                              # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	85                              # super-register DW_OP_reg5
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	84                              # super-register DW_OP_reg4
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	88                              # super-register DW_OP_reg8
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	91                              # super-register DW_OP_reg11
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	95                              # super-register DW_OP_reg15
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	80                              # super-register DW_OP_reg0
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	93                              # super-register DW_OP_reg13
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp155-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp156-.Lfunc_begin0         #   ending offset
	.byte	23                              # Loc expr size
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	85                              # super-register DW_OP_reg5
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	84                              # super-register DW_OP_reg4
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	88                              # super-register DW_OP_reg8
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	91                              # super-register DW_OP_reg11
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	95                              # super-register DW_OP_reg15
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	80                              # super-register DW_OP_reg0
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	93                              # super-register DW_OP_reg13
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp156-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp157-.Lfunc_begin0         #   ending offset
	.byte	20                              # Loc expr size
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	84                              # super-register DW_OP_reg4
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	88                              # super-register DW_OP_reg8
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	91                              # super-register DW_OP_reg11
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	95                              # super-register DW_OP_reg15
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	80                              # super-register DW_OP_reg0
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	93                              # super-register DW_OP_reg13
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp157-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp158-.Lfunc_begin0         #   ending offset
	.byte	17                              # Loc expr size
	.byte	147                             # DW_OP_piece
	.byte	12                              # 12
	.byte	88                              # super-register DW_OP_reg8
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	91                              # super-register DW_OP_reg11
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	95                              # super-register DW_OP_reg15
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	80                              # super-register DW_OP_reg0
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	93                              # super-register DW_OP_reg13
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp158-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp159-.Lfunc_begin0         #   ending offset
	.byte	14                              # Loc expr size
	.byte	147                             # DW_OP_piece
	.byte	16                              # 16
	.byte	91                              # super-register DW_OP_reg11
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	95                              # super-register DW_OP_reg15
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	80                              # super-register DW_OP_reg0
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	93                              # super-register DW_OP_reg13
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp159-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp160-.Lfunc_begin0         #   ending offset
	.byte	11                              # Loc expr size
	.byte	147                             # DW_OP_piece
	.byte	20                              # 20
	.byte	95                              # super-register DW_OP_reg15
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	80                              # super-register DW_OP_reg0
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	93                              # super-register DW_OP_reg13
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp160-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp161-.Lfunc_begin0         #   ending offset
	.byte	8                               # Loc expr size
	.byte	147                             # DW_OP_piece
	.byte	24                              # 24
	.byte	80                              # super-register DW_OP_reg0
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	93                              # super-register DW_OP_reg13
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp161-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp162-.Lfunc_begin0         #   ending offset
	.byte	5                               # Loc expr size
	.byte	147                             # DW_OP_piece
	.byte	28                              # 28
	.byte	93                              # super-register DW_OP_reg13
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp65-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp81-.Lfunc_begin0          #   ending offset
	.byte	7                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	88                              # -40
	.byte	148                             # DW_OP_deref_size
	.byte	8                               # 
	.byte	35                              # DW_OP_plus_uconst
	.byte	16                              # 16
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp81-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp88-.Lfunc_begin0          #   ending offset
	.byte	7                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	88                              # -40
	.byte	148                             # DW_OP_deref_size
	.byte	8                               # 
	.byte	35                              # DW_OP_plus_uconst
	.byte	32                              # 32
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp88-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp90-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	124                             # DW_OP_breg12
	.byte	16                              # 16
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp90-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp154-.Lfunc_begin0         #   ending offset
	.byte	7                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	88                              # -40
	.byte	148                             # DW_OP_deref_size
	.byte	8                               # 
	.byte	35                              # DW_OP_plus_uconst
	.byte	16                              # 16
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp65-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp74-.Lfunc_begin0          #   ending offset
	.byte	70                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	184                             # -72
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	180                             # -76
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	176                             # -80
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	172                             # -84
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	168                             # -88
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	84                              # -44
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	100                             # -28
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	80                              # -48
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	76                              # -52
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	104                             # -24
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp74-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp83-.Lfunc_begin0          #   ending offset
	.byte	75                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	184                             # -72
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	180                             # -76
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	176                             # -80
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	172                             # -84
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	168                             # -88
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	84                              # -44
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	100                             # -28
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	80                              # -48
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	76                              # -52
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	104                             # -24
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp83-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp84-.Lfunc_begin0          #   ending offset
	.byte	74                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	96                              # -32
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	184                             # -72
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	180                             # -76
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	176                             # -80
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	172                             # -84
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	168                             # -88
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	84                              # -44
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	100                             # -28
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	80                              # -48
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	76                              # -52
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	104                             # -24
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp84-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp85-.Lfunc_begin0          #   ending offset
	.byte	72                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	83                              # super-register DW_OP_reg3
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	96                              # -32
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	184                             # -72
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	180                             # -76
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	176                             # -80
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	172                             # -84
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	168                             # -88
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	84                              # -44
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	100                             # -28
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	80                              # -48
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	76                              # -52
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	104                             # -24
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp85-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp86-.Lfunc_begin0          #   ending offset
	.byte	72                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	83                              # super-register DW_OP_reg3
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	96                              # -32
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	184                             # -72
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	180                             # -76
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	176                             # -80
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	172                             # -84
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	168                             # -88
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	84                              # -44
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	100                             # -28
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	152                             # -104
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	80                              # -48
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	76                              # -52
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	104                             # -24
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp86-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp88-.Lfunc_begin0          #   ending offset
	.byte	70                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	83                              # super-register DW_OP_reg3
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	96                              # -32
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	184                             # -72
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	180                             # -76
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	176                             # -80
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	172                             # -84
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	168                             # -88
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	84                              # -44
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	100                             # -28
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	152                             # -104
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	80                              # -48
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	76                              # -52
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	104                             # -24
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	94                              # super-register DW_OP_reg14
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp88-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp91-.Lfunc_begin0          #   ending offset
	.byte	70                              # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	89                              # super-register DW_OP_reg9
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	83                              # super-register DW_OP_reg3
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	96                              # -32
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	188                             # -68
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	64                              # -64
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	68                              # -60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	72                              # -56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	148                             # -108
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	152                             # -104
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	156                             # -100
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	160                             # -96
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp91-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp92-.Lfunc_begin0          #   ending offset
	.byte	72                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	89                              # super-register DW_OP_reg9
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	83                              # super-register DW_OP_reg3
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	96                              # -32
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	188                             # -68
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	64                              # -64
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	68                              # -60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	72                              # -56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	148                             # -108
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	152                             # -104
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	156                             # -100
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	160                             # -96
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp92-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp93-.Lfunc_begin0          #   ending offset
	.byte	74                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	196                             # 68
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	83                              # super-register DW_OP_reg3
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	96                              # -32
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	188                             # -68
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	64                              # -64
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	68                              # -60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	72                              # -56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	148                             # -108
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	152                             # -104
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	156                             # -100
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	160                             # -96
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp93-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp94-.Lfunc_begin0          #   ending offset
	.byte	76                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	96                              # -32
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	188                             # -68
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	64                              # -64
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	68                              # -60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	72                              # -56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	148                             # -108
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	152                             # -104
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	156                             # -100
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	160                             # -96
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp94-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp95-.Lfunc_begin0          #   ending offset
	.byte	74                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	86                              # super-register DW_OP_reg6
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	60                              # 60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	188                             # -68
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	64                              # -64
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	68                              # -60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	72                              # -56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	148                             # -108
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	152                             # -104
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	156                             # -100
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	160                             # -96
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp95-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp96-.Lfunc_begin0          #   ending offset
	.byte	72                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	86                              # super-register DW_OP_reg6
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	83                              # super-register DW_OP_reg3
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	56                              # 56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	64                              # -64
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	68                              # -60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	72                              # -56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	148                             # -108
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	152                             # -104
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	156                             # -100
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	160                             # -96
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp96-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp97-.Lfunc_begin0          #   ending offset
	.byte	73                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	86                              # super-register DW_OP_reg6
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	83                              # super-register DW_OP_reg3
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	184                             # -72
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	52                              # 52
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	68                              # -60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	72                              # -56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	148                             # -108
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	152                             # -104
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	156                             # -100
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	160                             # -96
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp97-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp98-.Lfunc_begin0          #   ending offset
	.byte	74                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	86                              # super-register DW_OP_reg6
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	83                              # super-register DW_OP_reg3
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	184                             # -72
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	180                             # -76
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	72                              # -56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	148                             # -108
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	152                             # -104
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	156                             # -100
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	160                             # -96
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp98-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp99-.Lfunc_begin0          #   ending offset
	.byte	75                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	86                              # super-register DW_OP_reg6
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	83                              # super-register DW_OP_reg3
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	184                             # -72
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	180                             # -76
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	176                             # -80
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	44                              # 44
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	148                             # -108
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	152                             # -104
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	156                             # -100
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	160                             # -96
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp99-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp100-.Lfunc_begin0         #   ending offset
	.byte	76                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	86                              # super-register DW_OP_reg6
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	83                              # super-register DW_OP_reg3
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	184                             # -72
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	180                             # -76
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	176                             # -80
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	172                             # -84
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	148                             # -108
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	152                             # -104
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	156                             # -100
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	160                             # -96
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp100-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp101-.Lfunc_begin0         #   ending offset
	.byte	74                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	86                              # super-register DW_OP_reg6
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	83                              # super-register DW_OP_reg3
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	184                             # -72
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	180                             # -76
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	176                             # -80
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	172                             # -84
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	81                              # super-register DW_OP_reg1
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	148                             # -108
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	152                             # -104
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	156                             # -100
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	160                             # -96
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp101-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp102-.Lfunc_begin0         #   ending offset
	.byte	76                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	86                              # super-register DW_OP_reg6
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	83                              # super-register DW_OP_reg3
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	184                             # -72
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	180                             # -76
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	176                             # -80
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	172                             # -84
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	168                             # -88
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	148                             # -108
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	152                             # -104
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	156                             # -100
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	160                             # -96
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp102-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp104-.Lfunc_begin0         #   ending offset
	.byte	78                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	86                              # super-register DW_OP_reg6
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	184                             # -72
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	180                             # -76
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	176                             # -80
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	172                             # -84
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	168                             # -88
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	148                             # -108
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	152                             # -104
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	156                             # -100
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	160                             # -96
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp104-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp105-.Lfunc_begin0         #   ending offset
	.byte	76                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	86                              # super-register DW_OP_reg6
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	184                             # -72
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	180                             # -76
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	176                             # -80
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	172                             # -84
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	168                             # -88
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	81                              # super-register DW_OP_reg1
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	148                             # -108
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	152                             # -104
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	156                             # -100
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	160                             # -96
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp105-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp106-.Lfunc_begin0         #   ending offset
	.byte	75                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	86                              # super-register DW_OP_reg6
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	184                             # -72
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	180                             # -76
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	176                             # -80
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	172                             # -84
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	168                             # -88
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	148                             # -108
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	152                             # -104
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	156                             # -100
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	160                             # -96
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp106-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp107-.Lfunc_begin0         #   ending offset
	.byte	77                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	184                             # -72
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	180                             # -76
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	176                             # -80
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	172                             # -84
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	168                             # -88
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	148                             # -108
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	152                             # -104
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	156                             # -100
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	160                             # -96
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp107-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp110-.Lfunc_begin0         #   ending offset
	.byte	79                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	184                             # -72
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	180                             # -76
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	176                             # -80
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	172                             # -84
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	168                             # -88
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	84                              # -44
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	148                             # -108
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	152                             # -104
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	156                             # -100
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	160                             # -96
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp110-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp111-.Lfunc_begin0         #   ending offset
	.byte	77                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	184                             # -72
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	180                             # -76
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	176                             # -80
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	172                             # -84
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	168                             # -88
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	84                              # -44
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	89                              # super-register DW_OP_reg9
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	152                             # -104
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	156                             # -100
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	160                             # -96
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp111-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp113-.Lfunc_begin0         #   ending offset
	.byte	78                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	184                             # -72
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	180                             # -76
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	176                             # -80
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	172                             # -84
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	168                             # -88
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	84                              # -44
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	100                             # -28
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	152                             # -104
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	156                             # -100
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	160                             # -96
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp113-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp115-.Lfunc_begin0         #   ending offset
	.byte	76                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	184                             # -72
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	180                             # -76
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	176                             # -80
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	172                             # -84
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	168                             # -88
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	84                              # -44
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	100                             # -28
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	83                              # super-register DW_OP_reg3
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	156                             # -100
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	160                             # -96
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp115-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp116-.Lfunc_begin0         #   ending offset
	.byte	74                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	184                             # -72
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	180                             # -76
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	176                             # -80
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	172                             # -84
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	168                             # -88
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	84                              # -44
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	100                             # -28
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	83                              # super-register DW_OP_reg3
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	81                              # super-register DW_OP_reg1
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	160                             # -96
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp116-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp118-.Lfunc_begin0         #   ending offset
	.byte	75                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	184                             # -72
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	180                             # -76
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	176                             # -80
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	172                             # -84
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	168                             # -88
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	84                              # -44
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	100                             # -28
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	83                              # super-register DW_OP_reg3
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	80                              # -48
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	160                             # -96
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp118-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp119-.Lfunc_begin0         #   ending offset
	.byte	73                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	184                             # -72
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	180                             # -76
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	176                             # -80
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	172                             # -84
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	168                             # -88
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	84                              # -44
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	100                             # -28
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	83                              # super-register DW_OP_reg3
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	80                              # -48
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	81                              # super-register DW_OP_reg1
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp119-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp121-.Lfunc_begin0         #   ending offset
	.byte	74                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	184                             # -72
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	180                             # -76
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	176                             # -80
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	172                             # -84
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	168                             # -88
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	84                              # -44
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	100                             # -28
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	83                              # super-register DW_OP_reg3
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	80                              # -48
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	76                              # -52
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp121-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp122-.Lfunc_begin0         #   ending offset
	.byte	72                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	184                             # -72
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	180                             # -76
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	176                             # -80
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	172                             # -84
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	168                             # -88
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	84                              # -44
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	100                             # -28
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	83                              # super-register DW_OP_reg3
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	80                              # -48
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	76                              # -52
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	81                              # super-register DW_OP_reg1
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp122-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp123-.Lfunc_begin0         #   ending offset
	.byte	73                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	184                             # -72
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	180                             # -76
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	176                             # -80
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	172                             # -84
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	168                             # -88
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	84                              # -44
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	100                             # -28
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	83                              # super-register DW_OP_reg3
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	80                              # -48
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	76                              # -52
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	104                             # -24
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp123-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp125-.Lfunc_begin0         #   ending offset
	.byte	75                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	184                             # -72
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	180                             # -76
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	176                             # -80
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	172                             # -84
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	168                             # -88
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	84                              # -44
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	100                             # -28
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	80                              # -48
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	76                              # -52
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	104                             # -24
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp125-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp126-.Lfunc_begin0         #   ending offset
	.byte	73                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	184                             # -72
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	180                             # -76
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	176                             # -80
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	172                             # -84
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	168                             # -88
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	84                              # -44
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	100                             # -28
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	80                              # -48
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	76                              # -52
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	104                             # -24
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	81                              # super-register DW_OP_reg1
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp126-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp127-.Lfunc_begin0         #   ending offset
	.byte	70                              # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	89                              # super-register DW_OP_reg9
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	83                              # super-register DW_OP_reg3
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	96                              # -32
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	188                             # -68
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	64                              # -64
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	68                              # -60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	72                              # -56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	148                             # -108
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	152                             # -104
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	156                             # -100
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	160                             # -96
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp127-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp128-.Lfunc_begin0         #   ending offset
	.byte	69                              # Loc expr size
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	89                              # super-register DW_OP_reg9
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	83                              # super-register DW_OP_reg3
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	96                              # -32
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	188                             # -68
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	64                              # -64
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	68                              # -60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	72                              # -56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	148                             # -108
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	152                             # -104
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	156                             # -100
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	160                             # -96
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp128-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp129-.Lfunc_begin0         #   ending offset
	.byte	70                              # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	89                              # super-register DW_OP_reg9
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	83                              # super-register DW_OP_reg3
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	96                              # -32
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	188                             # -68
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	64                              # -64
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	68                              # -60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	72                              # -56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	148                             # -108
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	152                             # -104
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	156                             # -100
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	160                             # -96
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp129-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp131-.Lfunc_begin0         #   ending offset
	.byte	72                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	89                              # super-register DW_OP_reg9
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	83                              # super-register DW_OP_reg3
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	96                              # -32
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	188                             # -68
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	64                              # -64
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	68                              # -60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	72                              # -56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	148                             # -108
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	152                             # -104
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	156                             # -100
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	160                             # -96
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp131-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp132-.Lfunc_begin0         #   ending offset
	.byte	71                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	83                              # super-register DW_OP_reg3
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	96                              # -32
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	188                             # -68
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	64                              # -64
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	68                              # -60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	72                              # -56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	148                             # -108
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	152                             # -104
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	156                             # -100
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	160                             # -96
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp132-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp133-.Lfunc_begin0         #   ending offset
	.byte	72                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	89                              # super-register DW_OP_reg9
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	83                              # super-register DW_OP_reg3
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	96                              # -32
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	188                             # -68
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	64                              # -64
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	68                              # -60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	72                              # -56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	148                             # -108
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	152                             # -104
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	156                             # -100
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	160                             # -96
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp133-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp135-.Lfunc_begin0         #   ending offset
	.byte	74                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	83                              # super-register DW_OP_reg3
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	96                              # -32
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	188                             # -68
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	64                              # -64
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	68                              # -60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	72                              # -56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	148                             # -108
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	152                             # -104
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	156                             # -100
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	160                             # -96
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp135-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp136-.Lfunc_begin0         #   ending offset
	.byte	73                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	96                              # -32
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	188                             # -68
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	64                              # -64
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	68                              # -60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	72                              # -56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	148                             # -108
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	152                             # -104
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	156                             # -100
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	160                             # -96
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp136-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp138-.Lfunc_begin0         #   ending offset
	.byte	74                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	83                              # super-register DW_OP_reg3
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	96                              # -32
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	188                             # -68
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	64                              # -64
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	68                              # -60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	72                              # -56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	148                             # -108
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	152                             # -104
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	156                             # -100
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	160                             # -96
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp138-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp139-.Lfunc_begin0         #   ending offset
	.byte	73                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	96                              # -32
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	188                             # -68
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	64                              # -64
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	68                              # -60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	72                              # -56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	148                             # -108
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	152                             # -104
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	156                             # -100
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	160                             # -96
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp139-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp140-.Lfunc_begin0         #   ending offset
	.byte	74                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	86                              # super-register DW_OP_reg6
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	96                              # -32
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	188                             # -68
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	64                              # -64
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	68                              # -60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	72                              # -56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	148                             # -108
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	152                             # -104
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	156                             # -100
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	160                             # -96
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp140-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp141-.Lfunc_begin0         #   ending offset
	.byte	73                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	86                              # super-register DW_OP_reg6
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	94                              # super-register DW_OP_reg14
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	188                             # -68
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	64                              # -64
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	68                              # -60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	72                              # -56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	148                             # -108
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	152                             # -104
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	156                             # -100
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	160                             # -96
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp141-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp143-.Lfunc_begin0         #   ending offset
	.byte	73                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	86                              # super-register DW_OP_reg6
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	83                              # super-register DW_OP_reg3
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	188                             # -68
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	64                              # -64
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	68                              # -60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	72                              # -56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	148                             # -108
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	152                             # -104
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	156                             # -100
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	160                             # -96
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp143-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp144-.Lfunc_begin0         #   ending offset
	.byte	71                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	86                              # super-register DW_OP_reg6
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	83                              # super-register DW_OP_reg3
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	81                              # super-register DW_OP_reg1
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	64                              # -64
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	68                              # -60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	72                              # -56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	148                             # -108
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	152                             # -104
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	156                             # -100
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	160                             # -96
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp144-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp146-.Lfunc_begin0         #   ending offset
	.byte	73                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	86                              # super-register DW_OP_reg6
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	83                              # super-register DW_OP_reg3
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	184                             # -72
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	64                              # -64
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	68                              # -60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	72                              # -56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	148                             # -108
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	152                             # -104
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	156                             # -100
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	160                             # -96
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp146-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp147-.Lfunc_begin0         #   ending offset
	.byte	72                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	86                              # super-register DW_OP_reg6
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	83                              # super-register DW_OP_reg3
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	184                             # -72
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	81                              # super-register DW_OP_reg1
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	68                              # -60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	72                              # -56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	148                             # -108
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	152                             # -104
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	156                             # -100
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	160                             # -96
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp147-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp149-.Lfunc_begin0         #   ending offset
	.byte	74                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	86                              # super-register DW_OP_reg6
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	83                              # super-register DW_OP_reg3
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	184                             # -72
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	180                             # -76
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	68                              # -60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	72                              # -56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	148                             # -108
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	152                             # -104
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	156                             # -100
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	160                             # -96
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp149-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp150-.Lfunc_begin0         #   ending offset
	.byte	73                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	86                              # super-register DW_OP_reg6
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	83                              # super-register DW_OP_reg3
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	184                             # -72
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	180                             # -76
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	81                              # super-register DW_OP_reg1
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	72                              # -56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	148                             # -108
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	152                             # -104
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	156                             # -100
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	160                             # -96
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp150-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp152-.Lfunc_begin0         #   ending offset
	.byte	75                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	86                              # super-register DW_OP_reg6
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	83                              # super-register DW_OP_reg3
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	184                             # -72
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	180                             # -76
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	176                             # -80
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	72                              # -56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	148                             # -108
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	152                             # -104
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	156                             # -100
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	160                             # -96
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp152-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp153-.Lfunc_begin0         #   ending offset
	.byte	74                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	86                              # super-register DW_OP_reg6
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	83                              # super-register DW_OP_reg3
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	184                             # -72
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	180                             # -76
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	176                             # -80
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	81                              # super-register DW_OP_reg1
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	148                             # -108
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	152                             # -104
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	156                             # -100
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	160                             # -96
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp153-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp154-.Lfunc_begin0         #   ending offset
	.byte	76                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	86                              # super-register DW_OP_reg6
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	83                              # super-register DW_OP_reg3
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	184                             # -72
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	180                             # -76
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	176                             # -80
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	172                             # -84
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	148                             # -108
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	152                             # -104
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	156                             # -100
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	160                             # -96
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp154-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp164-.Lfunc_begin0         #   ending offset
	.byte	73                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	83                              # super-register DW_OP_reg3
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	96                              # -32
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	188                             # -68
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	64                              # -64
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	68                              # -60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	72                              # -56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	100                             # -28
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	152                             # -104
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	156                             # -100
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	160                             # -96
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp164-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	72                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	164                             # -92
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	96                              # -32
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	188                             # -68
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	64                              # -64
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	68                              # -60
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	72                              # -56
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	140                             # -116
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	100                             # -28
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	152                             # -104
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	156                             # -100
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	160                             # -96
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	132                             # -124
	.byte	127                             # 
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp169-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp169-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp180-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp180-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp181-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp181-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp167-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp168-.Lfunc_begin0         #   ending offset
	.byte	10                              # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	1                               # 1
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp175-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp176-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp182-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp177-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp178-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	51                              # DW_OP_lit3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp178-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp179-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	55                              # DW_OP_lit7
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp179-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp181-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	56                              # DW_OP_lit8
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
	.byte	3                               # Abbreviation Code
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
	.byte	4                               # Abbreviation Code
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
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	11                              # Abbreviation Code
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
	.byte	12                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
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
	.byte	14                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
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
	.byte	16                              # Abbreviation Code
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
	.byte	17                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
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
	.byte	21                              # Abbreviation Code
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
	.byte	22                              # Abbreviation Code
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
	.byte	23                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	24                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	26                              # Abbreviation Code
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
	.byte	27                              # Abbreviation Code
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	5                               # DWARF version number
	.byte	1                               # DWARF Unit Type
	.byte	8                               # Address Size (in bytes)
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	1                               # Abbrev [1] 0xc:0x27b DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	2                               # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lrnglists_table_base0          # DW_AT_rnglists_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x2b:0x21 DW_TAG_subprogram
	.byte	2                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	18                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x36:0xb DW_TAG_variable
	.byte	3                               # DW_AT_name
	.long	76                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	0
	.byte	4                               # Abbrev [4] 0x41:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	22                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.long	456                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x4c:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x51:0x6 DW_TAG_subrange_type
	.long	113                             # DW_AT_type
	.byte	8                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x58:0x5 DW_TAG_const_type
	.long	93                              # DW_AT_type
	.byte	8                               # Abbrev [8] 0x5d:0x8 DW_TAG_typedef
	.long	101                             # DW_AT_type
	.byte	6                               # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x65:0x8 DW_TAG_typedef
	.long	109                             # DW_AT_type
	.byte	5                               # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x6d:0x4 DW_TAG_base_type
	.byte	4                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x71:0x4 DW_TAG_base_type
	.byte	7                               # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	3                               # Abbrev [3] 0x75:0xb DW_TAG_variable
	.byte	8                               # DW_AT_name
	.long	128                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	64                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	1
	.byte	5                               # Abbrev [5] 0x80:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x85:0x6 DW_TAG_subrange_type
	.long	113                             # DW_AT_type
	.byte	64                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x8c:0x8 DW_TAG_typedef
	.long	148                             # DW_AT_type
	.byte	11                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x94:0x8 DW_TAG_typedef
	.long	156                             # DW_AT_type
	.byte	10                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x9c:0x4 DW_TAG_base_type
	.byte	9                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0xa0:0x46 DW_TAG_subprogram
	.byte	3                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	19                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0xab:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	35                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.long	623                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0xb4:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	33                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.long	633                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0xbd:0x9 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	22                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.long	456                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0xc6:0x19 DW_TAG_lexical_block
	.byte	4                               # DW_AT_low_pc
	.long	.Ltmp15-.Ltmp5                  # DW_AT_high_pc
	.byte	13                              # Abbrev [13] 0xcc:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	37                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.long	641                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0xd5:0x9 DW_TAG_variable
	.byte	4                               # DW_AT_location
	.byte	38                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.long	633                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0xdf:0x6 DW_TAG_call_site
	.long	230                             # DW_AT_call_origin
	.byte	5                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0xe6:0x57 DW_TAG_subprogram
	.byte	6                               # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	20                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	11                              # Abbrev [11] 0xf1:0x9 DW_TAG_formal_parameter
	.byte	5                               # DW_AT_location
	.byte	22                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.long	456                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0xfa:0x9 DW_TAG_variable
	.byte	7                               # DW_AT_location
	.byte	14                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.long	386                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x103:0x10 DW_TAG_lexical_block
	.byte	6                               # DW_AT_low_pc
	.long	.Ltmp53-.Lfunc_begin2           # DW_AT_high_pc
	.byte	13                              # Abbrev [13] 0x109:0x9 DW_TAG_variable
	.byte	6                               # DW_AT_location
	.byte	39                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.long	633                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x113:0x29 DW_TAG_inlined_subroutine
	.long	317                             # DW_AT_abstract_origin
	.byte	7                               # DW_AT_low_pc
	.long	.Ltmp163-.Ltmp53                # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	129                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	17                              # Abbrev [17] 0x120:0x6 DW_TAG_formal_parameter
	.byte	8                               # DW_AT_location
	.long	321                             # DW_AT_abstract_origin
	.byte	18                              # Abbrev [18] 0x126:0x6 DW_TAG_variable
	.byte	9                               # DW_AT_location
	.long	337                             # DW_AT_abstract_origin
	.byte	18                              # Abbrev [18] 0x12c:0x6 DW_TAG_variable
	.byte	11                              # DW_AT_location
	.long	345                             # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x132:0x9 DW_TAG_lexical_block
	.byte	0                               # DW_AT_ranges
	.byte	18                              # Abbrev [18] 0x134:0x6 DW_TAG_variable
	.byte	10                              # DW_AT_location
	.long	354                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x13d:0x2f DW_TAG_subprogram
	.byte	12                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	88                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	21                              # Abbrev [21] 0x141:0x8 DW_TAG_formal_parameter
	.byte	13                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	88                              # DW_AT_decl_line
	.long	364                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x149:0x8 DW_TAG_formal_parameter
	.byte	14                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	88                              # DW_AT_decl_line
	.long	369                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x151:0x8 DW_TAG_variable
	.byte	15                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.long	374                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x159:0x8 DW_TAG_variable
	.byte	16                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.long	386                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x161:0xa DW_TAG_lexical_block
	.byte	22                              # Abbrev [22] 0x162:0x8 DW_TAG_variable
	.byte	17                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.long	109                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x16c:0x5 DW_TAG_pointer_type
	.long	93                              # DW_AT_type
	.byte	24                              # Abbrev [24] 0x171:0x5 DW_TAG_pointer_type
	.long	88                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x176:0xc DW_TAG_array_type
	.long	93                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x17b:0x6 DW_TAG_subrange_type
	.long	113                             # DW_AT_type
	.byte	8                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x182:0xc DW_TAG_array_type
	.long	93                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x187:0x6 DW_TAG_subrange_type
	.long	113                             # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x18e:0x3a DW_TAG_subprogram
	.byte	8                               # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	21                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x199:0x9 DW_TAG_formal_parameter
	.byte	12                              # DW_AT_location
	.byte	22                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.long	456                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x1a2:0x9 DW_TAG_variable
	.byte	13                              # DW_AT_location
	.byte	40                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	183                             # DW_AT_decl_line
	.long	633                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1ab:0x10 DW_TAG_lexical_block
	.byte	9                               # DW_AT_low_pc
	.long	.Ltmp179-.Ltmp177               # DW_AT_high_pc
	.byte	13                              # Abbrev [13] 0x1b1:0x9 DW_TAG_variable
	.byte	14                              # DW_AT_location
	.byte	39                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.long	633                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x1bb:0x6 DW_TAG_call_site
	.long	230                             # DW_AT_call_origin
	.byte	10                              # DW_AT_call_return_pc
	.byte	14                              # Abbrev [14] 0x1c1:0x6 DW_TAG_call_site
	.long	230                             # DW_AT_call_origin
	.byte	9                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x1c8:0x5 DW_TAG_pointer_type
	.long	461                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x1cd:0x8 DW_TAG_typedef
	.long	469                             # DW_AT_type
	.byte	34                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	25                              # Abbrev [25] 0x1d5:0x6e DW_TAG_structure_type
	.byte	104                             # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	26                              # Abbrev [26] 0x1d9:0x9 DW_TAG_member
	.byte	23                              # DW_AT_name
	.long	482                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	27                              # Abbrev [27] 0x1e2:0x20 DW_TAG_union_type
	.byte	64                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	26                              # Abbrev [26] 0x1e6:0x9 DW_TAG_member
	.byte	24                              # DW_AT_name
	.long	579                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	26                              # Abbrev [26] 0x1ef:0x9 DW_TAG_member
	.byte	28                              # DW_AT_name
	.long	386                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	26                              # Abbrev [26] 0x1f8:0x9 DW_TAG_member
	.byte	29                              # DW_AT_name
	.long	611                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x202:0x9 DW_TAG_member
	.byte	13                              # DW_AT_name
	.long	523                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	27                              # Abbrev [27] 0x20b:0x37 DW_TAG_union_type
	.byte	40                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	26                              # Abbrev [26] 0x20f:0x9 DW_TAG_member
	.byte	30                              # DW_AT_name
	.long	93                              # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	26                              # Abbrev [26] 0x218:0x9 DW_TAG_member
	.byte	31                              # DW_AT_name
	.long	140                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	26                              # Abbrev [26] 0x221:0x9 DW_TAG_member
	.byte	32                              # DW_AT_name
	.long	554                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x22a:0x17 DW_TAG_structure_type
	.byte	40                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	26                              # Abbrev [26] 0x22e:0x9 DW_TAG_member
	.byte	13                              # DW_AT_name
	.long	374                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	26                              # Abbrev [26] 0x237:0x9 DW_TAG_member
	.byte	33                              # DW_AT_name
	.long	140                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x243:0xc DW_TAG_array_type
	.long	591                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x248:0x6 DW_TAG_subrange_type
	.long	113                             # DW_AT_type
	.byte	64                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x24f:0x8 DW_TAG_typedef
	.long	599                             # DW_AT_type
	.byte	27                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x257:0x8 DW_TAG_typedef
	.long	607                             # DW_AT_type
	.byte	26                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x25f:0x4 DW_TAG_base_type
	.byte	25                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x263:0xc DW_TAG_array_type
	.long	140                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x268:0x6 DW_TAG_subrange_type
	.long	113                             # DW_AT_type
	.byte	8                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x26f:0x5 DW_TAG_pointer_type
	.long	628                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x274:0x5 DW_TAG_const_type
	.long	591                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x279:0x8 DW_TAG_typedef
	.long	156                             # DW_AT_type
	.byte	36                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x281:0x5 DW_TAG_const_type
	.long	633                             # DW_AT_type
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
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp77-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp105-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp108-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp154-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	168                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/check/sha256.c"        # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/xz-test/src" # string offset=128
.Linfo_string3:
	.asciz	"s"                             # string offset=160
.Linfo_string4:
	.asciz	"unsigned int"                  # string offset=162
.Linfo_string5:
	.asciz	"__uint32_t"                    # string offset=175
.Linfo_string6:
	.asciz	"uint32_t"                      # string offset=186
.Linfo_string7:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=195
.Linfo_string8:
	.asciz	"SHA256_K"                      # string offset=215
.Linfo_string9:
	.asciz	"unsigned long"                 # string offset=224
.Linfo_string10:
	.asciz	"__uint64_t"                    # string offset=238
.Linfo_string11:
	.asciz	"uint64_t"                      # string offset=249
.Linfo_string12:
	.asciz	"transform"                     # string offset=258
.Linfo_string13:
	.asciz	"state"                         # string offset=268
.Linfo_string14:
	.asciz	"data"                          # string offset=274
.Linfo_string15:
	.asciz	"T"                             # string offset=279
.Linfo_string16:
	.asciz	"W"                             # string offset=281
.Linfo_string17:
	.asciz	"j"                             # string offset=283
.Linfo_string18:
	.asciz	"lzma_sha256_init"              # string offset=285
.Linfo_string19:
	.asciz	"lzma_sha256_update"            # string offset=302
.Linfo_string20:
	.asciz	"process"                       # string offset=321
.Linfo_string21:
	.asciz	"lzma_sha256_finish"            # string offset=329
.Linfo_string22:
	.asciz	"check"                         # string offset=348
.Linfo_string23:
	.asciz	"buffer"                        # string offset=354
.Linfo_string24:
	.asciz	"u8"                            # string offset=361
.Linfo_string25:
	.asciz	"unsigned char"                 # string offset=364
.Linfo_string26:
	.asciz	"__uint8_t"                     # string offset=378
.Linfo_string27:
	.asciz	"uint8_t"                       # string offset=388
.Linfo_string28:
	.asciz	"u32"                           # string offset=396
.Linfo_string29:
	.asciz	"u64"                           # string offset=400
.Linfo_string30:
	.asciz	"crc32"                         # string offset=404
.Linfo_string31:
	.asciz	"crc64"                         # string offset=410
.Linfo_string32:
	.asciz	"sha256"                        # string offset=416
.Linfo_string33:
	.asciz	"size"                          # string offset=423
.Linfo_string34:
	.asciz	"lzma_check_state"              # string offset=428
.Linfo_string35:
	.asciz	"buf"                           # string offset=445
.Linfo_string36:
	.asciz	"size_t"                        # string offset=449
.Linfo_string37:
	.asciz	"copy_start"                    # string offset=456
.Linfo_string38:
	.asciz	"copy_size"                     # string offset=467
.Linfo_string39:
	.asciz	"i"                             # string offset=477
.Linfo_string40:
	.asciz	"pos"                           # string offset=479
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	lzma_sha256_init.s
	.quad	SHA256_K
	.quad	.Lfunc_begin0
	.quad	.Lfunc_begin1
	.quad	.Ltmp5
	.quad	.Ltmp14
	.quad	.Lfunc_begin2
	.quad	.Ltmp53
	.quad	.Lfunc_begin3
	.quad	.Ltmp177
	.quad	.Ltmp171
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
