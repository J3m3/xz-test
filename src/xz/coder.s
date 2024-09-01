	.text
	.file	"coder.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "xz/coder.c" md5 0x77d55822ff15f27cb84d555ab0336be9
	.file	1 "xz" "coder.h" md5 0x17fcfb290997745d98f9605d60a11c50
	.file	2 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	3 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	4 "liblzma/api/lzma" "lzma.h" md5 0xc59c540efa0aff44f03d71331089fff8
	.file	5 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.file	6 "liblzma/api/lzma" "vli.h" md5 0xe1aa51527ce08aa260777d4fb351a0b7
	.file	7 "liblzma/api/lzma" "filter.h" md5 0x5eb86d86854a7619ed1d1ac1b57b2484
	.file	8 "xz" "file_io.h" md5 0x4b45406630bbddcbf05b6d0a795f1a7c
	.file	9 "liblzma/api/lzma" "check.h" md5 0xb07c3297e2bcc14bb477793d08325ee3
	.file	10 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.file	11 "xz" "message.h" md5 0x46ce4fae4ea23be71658f9b2e1a5aef3
	.file	12 "xz" "main.h" md5 0xf54f82fff34a105635379e91892f4bd0
	.globl	coder_set_check                 # -- Begin function coder_set_check
	.p2align	4, 0x90
	.type	coder_set_check,@function
coder_set_check:                        # @coder_set_check
.Lfunc_begin0:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: coder_set_check:new_check <- $edi
	.loc	0 55 8 prologue_end             # xz/coder.c:55:8
	movl	%edi, check(%rip)
	.loc	0 56 16                         # xz/coder.c:56:16
	movb	$1, check_default(%rip)
	.loc	0 57 2                          # xz/coder.c:57:2
	retq
.Ltmp0:
.Lfunc_end0:
	.size	coder_set_check, .Lfunc_end0-coder_set_check
	.cfi_endproc
                                        # -- End function
	.globl	coder_set_preset                # -- Begin function coder_set_preset
	.p2align	4, 0x90
	.type	coder_set_preset,@function
coder_set_preset:                       # @coder_set_preset
.Lfunc_begin1:
	.loc	0 78 0                          # xz/coder.c:78:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: coder_set_preset:new_preset <- $edi
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	.loc	0 79 16 prologue_end            # xz/coder.c:79:16
	movl	preset_number(%rip), %eax
	andl	$-32, %eax
	.loc	0 80 16                         # xz/coder.c:80:16
	orl	%edi, %eax
	movl	%eax, preset_number(%rip)
	movl	filters_count(%rip), %ebx
	testq	%rbx, %rbx
.Ltmp1:
	.loc	0 66 2                          # xz/coder.c:66:2
	je	.LBB1_4
.Ltmp2:
# %bb.1:                                # %while.body.preheader.i
	#DEBUG_VALUE: coder_set_preset:new_preset <- $edi
	shlq	$4, %rbx
.Ltmp3:
	.p2align	4, 0x90
.LBB1_2:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: coder_set_preset:new_preset <- [DW_OP_LLVM_entry_value 1] $edi
	.loc	0 68 31                         # xz/coder.c:68:31
	movq	filters-8(%rbx), %rdi
	.loc	0 68 3 is_stmt 0                # xz/coder.c:68:3
	callq	free@PLT
.Ltmp4:
	.loc	0 69 34 is_stmt 1               # xz/coder.c:69:34
	movq	$0, filters-8(%rbx)
.Ltmp5:
	.loc	0 66 23                         # xz/coder.c:66:23
	addq	$-16, %rbx
	.loc	0 66 2 is_stmt 0                # xz/coder.c:66:2
	jne	.LBB1_2
.Ltmp6:
# %bb.3:                                # %while.cond.while.end_crit_edge.i
	#DEBUG_VALUE: coder_set_preset:new_preset <- [DW_OP_LLVM_entry_value 1] $edi
	.loc	0 67 3 is_stmt 1                # xz/coder.c:67:3
	movl	$0, filters_count(%rip)
.Ltmp7:
.LBB1_4:                                # %forget_filter_chain.exit
	#DEBUG_VALUE: coder_set_preset:new_preset <- [DW_OP_LLVM_entry_value 1] $edi
	.loc	0 82 2 epilogue_begin           # xz/coder.c:82:2
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Ltmp8:
.Lfunc_end1:
	.size	coder_set_preset, .Lfunc_end1-coder_set_preset
	.cfi_endproc
	.file	13 "/usr/include" "stdlib.h" md5 0x02258fad21adf111bb9df9825e61954a
                                        # -- End function
	.globl	coder_set_extreme               # -- Begin function coder_set_extreme
	.p2align	4, 0x90
	.type	coder_set_extreme,@function
coder_set_extreme:                      # @coder_set_extreme
.Lfunc_begin2:
	.loc	0 88 0                          # xz/coder.c:88:0
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	.loc	0 89 16 prologue_end            # xz/coder.c:89:16
	orb	$-128, preset_number+3(%rip)
	movl	filters_count(%rip), %ebx
	testq	%rbx, %rbx
.Ltmp9:
	.loc	0 66 2                          # xz/coder.c:66:2
	je	.LBB2_4
# %bb.1:                                # %while.body.preheader.i
	shlq	$4, %rbx
	.p2align	4, 0x90
.LBB2_2:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
.Ltmp10:
	.loc	0 68 31                         # xz/coder.c:68:31
	movq	filters-8(%rbx), %rdi
	.loc	0 68 3 is_stmt 0                # xz/coder.c:68:3
	callq	free@PLT
.Ltmp11:
	.loc	0 69 34 is_stmt 1               # xz/coder.c:69:34
	movq	$0, filters-8(%rbx)
.Ltmp12:
	.loc	0 66 23                         # xz/coder.c:66:23
	addq	$-16, %rbx
	.loc	0 66 2 is_stmt 0                # xz/coder.c:66:2
	jne	.LBB2_2
# %bb.3:                                # %while.cond.while.end_crit_edge.i
.Ltmp13:
	.loc	0 67 3 is_stmt 1                # xz/coder.c:67:3
	movl	$0, filters_count(%rip)
.Ltmp14:
.LBB2_4:                                # %forget_filter_chain.exit
	.loc	0 91 2 epilogue_begin           # xz/coder.c:91:2
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Ltmp15:
.Lfunc_end2:
	.size	coder_set_extreme, .Lfunc_end2-coder_set_extreme
	.cfi_endproc
                                        # -- End function
	.globl	coder_add_filter                # -- Begin function coder_add_filter
	.p2align	4, 0x90
	.type	coder_add_filter,@function
coder_add_filter:                       # @coder_add_filter
.Lfunc_begin3:
	.loc	0 97 0                          # xz/coder.c:97:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: coder_add_filter:id <- $rdi
	#DEBUG_VALUE: coder_add_filter:options <- $rsi
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
.Ltmp16:
	.loc	0 98 6 prologue_end             # xz/coder.c:98:6
	movl	filters_count(%rip), %eax
	.loc	0 98 20 is_stmt 0               # xz/coder.c:98:20
	cmpl	$4, %eax
.Ltmp17:
	.loc	0 98 6                          # xz/coder.c:98:6
	jne	.LBB3_2
.Ltmp18:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: coder_add_filter:id <- $r14
	#DEBUG_VALUE: coder_add_filter:options <- $rbx
	.loc	0 99 3 is_stmt 1                # xz/coder.c:99:3
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	message_fatal@PLT
.Ltmp19:
	.loc	0 101 10                        # xz/coder.c:101:10
	movl	filters_count(%rip), %eax
.Ltmp20:
.LBB3_2:                                # %if.end
	#DEBUG_VALUE: coder_add_filter:id <- $r14
	#DEBUG_VALUE: coder_add_filter:options <- $rbx
	.loc	0 101 2 is_stmt 0               # xz/coder.c:101:2
	movl	%eax, %ecx
	shlq	$4, %rcx
	.loc	0 101 28                        # xz/coder.c:101:28
	movq	%r14, filters(%rcx)
	.loc	0 102 33 is_stmt 1              # xz/coder.c:102:33
	movq	%rbx, filters+8(%rcx)
	.loc	0 103 2                         # xz/coder.c:103:2
	incl	%eax
	movl	%eax, filters_count(%rip)
	.loc	0 109 16                        # xz/coder.c:109:16
	movl	$6, preset_number(%rip)
	.loc	0 111 2 epilogue_begin          # xz/coder.c:111:2
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp21:
	#DEBUG_VALUE: coder_add_filter:options <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp22:
	#DEBUG_VALUE: coder_add_filter:id <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 8
	retq
.Ltmp23:
.Lfunc_end3:
	.size	coder_add_filter, .Lfunc_end3-coder_add_filter
	.cfi_endproc
                                        # -- End function
	.globl	coder_set_compression_settings  # -- Begin function coder_set_compression_settings
	.p2align	4, 0x90
	.type	coder_set_compression_settings,@function
coder_set_compression_settings:         # @coder_set_compression_settings
.Lfunc_begin4:
	.loc	0 127 0                         # xz/coder.c:127:0
	.cfi_startproc
# %bb.0:                                # %entry
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
	movabsq	$4611686018427387905, %r15      # imm = 0x4000000000000001
.Ltmp24:
	.loc	0 131 6 prologue_end            # xz/coder.c:131:6
	movl	filters_count(%rip), %eax
.Ltmp25:
	.loc	0 162 6                         # xz/coder.c:162:6
	movl	opt_format(%rip), %ecx
.Ltmp26:
	.loc	0 131 20                        # xz/coder.c:131:20
	testl	%eax, %eax
.Ltmp27:
	.loc	0 131 6 is_stmt 0               # xz/coder.c:131:6
	jne	.LBB4_6
# %bb.1:                                # %if.then
.Ltmp28:
	.loc	0 136 18 is_stmt 1              # xz/coder.c:136:18
	cmpl	$3, %ecx
.Ltmp29:
	.loc	0 136 7 is_stmt 0               # xz/coder.c:136:7
	jne	.LBB4_3
# %bb.2:                                # %if.then2
.Ltmp30:
	.loc	0 139 4 is_stmt 1               # xz/coder.c:139:4
	movl	$.L.str.1, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	message@PLT
.Ltmp31:
	.loc	0 141 4                         # xz/coder.c:141:4
	movl	$.L.str.2, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	message@PLT
.Ltmp32:
.LBB4_3:                                # %if.end
	.loc	0 147 35                        # xz/coder.c:147:35
	movl	preset_number(%rip), %esi
	.loc	0 147 7 is_stmt 0               # xz/coder.c:147:7
	movl	$coder_set_compression_settings.opt_lzma, %edi
	callq	lzma_lzma_preset@PLT
.Ltmp33:
	testb	%al, %al
.Ltmp34:
	.loc	0 147 7                         # xz/coder.c:147:7
	je	.LBB4_5
# %bb.4:                                # %if.then3
.Ltmp35:
	.loc	0 148 4 is_stmt 1               # xz/coder.c:148:4
	callq	message_bug@PLT
.Ltmp36:
.LBB4_5:                                # %if.end4
	.loc	0 151 19                        # xz/coder.c:151:19
	movl	opt_format(%rip), %ecx
	.loc	0 151 30 is_stmt 0              # xz/coder.c:151:30
	cmpl	$2, %ecx
	movl	$33, %eax
	.loc	0 151 19                        # xz/coder.c:151:19
	cmoveq	%r15, %rax
	.loc	0 151 17                        # xz/coder.c:151:17
	movq	%rax, filters(%rip)
	.loc	0 153 22 is_stmt 1              # xz/coder.c:153:22
	movq	$coder_set_compression_settings.opt_lzma, filters+8(%rip)
	.loc	0 154 17                        # xz/coder.c:154:17
	movl	$1, filters_count(%rip)
	movl	$1, %eax
.Ltmp37:
.LBB4_6:                                # %if.end6
	.loc	0 158 2                         # xz/coder.c:158:2
	movl	%eax, %edx
	shlq	$4, %rdx
	.loc	0 158 28 is_stmt 0              # xz/coder.c:158:28
	movq	$-1, filters(%rdx)
.Ltmp38:
	.loc	0 162 17 is_stmt 1              # xz/coder.c:162:17
	cmpl	$2, %ecx
	.loc	0 162 32 is_stmt 0              # xz/coder.c:162:32
	jne	.LBB4_10
# %bb.7:                                # %land.lhs.true
	.loc	0 162 50                        # xz/coder.c:162:50
	cmpl	$1, %eax
	.loc	0 163 4 is_stmt 1               # xz/coder.c:163:4
	jne	.LBB4_9
# %bb.8:                                # %land.lhs.true
	cmpq	%r15, filters(%rip)
	je	.LBB4_15
.LBB4_9:                                # %if.then10
	.loc	0 164 3                         # xz/coder.c:164:3
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	message_fatal@PLT
.Ltmp39:
	.loc	0 169 6                         # xz/coder.c:169:6
	movl	opt_format(%rip), %ecx
	movl	filters_count(%rip), %eax
.LBB4_10:                               # %if.end11
	.loc	0 169 17 is_stmt 0              # xz/coder.c:169:17
	cmpl	$1, %ecx
	sete	%cl
	#DEBUG_VALUE: i <- 0
	testl	%eax, %eax
	setne	%dl
.Ltmp40:
	.loc	0 169 6                         # xz/coder.c:169:6
	andb	%cl, %dl
	cmpb	$1, %dl
	jne	.LBB4_15
# %bb.11:                               # %for.body.preheader
	#DEBUG_VALUE: i <- 0
	.loc	0 0 6                           # xz/coder.c:0:6
	movl	$filters, %ebx
	xorl	%r14d, %r14d
	jmp	.LBB4_12
	.p2align	4, 0x90
.LBB4_14:                               # %for.inc
                                        #   in Loop: Header=BB4_12 Depth=1
.Ltmp41:
	#DEBUG_VALUE: i <- $r14
	.loc	0 170 41 is_stmt 1              # xz/coder.c:170:41
	incq	%r14
.Ltmp42:
	#DEBUG_VALUE: i <- $r14
	.loc	0 170 26 is_stmt 0              # xz/coder.c:170:26
	movl	%eax, %ecx
	.loc	0 170 24                        # xz/coder.c:170:24
	addq	$16, %rbx
	cmpq	%rcx, %r14
.Ltmp43:
	.loc	0 170 3                         # xz/coder.c:170:3
	jae	.LBB4_15
.Ltmp44:
.LBB4_12:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: i <- $r14
	.loc	0 171 22 is_stmt 1              # xz/coder.c:171:22
	cmpq	%r15, (%rbx)
.Ltmp45:
	.loc	0 171 8 is_stmt 0               # xz/coder.c:171:8
	jne	.LBB4_14
.Ltmp46:
# %bb.13:                               # %if.then20
                                        #   in Loop: Header=BB4_12 Depth=1
	#DEBUG_VALUE: i <- $r14
	.loc	0 172 5 is_stmt 1               # xz/coder.c:172:5
	movl	$.L.str.4, %edi
	xorl	%eax, %eax
	callq	message_fatal@PLT
.Ltmp47:
	.loc	0 170 26                        # xz/coder.c:170:26
	movl	filters_count(%rip), %eax
	jmp	.LBB4_14
.Ltmp48:
.LBB4_15:                               # %if.end22
	.loc	0 176 2                         # xz/coder.c:176:2
	movl	$filters, %esi
	movl	$4, %edi
	callq	message_filters_show@PLT
.Ltmp49:
	.loc	0 181 54                        # xz/coder.c:181:54
	movl	opt_mode(%rip), %edi
	.loc	0 181 32 is_stmt 0              # xz/coder.c:181:32
	callq	hardware_memlimit_get@PLT
.Ltmp50:
	movq	%rax, %rbx
.Ltmp51:
	#DEBUG_VALUE: coder_set_compression_settings:memory_limit <- $rbx
	.loc	0 183 15 is_stmt 1              # xz/coder.c:183:15
	cmpl	$0, opt_mode(%rip)
.Ltmp52:
	.loc	0 183 6 is_stmt 0               # xz/coder.c:183:6
	je	.LBB4_16
.Ltmp53:
# %bb.17:                               # %if.else
	#DEBUG_VALUE: coder_set_compression_settings:memory_limit <- $rbx
	.loc	0 186 18 is_stmt 1              # xz/coder.c:186:18
	movl	$filters, %edi
	callq	lzma_raw_decoder_memusage@PLT
.Ltmp54:
	.loc	0 0 0 is_stmt 0                 # xz/coder.c:0:0
	movq	%rax, %r14
.Ltmp55:
	#DEBUG_VALUE: coder_set_compression_settings:memory_usage <- $r14
	#DEBUG_VALUE: coder_set_compression_settings:memory_usage <- $r14
	.loc	0 188 19 is_stmt 1              # xz/coder.c:188:19
	cmpq	$-1, %rax
.Ltmp56:
	.loc	0 188 6 is_stmt 0               # xz/coder.c:188:6
	jne	.LBB4_20
.Ltmp57:
.LBB4_19:                               # %if.then32
	#DEBUG_VALUE: coder_set_compression_settings:memory_limit <- $rbx
	#DEBUG_VALUE: coder_set_compression_settings:memory_usage <- $rax
	.loc	0 189 3 is_stmt 1               # xz/coder.c:189:3
	movl	$.L.str.5, %edi
	xorl	%eax, %eax
.Ltmp58:
	callq	message_fatal@PLT
.Ltmp59:
.LBB4_20:                               # %if.end33
	#DEBUG_VALUE: coder_set_compression_settings:memory_limit <- $rbx
	.loc	0 193 2                         # xz/coder.c:193:2
	movl	$4, %edi
	movq	%r14, %rsi
	callq	message_mem_needed@PLT
.Ltmp60:
	.loc	0 194 15                        # xz/coder.c:194:15
	cmpl	$0, opt_mode(%rip)
.Ltmp61:
	.loc	0 194 6 is_stmt 0               # xz/coder.c:194:6
	jne	.LBB4_23
.Ltmp62:
# %bb.21:                               # %if.then36
	#DEBUG_VALUE: coder_set_compression_settings:memory_limit <- $rbx
	.loc	0 195 27 is_stmt 1              # xz/coder.c:195:27
	movl	$filters, %edi
	callq	lzma_raw_decoder_memusage@PLT
.Ltmp63:
	#DEBUG_VALUE: decmem <- $rax
	.loc	0 196 14                        # xz/coder.c:196:14
	cmpq	$-1, %rax
.Ltmp64:
	.loc	0 196 7 is_stmt 0               # xz/coder.c:196:7
	je	.LBB4_23
.Ltmp65:
# %bb.22:                               # %if.then40
	#DEBUG_VALUE: coder_set_compression_settings:memory_limit <- $rbx
	#DEBUG_VALUE: decmem <- $rax
	.loc	0 199 7 is_stmt 1               # xz/coder.c:199:7
	movq	%rax, %rdi
	callq	round_up_to_mib@PLT
.Ltmp66:
	.loc	0 198 28                        # xz/coder.c:198:28
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	uint64_to_str@PLT
.Ltmp67:
	.loc	0 197 4                         # xz/coder.c:197:4
	movl	$.L.str.6, %esi
	movl	$4, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	message@PLT
.Ltmp68:
.LBB4_23:                               # %if.end44
	#DEBUG_VALUE: coder_set_compression_settings:memory_limit <- $rbx
	.loc	0 202 19                        # xz/coder.c:202:19
	cmpq	%rbx, %r14
.Ltmp69:
	.loc	0 202 6 is_stmt 0               # xz/coder.c:202:6
	jbe	.LBB4_41
.Ltmp70:
# %bb.24:                               # %if.then47
	#DEBUG_VALUE: coder_set_compression_settings:memory_limit <- $rbx
	.loc	0 206 24 is_stmt 1              # xz/coder.c:206:24
	cmpb	$1, opt_auto_adjust(%rip)
	jne	.LBB4_26
.Ltmp71:
# %bb.25:                               # %if.then47
	#DEBUG_VALUE: coder_set_compression_settings:memory_limit <- $rbx
	cmpl	$3, opt_format(%rip)
	jne	.LBB4_27
.Ltmp72:
.LBB4_26:                               # %if.then51
	#DEBUG_VALUE: coder_set_compression_settings:memory_limit <- $rbx
	#DEBUG_VALUE: memlimit_too_small:memory_usage <- $r14
	.loc	0 118 2                         # xz/coder.c:118:2
	movl	$.L.str.8, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	message@PLT
.Ltmp73:
	.loc	0 120 2                         # xz/coder.c:120:2
	movl	$1, %edi
	movq	%r14, %rsi
	callq	message_mem_needed@PLT
.Ltmp74:
	.loc	0 121 2                         # xz/coder.c:121:2
	movl	$1, %edi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	tuklib_exit@PLT
.Ltmp75:
.LBB4_27:                               # %while.cond.preheader
	#DEBUG_VALUE: coder_set_compression_settings:memory_limit <- $rbx
	.loc	0 0 2 is_stmt 0                 # xz/coder.c:0:2
	movl	$filters, %r12d
	jmp	.LBB4_28
.Ltmp76:
	.p2align	4, 0x90
.LBB4_38:                               # %if.then66
                                        #   in Loop: Header=BB4_28 Depth=1
	#DEBUG_VALUE: coder_set_compression_settings:memory_limit <- $rbx
	#DEBUG_VALUE: memlimit_too_small:memory_usage <- $r14
	.loc	0 118 2 is_stmt 1               # xz/coder.c:118:2
	movl	$.L.str.8, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	message@PLT
.Ltmp77:
	.loc	0 120 2                         # xz/coder.c:120:2
	movl	$1, %edi
	movq	%r14, %rsi
	callq	message_mem_needed@PLT
.Ltmp78:
	.loc	0 121 2                         # xz/coder.c:121:2
	movl	$1, %edi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	tuklib_exit@PLT
.Ltmp79:
.LBB4_39:                               # %if.end67
                                        #   in Loop: Header=BB4_28 Depth=1
	#DEBUG_VALUE: coder_set_compression_settings:memory_limit <- $rbx
	#DEBUG_VALUE: i <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_minus, DW_OP_consts 16, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] undef
	.loc	0 215 3                         # xz/coder.c:215:3
	addq	$16, %r12
.Ltmp80:
.LBB4_28:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: coder_set_compression_settings:memory_limit <- $rbx
	#DEBUG_VALUE: i <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_minus, DW_OP_consts 16, DW_OP_div, DW_OP_stack_value] undef
	.loc	0 215 21 is_stmt 0              # xz/coder.c:215:21
	movq	(%r12), %rax
	.loc	0 216 5 is_stmt 1               # xz/coder.c:216:5
	cmpq	$-1, %rax
	je	.LBB4_38
.Ltmp81:
# %bb.29:                               # %while.cond
                                        #   in Loop: Header=BB4_28 Depth=1
	#DEBUG_VALUE: coder_set_compression_settings:memory_limit <- $rbx
	cmpq	$33, %rax
	je	.LBB4_31
.Ltmp82:
# %bb.30:                               # %while.cond
                                        #   in Loop: Header=BB4_28 Depth=1
	#DEBUG_VALUE: coder_set_compression_settings:memory_limit <- $rbx
	cmpq	%r15, %rax
	jne	.LBB4_39
.Ltmp83:
.LBB4_31:                               # %while.end
	#DEBUG_VALUE: coder_set_compression_settings:memory_limit <- $rbx
	.loc	0 225 39                        # xz/coder.c:225:39
	movq	8(%r12), %r13
.Ltmp84:
	#DEBUG_VALUE: opt <- $r13
	.loc	0 226 40                        # xz/coder.c:226:40
	movl	(%r13), %r15d
.Ltmp85:
	#DEBUG_VALUE: orig_dict_size <- $r15d
	.loc	0 227 18                        # xz/coder.c:227:18
	movl	%r15d, %eax
	andl	$-1048576, %eax                 # imm = 0xFFF00000
	movl	$-1048576, %ebp                 # imm = 0xFFF00000
	.loc	0 0 0 is_stmt 0                 # xz/coder.c:0:0
	movl	%eax, (%r13)
.Ltmp86:
	#DEBUG_VALUE: coder_set_compression_settings:memory_usage <- $r14
	.loc	0 236 23 is_stmt 1              # xz/coder.c:236:23
	cmpl	$1048575, %eax                  # imm = 0xFFFFF
.Ltmp87:
	.loc	0 236 8 is_stmt 0               # xz/coder.c:236:8
	ja	.LBB4_34
.Ltmp88:
	.p2align	4, 0x90
.LBB4_33:                               # %if.then76
	#DEBUG_VALUE: coder_set_compression_settings:memory_limit <- $rbx
	#DEBUG_VALUE: coder_set_compression_settings:memory_usage <- $r14
	#DEBUG_VALUE: opt <- $r13
	#DEBUG_VALUE: orig_dict_size <- $r15d
	#DEBUG_VALUE: memlimit_too_small:memory_usage <- $r14
	.loc	0 118 2 is_stmt 1               # xz/coder.c:118:2
	movl	$.L.str.8, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	message@PLT
.Ltmp89:
	.loc	0 120 2                         # xz/coder.c:120:2
	movl	$1, %edi
	movq	%r14, %rsi
	callq	message_mem_needed@PLT
.Ltmp90:
	.loc	0 121 2                         # xz/coder.c:121:2
	movl	$1, %edi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	tuklib_exit@PLT
.Ltmp91:
.LBB4_34:                               # %if.end77
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: coder_set_compression_settings:memory_limit <- $rbx
	#DEBUG_VALUE: coder_set_compression_settings:memory_usage <- $r14
	#DEBUG_VALUE: opt <- $r13
	#DEBUG_VALUE: orig_dict_size <- $r15d
	.loc	0 239 19                        # xz/coder.c:239:19
	movl	$filters, %edi
	callq	lzma_raw_encoder_memusage@PLT
.Ltmp92:
	movq	%rax, %r14
.Ltmp93:
	#DEBUG_VALUE: coder_set_compression_settings:memory_usage <- $r14
	.loc	0 240 21                        # xz/coder.c:240:21
	cmpq	$-1, %rax
.Ltmp94:
	.loc	0 240 8 is_stmt 0               # xz/coder.c:240:8
	jne	.LBB4_36
.Ltmp95:
# %bb.35:                               # %if.then81
                                        #   in Loop: Header=BB4_34 Depth=1
	#DEBUG_VALUE: coder_set_compression_settings:memory_limit <- $rbx
	#DEBUG_VALUE: coder_set_compression_settings:memory_usage <- $r14
	#DEBUG_VALUE: opt <- $r13
	#DEBUG_VALUE: orig_dict_size <- $r15d
	.loc	0 241 5 is_stmt 1               # xz/coder.c:241:5
	callq	message_bug@PLT
.Ltmp96:
.LBB4_36:                               # %if.end82
                                        #   in Loop: Header=BB4_34 Depth=1
	#DEBUG_VALUE: coder_set_compression_settings:memory_limit <- $rbx
	#DEBUG_VALUE: coder_set_compression_settings:memory_usage <- $r14
	#DEBUG_VALUE: opt <- $r13
	#DEBUG_VALUE: orig_dict_size <- $r15d
	.loc	0 244 21                        # xz/coder.c:244:21
	cmpq	%rbx, %r14
.Ltmp97:
	.loc	0 244 8 is_stmt 0               # xz/coder.c:244:8
	jbe	.LBB4_40
.Ltmp98:
# %bb.37:                               # %if.end86
                                        #   in Loop: Header=BB4_34 Depth=1
	#DEBUG_VALUE: coder_set_compression_settings:memory_limit <- $rbx
	#DEBUG_VALUE: coder_set_compression_settings:memory_usage <- $r14
	#DEBUG_VALUE: opt <- $r13
	#DEBUG_VALUE: orig_dict_size <- $r15d
	.loc	0 0 8                           # xz/coder.c:0:8
	movl	(%r13), %eax
	.loc	0 250 19 is_stmt 1              # xz/coder.c:250:19
	addl	%ebp, %eax
.Ltmp99:
	.loc	0 0 0 is_stmt 0                 # xz/coder.c:0:0
	movl	%eax, (%r13)
	#DEBUG_VALUE: coder_set_compression_settings:memory_usage <- $r14
.Ltmp100:
	.loc	0 236 23 is_stmt 1              # xz/coder.c:236:23
	cmpl	$1048575, %eax                  # imm = 0xFFFFF
.Ltmp101:
	.loc	0 236 8 is_stmt 0               # xz/coder.c:236:8
	jbe	.LBB4_33
	jmp	.LBB4_34
.Ltmp102:
.LBB4_40:                               # %while.end88
	#DEBUG_VALUE: coder_set_compression_settings:memory_limit <- $rbx
	#DEBUG_VALUE: coder_set_compression_settings:memory_usage <- $r14
	#DEBUG_VALUE: opt <- $r13
	#DEBUG_VALUE: orig_dict_size <- $r15d
	.loc	0 257 19 is_stmt 1              # xz/coder.c:257:19
	xorl	%ebp, %ebp
	cmpq	$33, (%r12)
	sete	%bpl
	.loc	0 257 5 is_stmt 0               # xz/coder.c:257:5
	addl	$49, %ebp
	.loc	0 259 34 is_stmt 1              # xz/coder.c:259:34
	shrl	$20, %r15d
.Ltmp103:
	.loc	0 259 5 is_stmt 0               # xz/coder.c:259:5
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	uint64_to_str@PLT
.Ltmp104:
	movq	%rax, %r14
.Ltmp105:
	.loc	0 260 24 is_stmt 1              # xz/coder.c:260:24
	movl	(%r13), %edi
	.loc	0 260 34 is_stmt 0              # xz/coder.c:260:34
	shrl	$20, %edi
	.loc	0 260 5                         # xz/coder.c:260:5
	movl	$1, %esi
	callq	uint64_to_str@PLT
.Ltmp106:
	movq	%rax, %r15
	.loc	0 261 19 is_stmt 1              # xz/coder.c:261:19
	movq	%rbx, %rdi
	callq	round_up_to_mib@PLT
.Ltmp107:
	.loc	0 261 5 is_stmt 0               # xz/coder.c:261:5
	movq	%rax, %rdi
	movl	$2, %esi
	callq	uint64_to_str@PLT
.Ltmp108:
	.loc	0 254 3 is_stmt 1               # xz/coder.c:254:3
	movl	$.L.str.7, %esi
	movl	$2, %edi
	movl	%ebp, %edx
	movq	%r14, %rcx
	movq	%r15, %r8
	movq	%rax, %r9
	xorl	%eax, %eax
	callq	message@PLT
.Ltmp109:
.LBB4_41:                               # %if.end102
	#DEBUG_VALUE: coder_set_compression_settings:memory_limit <- $rbx
	.loc	0 277 6                         # xz/coder.c:277:6
	cmpb	$0, check_default(%rip)
	jne	.LBB4_44
.Ltmp110:
# %bb.42:                               # %if.then104
	#DEBUG_VALUE: coder_set_compression_settings:memory_limit <- $rbx
	.loc	0 281 9                         # xz/coder.c:281:9
	movl	$4, check(%rip)
.Ltmp111:
	.loc	0 282 8                         # xz/coder.c:282:8
	movl	$4, %edi
	callq	lzma_check_is_supported@PLT
.Ltmp112:
	testb	%al, %al
.Ltmp113:
	.loc	0 282 7 is_stmt 0               # xz/coder.c:282:7
	jne	.LBB4_44
.Ltmp114:
# %bb.43:                               # %if.then107
	#DEBUG_VALUE: coder_set_compression_settings:memory_limit <- $rbx
	.loc	0 283 10 is_stmt 1              # xz/coder.c:283:10
	movl	$1, check(%rip)
.Ltmp115:
.LBB4_44:                               # %if.end109
	#DEBUG_VALUE: coder_set_compression_settings:memory_limit <- $rbx
	.loc	0 287 1 epilogue_begin          # xz/coder.c:287:1
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
.Ltmp116:
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
.LBB4_16:                               # %if.then26
	.cfi_def_cfa_offset 64
.Ltmp117:
	#DEBUG_VALUE: coder_set_compression_settings:memory_limit <- $rbx
	.loc	0 184 18                        # xz/coder.c:184:18
	movl	$filters, %edi
	callq	lzma_raw_encoder_memusage@PLT
.Ltmp118:
	.loc	0 0 0 is_stmt 0                 # xz/coder.c:0:0
	movq	%rax, %r14
.Ltmp119:
	#DEBUG_VALUE: coder_set_compression_settings:memory_usage <- undef
	#DEBUG_VALUE: coder_set_compression_settings:memory_usage <- $r14
	.loc	0 188 19 is_stmt 1              # xz/coder.c:188:19
	cmpq	$-1, %rax
	jne	.LBB4_20
	jmp	.LBB4_19
.Ltmp120:
.Lfunc_end4:
	.size	coder_set_compression_settings, .Lfunc_end4-coder_set_compression_settings
	.cfi_endproc
	.file	14 "xz" "hardware.h" md5 0x7ed07700a75387ea633d6b4d26a671b7
	.file	15 "xz" "util.h" md5 0x36136e1fc433f9fd7b2b728f8484a043
	.file	16 "common" "tuklib_exit.h" md5 0x09538a5ffe493e3e268cd00199828e96
                                        # -- End function
	.globl	coder_run                       # -- Begin function coder_run
	.p2align	4, 0x90
	.type	coder_run,@function
coder_run:                              # @coder_run
.Lfunc_begin5:
	.loc	0 621 0                         # xz/coder.c:621:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: coder_run:filename <- $rdi
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
	movq	%rdi, %rbx
.Ltmp121:
	.loc	0 623 2 prologue_end            # xz/coder.c:623:2
	callq	message_filename@PLT
.Ltmp122:
	#DEBUG_VALUE: coder_run:filename <- $rbx
	.loc	0 626 20                        # xz/coder.c:626:20
	movq	%rbx, %rdi
	callq	io_open_src@PLT
.Ltmp123:
	#DEBUG_VALUE: coder_run:pair <- $rax
	.loc	0 627 11                        # xz/coder.c:627:11
	testq	%rax, %rax
.Ltmp124:
	.loc	0 627 6 is_stmt 0               # xz/coder.c:627:6
	je	.LBB5_9
.Ltmp125:
# %bb.1:                                # %if.end
	#DEBUG_VALUE: coder_run:filename <- $rbx
	#DEBUG_VALUE: coder_run:pair <- $rax
	.loc	0 0 0                           # xz/coder.c:0:0
	movq	%rax, %rbx
.Ltmp126:
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:success <- 0
	.loc	0 635 15 is_stmt 1              # xz/coder.c:635:15
	movq	$in_buf, strm(%rip)
	.loc	0 636 18                        # xz/coder.c:636:18
	movl	$in_buf, %esi
	movl	$8192, %edx                     # imm = 0x2000
	movq	%rax, %rdi
	callq	io_read@PLT
.Ltmp127:
	#DEBUG_VALUE: coder_run:pair <- $rbx
	.loc	0 636 16 is_stmt 0              # xz/coder.c:636:16
	movq	%rax, strm+8(%rip)
.Ltmp128:
	.loc	0 638 20 is_stmt 1              # xz/coder.c:638:20
	cmpq	$-1, %rax
.Ltmp129:
	.loc	0 638 6 is_stmt 0               # xz/coder.c:638:6
	je	.LBB5_10
.Ltmp130:
# %bb.2:                                # %if.then3
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: coder_init:pair <- $rbx
	#DEBUG_VALUE: coder_init:ret <- 11
	.loc	0 359 6 is_stmt 1               # xz/coder.c:359:6
	movl	opt_mode(%rip), %edx
	.loc	0 0 0 is_stmt 0                 # xz/coder.c:0:0
	movl	opt_format(%rip), %ecx
	.loc	0 359 15                        # xz/coder.c:359:15
	testl	%edx, %edx
.Ltmp131:
	.loc	0 359 6                         # xz/coder.c:359:6
	je	.LBB5_11
.Ltmp132:
# %bb.3:                                # %if.else.i
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: coder_init:pair <- $rbx
	#DEBUG_VALUE: coder_init:ret <- 11
	#DEBUG_VALUE: flags <- 10
	#DEBUG_VALUE: init_format <- 0
	.loc	0 386 3 is_stmt 1               # xz/coder.c:386:3
	cmpl	$3, %ecx
	ja	.LBB5_18
.Ltmp133:
# %bb.4:                                # %if.else.i
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: coder_init:pair <- $rbx
	#DEBUG_VALUE: coder_init:ret <- 11
	#DEBUG_VALUE: flags <- 10
	#DEBUG_VALUE: init_format <- 0
	movl	%ecx, %ecx
	jmpq	*.LJTI5_0(,%rcx,8)
.Ltmp134:
.LBB5_5:                                # %sw.bb6.i
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: coder_init:pair <- $rbx
	#DEBUG_VALUE: coder_init:ret <- 11
	#DEBUG_VALUE: flags <- 10
	#DEBUG_VALUE: init_format <- 0
	.loc	0 296 23                        # xz/coder.c:296:23
	cmpq	$6, %rax
	.loc	0 297 4                         # xz/coder.c:297:4
	jb	.LBB5_7
.Ltmp135:
# %bb.6:                                # %is_format_xz.exit.i
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: coder_init:pair <- $rbx
	#DEBUG_VALUE: coder_init:ret <- 11
	#DEBUG_VALUE: flags <- 10
	#DEBUG_VALUE: init_format <- 0
	.loc	0 0 4 is_stmt 0                 # xz/coder.c:0:4
	movl	$1484404733, %eax               # imm = 0x587A37FD
	.loc	0 297 7                         # xz/coder.c:297:7
	xorl	in_buf(%rip), %eax
	movzwl	in_buf+4(%rip), %ecx
	xorl	$90, %ecx
	.loc	0 297 47                        # xz/coder.c:297:47
	orl	%eax, %ecx
.Ltmp136:
	.loc	0 388 8 is_stmt 1               # xz/coder.c:388:8
	je	.LBB5_25
.Ltmp137:
.LBB5_7:                                # %sw.bb17.i
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: coder_init:pair <- $rbx
	#DEBUG_VALUE: coder_init:ret <- 11
	#DEBUG_VALUE: flags <- 10
	#DEBUG_VALUE: init_format <- 0
	.loc	0 0 0 is_stmt 0                 # xz/coder.c:0:0
	callq	is_format_lzma
.Ltmp138:
	testb	%al, %al
	je	.LBB5_17
.Ltmp139:
# %bb.8:                                # %sw.bb32.i
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: coder_init:pair <- $rbx
	#DEBUG_VALUE: coder_init:ret <- 11
	#DEBUG_VALUE: flags <- 10
	#DEBUG_VALUE: init_format <- 0
	#DEBUG_VALUE: init_format <- undef
	.loc	0 431 6 is_stmt 1               # xz/coder.c:431:6
	movl	$1, %edi
	callq	hardware_memlimit_get@PLT
.Ltmp140:
	.loc	0 430 10                        # xz/coder.c:430:10
	movl	$strm, %edi
	movq	%rax, %rsi
	callq	lzma_alone_decoder@PLT
.Ltmp141:
	.loc	0 0 0 is_stmt 0                 # xz/coder.c:0:0
	movl	%eax, %ebp
.Ltmp142:
	#DEBUG_VALUE: coder_init:ret <- undef
	#DEBUG_VALUE: coder_init:ret <- $ebp
	.loc	0 446 11 is_stmt 1              # xz/coder.c:446:11
	testl	%eax, %eax
	jne	.LBB5_27
	jmp	.LBB5_26
.Ltmp143:
.LBB5_9:                                # %cleanup
	#DEBUG_VALUE: coder_run:filename <- $rbx
	#DEBUG_VALUE: coder_run:pair <- $rax
	.loc	0 677 1 epilogue_begin          # xz/coder.c:677:1
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
.Ltmp144:
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
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
.Ltmp145:
.LBB5_11:                               # %if.then.i
	.cfi_def_cfa_offset 64
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: coder_init:pair <- $rbx
	#DEBUG_VALUE: coder_init:ret <- 11
	.loc	0 360 3                         # xz/coder.c:360:3
	cmpl	$3, %ecx
	je	.LBB5_24
.Ltmp146:
# %bb.12:                               # %if.then.i
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: coder_init:pair <- $rbx
	#DEBUG_VALUE: coder_init:ret <- 11
	cmpl	$2, %ecx
	je	.LBB5_23
.Ltmp147:
# %bb.13:                               # %if.then.i
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: coder_init:pair <- $rbx
	#DEBUG_VALUE: coder_init:ret <- 11
	.loc	0 0 3 is_stmt 0                 # xz/coder.c:0:3
	movl	$11, %ebp
	.loc	0 360 3                         # xz/coder.c:360:3
	cmpl	$1, %ecx
	jne	.LBB5_27
.Ltmp148:
# %bb.14:                               # %sw.bb1.i
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: coder_init:pair <- $rbx
	#DEBUG_VALUE: coder_init:ret <- 11
	.loc	0 367 46 is_stmt 1              # xz/coder.c:367:46
	movl	check(%rip), %edx
	.loc	0 367 10 is_stmt 0              # xz/coder.c:367:10
	movl	$strm, %edi
	movl	$filters, %esi
	callq	lzma_stream_encoder@PLT
.Ltmp149:
	.loc	0 0 0                           # xz/coder.c:0:0
	movl	%eax, %ebp
.Ltmp150:
	#DEBUG_VALUE: coder_init:ret <- undef
	#DEBUG_VALUE: coder_init:ret <- $ebp
	.loc	0 453 10 is_stmt 1              # xz/coder.c:453:10
	testl	%eax, %eax
.Ltmp151:
	.loc	0 453 6 is_stmt 0               # xz/coder.c:453:6
	jne	.LBB5_27
	jmp	.LBB5_29
.Ltmp152:
.LBB5_15:                               # %sw.bb13.i
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: coder_init:pair <- $rbx
	#DEBUG_VALUE: coder_init:ret <- 11
	#DEBUG_VALUE: flags <- 10
	#DEBUG_VALUE: init_format <- 0
	.loc	0 296 23 is_stmt 1              # xz/coder.c:296:23
	cmpq	$6, %rax
	.loc	0 297 4                         # xz/coder.c:297:4
	jb	.LBB5_17
.Ltmp153:
# %bb.16:                               # %is_format_xz.exit65.i
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: coder_init:pair <- $rbx
	#DEBUG_VALUE: coder_init:ret <- 11
	#DEBUG_VALUE: flags <- 10
	#DEBUG_VALUE: init_format <- 0
	.loc	0 0 4 is_stmt 0                 # xz/coder.c:0:4
	movl	$1484404733, %eax               # imm = 0x587A37FD
	.loc	0 297 7                         # xz/coder.c:297:7
	xorl	in_buf(%rip), %eax
	movzwl	in_buf+4(%rip), %ecx
	xorl	$90, %ecx
	.loc	0 297 47                        # xz/coder.c:297:47
	orl	%eax, %ecx
.Ltmp154:
	.loc	0 395 8 is_stmt 1               # xz/coder.c:395:8
	je	.LBB5_25
.Ltmp155:
.LBB5_17:                               # %sw.bb23thread-pre-split.i
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: coder_init:pair <- $rbx
	#DEBUG_VALUE: coder_init:ret <- 11
	#DEBUG_VALUE: flags <- 10
	#DEBUG_VALUE: init_format <- 0
	.loc	0 416 8                         # xz/coder.c:416:8
	movl	opt_mode(%rip), %edx
.Ltmp156:
.LBB5_18:                               # %sw.bb23.i
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: coder_init:pair <- $rbx
	#DEBUG_VALUE: coder_init:ret <- 11
	#DEBUG_VALUE: flags <- 10
	#DEBUG_VALUE: init_format <- 0
	#DEBUG_VALUE: init_format <- undef
	.loc	0 0 8 is_stmt 0                 # xz/coder.c:0:8
	movl	$7, %ebp
	.loc	0 416 17                        # xz/coder.c:416:17
	cmpl	$1, %edx
	.loc	0 417 6 is_stmt 1               # xz/coder.c:417:6
	jne	.LBB5_27
.Ltmp157:
# %bb.19:                               # %land.lhs.true.i
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: coder_init:pair <- $rbx
	#DEBUG_VALUE: coder_init:ret <- 11
	#DEBUG_VALUE: flags <- 10
	.loc	0 417 9 is_stmt 0               # xz/coder.c:417:9
	movq	opt_stdout@GOTPCREL(%rip), %rax
	.loc	0 417 20                        # xz/coder.c:417:20
	cmpb	$1, (%rax)
	jne	.LBB5_27
.Ltmp158:
# %bb.20:                               # %land.lhs.true25.i
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: coder_init:pair <- $rbx
	#DEBUG_VALUE: coder_init:ret <- 11
	#DEBUG_VALUE: flags <- 10
	.loc	0 417 23                        # xz/coder.c:417:23
	movq	opt_force@GOTPCREL(%rip), %rax
.Ltmp159:
	.loc	0 416 8 is_stmt 1               # xz/coder.c:416:8
	cmpb	$0, (%rax)
	je	.LBB5_27
.Ltmp160:
# %bb.21:
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: coder_init:pair <- $rbx
	#DEBUG_VALUE: coder_init:ret <- 11
	#DEBUG_VALUE: flags <- 10
	.loc	0 0 8 is_stmt 0                 # xz/coder.c:0:8
	xorl	%ebp, %ebp
	jmp	.LBB5_30
.Ltmp161:
.LBB5_22:                               # %sw.bb35.i
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: coder_init:pair <- $rbx
	#DEBUG_VALUE: coder_init:ret <- 11
	#DEBUG_VALUE: flags <- 10
	#DEBUG_VALUE: init_format <- 0
	#DEBUG_VALUE: init_format <- 3
	.loc	0 438 10 is_stmt 1              # xz/coder.c:438:10
	movl	$strm, %edi
	movl	$filters, %esi
	callq	lzma_raw_decoder@PLT
.Ltmp162:
	.loc	0 0 0 is_stmt 0                 # xz/coder.c:0:0
	movl	%eax, %ebp
.Ltmp163:
	#DEBUG_VALUE: coder_init:ret <- undef
	#DEBUG_VALUE: coder_init:ret <- $ebp
	.loc	0 453 10 is_stmt 1              # xz/coder.c:453:10
	testl	%eax, %eax
.Ltmp164:
	.loc	0 453 6 is_stmt 0               # xz/coder.c:453:6
	jne	.LBB5_27
	jmp	.LBB5_29
.Ltmp165:
.LBB5_23:                               # %sw.bb2.i
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: coder_init:pair <- $rbx
	#DEBUG_VALUE: coder_init:ret <- 11
	.loc	0 371 47 is_stmt 1              # xz/coder.c:371:47
	movq	filters+8(%rip), %rsi
	.loc	0 371 10 is_stmt 0              # xz/coder.c:371:10
	movl	$strm, %edi
	callq	lzma_alone_encoder@PLT
.Ltmp166:
	.loc	0 0 0                           # xz/coder.c:0:0
	movl	%eax, %ebp
.Ltmp167:
	#DEBUG_VALUE: coder_init:ret <- undef
	#DEBUG_VALUE: coder_init:ret <- $ebp
	.loc	0 453 10 is_stmt 1              # xz/coder.c:453:10
	testl	%eax, %eax
.Ltmp168:
	.loc	0 453 6 is_stmt 0               # xz/coder.c:453:6
	jne	.LBB5_27
	jmp	.LBB5_29
.Ltmp169:
.LBB5_24:                               # %sw.bb4.i
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: coder_init:pair <- $rbx
	#DEBUG_VALUE: coder_init:ret <- 11
	.loc	0 375 10 is_stmt 1              # xz/coder.c:375:10
	movl	$strm, %edi
	movl	$filters, %esi
	callq	lzma_raw_encoder@PLT
.Ltmp170:
	.loc	0 0 0 is_stmt 0                 # xz/coder.c:0:0
	movl	%eax, %ebp
.Ltmp171:
	#DEBUG_VALUE: coder_init:ret <- undef
	#DEBUG_VALUE: coder_init:ret <- $ebp
	.loc	0 453 10 is_stmt 1              # xz/coder.c:453:10
	testl	%eax, %eax
.Ltmp172:
	.loc	0 453 6 is_stmt 0               # xz/coder.c:453:6
	jne	.LBB5_27
	jmp	.LBB5_29
.Ltmp173:
.LBB5_25:                               # %sw.bb29.i
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: coder_init:pair <- $rbx
	#DEBUG_VALUE: coder_init:ret <- 11
	#DEBUG_VALUE: flags <- 10
	#DEBUG_VALUE: init_format <- 0
	#DEBUG_VALUE: init_format <- undef
	.loc	0 425 6 is_stmt 1               # xz/coder.c:425:6
	movl	$1, %edi
	callq	hardware_memlimit_get@PLT
.Ltmp174:
	.loc	0 424 10                        # xz/coder.c:424:10
	movl	$strm, %edi
	movq	%rax, %rsi
	movl	$10, %edx
	callq	lzma_stream_decoder@PLT
.Ltmp175:
	.loc	0 0 0 is_stmt 0                 # xz/coder.c:0:0
	movl	%eax, %ebp
.Ltmp176:
	#DEBUG_VALUE: coder_init:ret <- $ebp
	#DEBUG_VALUE: coder_init:ret <- $ebp
	.loc	0 446 11 is_stmt 1              # xz/coder.c:446:11
	testl	%eax, %eax
	.loc	0 446 22 is_stmt 0              # xz/coder.c:446:22
	jne	.LBB5_27
.Ltmp177:
.LBB5_26:                               # %if.then41.i
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: coder_init:pair <- $rbx
	#DEBUG_VALUE: coder_init:ret <- $eax
	#DEBUG_VALUE: flags <- 10
	.loc	0 448 19 is_stmt 1              # xz/coder.c:448:19
	xorps	%xmm0, %xmm0
	movups	%xmm0, strm+24(%rip)
	.loc	0 449 10                        # xz/coder.c:449:10
	movl	$strm, %edi
	xorl	%esi, %esi
	callq	lzma_code@PLT
.Ltmp178:
	.loc	0 0 0 is_stmt 0                 # xz/coder.c:0:0
	movl	%eax, %ebp
.Ltmp179:
	#DEBUG_VALUE: coder_init:ret <- $ebp
	#DEBUG_VALUE: coder_init:ret <- $ebp
	.loc	0 453 10 is_stmt 1              # xz/coder.c:453:10
	testl	%eax, %eax
.Ltmp180:
	.loc	0 453 6 is_stmt 0               # xz/coder.c:453:6
	je	.LBB5_29
.Ltmp181:
.LBB5_27:                               # %if.then47.i
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: coder_init:pair <- $rbx
	.loc	0 454 33 is_stmt 1              # xz/coder.c:454:33
	movq	(%rbx), %r14
	.loc	0 454 43 is_stmt 0              # xz/coder.c:454:43
	movl	%ebp, %edi
	callq	message_strm@PLT
.Ltmp182:
	.loc	0 0 43                          # xz/coder.c:0:43
	xorl	%r13d, %r13d
	.loc	0 454 3                         # xz/coder.c:454:3
	movl	$.L.str.9, %edi
	movq	%r14, %rsi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	message_error@PLT
.Ltmp183:
	.loc	0 455 11 is_stmt 1              # xz/coder.c:455:11
	cmpl	$6, %ebp
.Ltmp184:
	.loc	0 455 7 is_stmt 0               # xz/coder.c:455:7
	jne	.LBB5_61
.Ltmp185:
# %bb.28:                               # %if.then50.i
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: coder_init:pair <- $rbx
	.loc	0 456 32 is_stmt 1              # xz/coder.c:456:32
	movl	$strm, %edi
	callq	lzma_memusage@PLT
.Ltmp186:
	.loc	0 456 4 is_stmt 0               # xz/coder.c:456:4
	movl	$1, %edi
	movq	%rax, %rsi
	callq	message_mem_needed@PLT
.Ltmp187:
	.loc	0 0 4                           # xz/coder.c:0:4
	xorl	%r13d, %r13d
.Ltmp188:
	.loc	0 650 8 is_stmt 1               # xz/coder.c:650:8
	jmp	.LBB5_61
.Ltmp189:
.LBB5_29:
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: coder_init:pair <- $rbx
	#DEBUG_VALUE: coder_init:ret <- $eax
	.loc	0 0 8 is_stmt 0                 # xz/coder.c:0:8
	movb	$1, %bpl
.Ltmp190:
.LBB5_30:                               # %coder_init.exit
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: init_ret <- undef
	movq	user_abort@GOTPCREL(%rip), %r12
	cmpl	$0, (%r12)
	.loc	0 647 36 is_stmt 1              # xz/coder.c:647:36
	je	.LBB5_32
.Ltmp191:
.LBB5_10:
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	.loc	0 0 36 is_stmt 0                # xz/coder.c:0:36
	xorl	%r13d, %r13d
.Ltmp192:
.LBB5_61:                               # %if.end18
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- undef
	.loc	0 674 2 is_stmt 1               # xz/coder.c:674:2
	movzbl	%r13b, %esi
	movq	%rbx, %rdi
	.loc	0 674 2 epilogue_begin is_stmt 0 # xz/coder.c:674:2
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
.Ltmp193:
	#DEBUG_VALUE: coder_run:pair <- $rdi
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
.Ltmp194:
	jmp	io_close@PLT                    # TAILCALL
.Ltmp195:
.LBB5_32:                               # %if.then6
	.cfi_def_cfa_offset 64
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	.loc	0 650 17 is_stmt 1              # xz/coder.c:650:17
	cmpl	$2, opt_mode(%rip)
	.loc	0 650 30 is_stmt 0              # xz/coder.c:650:30
	je	.LBB5_35
.Ltmp196:
# %bb.33:                               # %lor.lhs.false
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	.loc	0 650 34                        # xz/coder.c:650:34
	movq	%rbx, %rdi
	callq	io_open_dest@PLT
.Ltmp197:
	.loc	0 650 8                         # xz/coder.c:650:8
	testb	%al, %al
	jne	.LBB5_10
.Ltmp198:
.LBB5_35:                               # %if.then9
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: in_size <- 0
	.loc	0 659 5 is_stmt 1               # xz/coder.c:659:5
	movl	$strm, %edi
	xorl	%esi, %esi
	callq	message_progress_start@PLT
.Ltmp199:
	.loc	0 662 9                         # xz/coder.c:662:9
	testb	%bpl, %bpl
	je	.LBB5_54
.Ltmp200:
# %bb.36:                               # %if.then11
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: in_size <- 0
	#DEBUG_VALUE: coder_normal:pair <- $rbx
	.loc	0 474 29                        # xz/coder.c:474:29
	movzbl	24(%rbx), %eax
.Ltmp201:
	#DEBUG_VALUE: coder_normal:action <- undef
	#DEBUG_VALUE: coder_normal:success <- 0
	.loc	0 481 16                        # xz/coder.c:481:16
	movq	$out_buf, strm+24(%rip)
	.loc	0 482 17                        # xz/coder.c:482:17
	movq	$8192, strm+32(%rip)            # imm = 0x2000
	.loc	0 484 9                         # xz/coder.c:484:9
	cmpl	$0, (%r12)
	.loc	0 484 2 is_stmt 0               # xz/coder.c:484:2
	jne	.LBB5_59
.Ltmp202:
# %bb.37:                               # %while.body.preheader.i
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: in_size <- 0
	#DEBUG_VALUE: coder_normal:pair <- $rbx
	#DEBUG_VALUE: coder_normal:success <- 0
	.loc	0 474 23 is_stmt 1              # xz/coder.c:474:23
	movzbl	%al, %eax
	leal	(%rax,%rax,2), %ebp
.Ltmp203:
	#DEBUG_VALUE: coder_normal:action <- $ebp
	.loc	0 0 23 is_stmt 0                # xz/coder.c:0:23
	movl	$3, %r13d
	jmp	.LBB5_40
.Ltmp204:
.LBB5_38:                               # %if.end57.i
                                        #   in Loop: Header=BB5_40 Depth=1
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: in_size <- 0
	#DEBUG_VALUE: coder_normal:pair <- $rbx
	#DEBUG_VALUE: coder_normal:action <- $ebp
	#DEBUG_VALUE: coder_normal:success <- 0
	#DEBUG_VALUE: coder_normal:ret <- $r14d
	.loc	0 566 37 is_stmt 1              # xz/coder.c:566:37
	movq	(%rbx), %r15
	.loc	0 567 7                         # xz/coder.c:567:7
	movl	%r14d, %edi
	callq	message_strm@PLT
.Ltmp205:
	.loc	0 566 5                         # xz/coder.c:566:5
	movl	$.L.str.9, %edi
	movq	%r15, %rsi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	message_warning@PLT
.Ltmp206:
.LBB5_39:                               # %if.end61.i
                                        #   in Loop: Header=BB5_40 Depth=1
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: in_size <- 0
	#DEBUG_VALUE: coder_normal:pair <- $rbx
	#DEBUG_VALUE: coder_normal:action <- $ebp
	#DEBUG_VALUE: coder_normal:success <- 0
	#DEBUG_VALUE: coder_normal:ret <- $r14d
	#DEBUG_VALUE: coder_normal:success <- 0
	.loc	0 586 3                         # xz/coder.c:586:3
	callq	message_progress_update@PLT
.Ltmp207:
	#DEBUG_VALUE: coder_normal:action <- $ebp
	.loc	0 484 9                         # xz/coder.c:484:9
	cmpl	$0, (%r12)
	.loc	0 484 2 is_stmt 0               # xz/coder.c:484:2
	jne	.LBB5_59
.Ltmp208:
.LBB5_40:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: in_size <- 0
	#DEBUG_VALUE: coder_normal:pair <- $rbx
	#DEBUG_VALUE: coder_normal:action <- $ebp
	#DEBUG_VALUE: coder_normal:success <- 0
	#DEBUG_VALUE: coder_normal:action <- $ebp
	.loc	0 487 21 is_stmt 1              # xz/coder.c:487:21
	cmpq	$0, strm+8(%rip)
	.loc	0 487 26 is_stmt 0              # xz/coder.c:487:26
	jne	.LBB5_44
.Ltmp209:
# %bb.41:                               # %land.lhs.true.i32
                                        #   in Loop: Header=BB5_40 Depth=1
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: in_size <- 0
	#DEBUG_VALUE: coder_normal:pair <- $rbx
	#DEBUG_VALUE: coder_normal:action <- $ebp
	#DEBUG_VALUE: coder_normal:success <- 0
	.loc	0 487 7                         # xz/coder.c:487:7
	cmpb	$0, 24(%rbx)
	jne	.LBB5_44
.Ltmp210:
# %bb.42:                               # %if.then.i33
                                        #   in Loop: Header=BB5_40 Depth=1
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: in_size <- 0
	#DEBUG_VALUE: coder_normal:pair <- $rbx
	#DEBUG_VALUE: coder_normal:action <- $ebp
	#DEBUG_VALUE: coder_normal:success <- 0
	.loc	0 488 17 is_stmt 1              # xz/coder.c:488:17
	movq	$in_buf, strm(%rip)
	.loc	0 489 20                        # xz/coder.c:489:20
	movl	$in_buf, %esi
	movl	$8192, %edx                     # imm = 0x2000
	movq	%rbx, %rdi
	callq	io_read@PLT
.Ltmp211:
	.loc	0 489 18 is_stmt 0              # xz/coder.c:489:18
	movq	%rax, strm+8(%rip)
.Ltmp212:
	.loc	0 492 22 is_stmt 1              # xz/coder.c:492:22
	cmpq	$-1, %rax
.Ltmp213:
	.loc	0 492 8 is_stmt 0               # xz/coder.c:492:8
	je	.LBB5_59
.Ltmp214:
# %bb.43:                               # %if.end.i
                                        #   in Loop: Header=BB5_40 Depth=1
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: in_size <- 0
	#DEBUG_VALUE: coder_normal:pair <- $rbx
	#DEBUG_VALUE: coder_normal:action <- $ebp
	#DEBUG_VALUE: coder_normal:success <- 0
	.loc	0 495 8 is_stmt 1               # xz/coder.c:495:8
	cmpb	$0, 24(%rbx)
	cmovnel	%r13d, %ebp
.Ltmp215:
.LBB5_44:                               # %if.end9.i
                                        #   in Loop: Header=BB5_40 Depth=1
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: in_size <- 0
	#DEBUG_VALUE: coder_normal:pair <- $rbx
	#DEBUG_VALUE: coder_normal:success <- 0
	#DEBUG_VALUE: coder_normal:action <- $ebp
	.loc	0 500 9                         # xz/coder.c:500:9
	movl	$strm, %edi
	movl	%ebp, %esi
	callq	lzma_code@PLT
.Ltmp216:
	movl	%eax, %r14d
.Ltmp217:
	#DEBUG_VALUE: coder_normal:ret <- $r14d
	.loc	0 503 12                        # xz/coder.c:503:12
	movq	strm+32(%rip), %rax
	.loc	0 503 22 is_stmt 0              # xz/coder.c:503:22
	testq	%rax, %rax
.Ltmp218:
	.loc	0 503 7                         # xz/coder.c:503:7
	jne	.LBB5_48
.Ltmp219:
# %bb.45:                               # %if.then12.i
                                        #   in Loop: Header=BB5_40 Depth=1
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: in_size <- 0
	#DEBUG_VALUE: coder_normal:pair <- $rbx
	#DEBUG_VALUE: coder_normal:action <- $ebp
	#DEBUG_VALUE: coder_normal:success <- 0
	#DEBUG_VALUE: coder_normal:ret <- $r14d
	.loc	0 504 17 is_stmt 1              # xz/coder.c:504:17
	cmpl	$2, opt_mode(%rip)
	.loc	0 504 30 is_stmt 0              # xz/coder.c:504:30
	je	.LBB5_47
.Ltmp220:
# %bb.46:                               # %land.lhs.true14.i
                                        #   in Loop: Header=BB5_40 Depth=1
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: in_size <- 0
	#DEBUG_VALUE: coder_normal:pair <- $rbx
	#DEBUG_VALUE: coder_normal:action <- $ebp
	#DEBUG_VALUE: coder_normal:success <- 0
	#DEBUG_VALUE: coder_normal:ret <- $r14d
	.loc	0 504 33                        # xz/coder.c:504:33
	movl	$out_buf, %esi
	movl	$8192, %edx                     # imm = 0x2000
	movq	%rbx, %rdi
	callq	io_write@PLT
.Ltmp221:
	.loc	0 504 8                         # xz/coder.c:504:8
	testb	%al, %al
	jne	.LBB5_59
.Ltmp222:
.LBB5_47:                               # %if.end17.i
                                        #   in Loop: Header=BB5_40 Depth=1
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: in_size <- 0
	#DEBUG_VALUE: coder_normal:pair <- $rbx
	#DEBUG_VALUE: coder_normal:action <- $ebp
	#DEBUG_VALUE: coder_normal:success <- 0
	#DEBUG_VALUE: coder_normal:ret <- $r14d
	.loc	0 508 18 is_stmt 1              # xz/coder.c:508:18
	movq	$out_buf, strm+24(%rip)
	.loc	0 509 19                        # xz/coder.c:509:19
	movq	$8192, strm+32(%rip)            # imm = 0x2000
	movl	$8192, %eax                     # imm = 0x2000
.Ltmp223:
.LBB5_48:                               # %if.end18.i
                                        #   in Loop: Header=BB5_40 Depth=1
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: in_size <- 0
	#DEBUG_VALUE: coder_normal:pair <- $rbx
	#DEBUG_VALUE: coder_normal:action <- $ebp
	#DEBUG_VALUE: coder_normal:success <- 0
	#DEBUG_VALUE: coder_normal:ret <- $r14d
	.loc	0 512 11                        # xz/coder.c:512:11
	testl	%r14d, %r14d
.Ltmp224:
	.loc	0 512 7 is_stmt 0               # xz/coder.c:512:7
	je	.LBB5_39
.Ltmp225:
# %bb.49:                               # %if.then20.i
                                        #   in Loop: Header=BB5_40 Depth=1
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: in_size <- 0
	#DEBUG_VALUE: coder_normal:pair <- $rbx
	#DEBUG_VALUE: coder_normal:action <- $ebp
	#DEBUG_VALUE: coder_normal:success <- 0
	#DEBUG_VALUE: coder_normal:ret <- $r14d
	.loc	0 516 6 is_stmt 1               # xz/coder.c:516:6
	leal	-4(%r14), %r15d
	cmpl	$-3, %r15d
.Ltmp226:
	#DEBUG_VALUE: stop <- undef
	.loc	0 518 8                         # xz/coder.c:518:8
	ja	.LBB5_52
.Ltmp227:
# %bb.50:                               # %if.then20.i
                                        #   in Loop: Header=BB5_40 Depth=1
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: in_size <- 0
	#DEBUG_VALUE: coder_normal:pair <- $rbx
	#DEBUG_VALUE: coder_normal:action <- $ebp
	#DEBUG_VALUE: coder_normal:success <- 0
	#DEBUG_VALUE: coder_normal:ret <- $r14d
	cmpl	$2, opt_mode(%rip)
	je	.LBB5_52
.Ltmp228:
# %bb.51:                               # %land.lhs.true26.i
                                        #   in Loop: Header=BB5_40 Depth=1
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: in_size <- 0
	#DEBUG_VALUE: coder_normal:pair <- $rbx
	#DEBUG_VALUE: coder_normal:action <- $ebp
	#DEBUG_VALUE: coder_normal:success <- 0
	#DEBUG_VALUE: coder_normal:ret <- $r14d
	.loc	0 526 8                         # xz/coder.c:526:8
	movl	$8192, %edx                     # imm = 0x2000
	subq	%rax, %rdx
	.loc	0 524 34                        # xz/coder.c:524:34
	movl	$out_buf, %esi
	movq	%rbx, %rdi
	callq	io_write@PLT
.Ltmp229:
	.loc	0 524 9 is_stmt 0               # xz/coder.c:524:9
	testb	%al, %al
	jne	.LBB5_59
.Ltmp230:
.LBB5_52:                               # %if.end31.i
                                        #   in Loop: Header=BB5_40 Depth=1
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: in_size <- 0
	#DEBUG_VALUE: coder_normal:pair <- $rbx
	#DEBUG_VALUE: coder_normal:action <- $ebp
	#DEBUG_VALUE: coder_normal:success <- 0
	#DEBUG_VALUE: coder_normal:ret <- $r14d
	.loc	0 530 12 is_stmt 1              # xz/coder.c:530:12
	cmpl	$1, %r14d
.Ltmp231:
	.loc	0 530 8 is_stmt 0               # xz/coder.c:530:8
	je	.LBB5_62
.Ltmp232:
# %bb.53:                               # %if.end47.i
                                        #   in Loop: Header=BB5_40 Depth=1
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: in_size <- 0
	#DEBUG_VALUE: coder_normal:pair <- $rbx
	#DEBUG_VALUE: coder_normal:action <- $ebp
	#DEBUG_VALUE: coder_normal:success <- 0
	#DEBUG_VALUE: coder_normal:ret <- $r14d
	.loc	0 516 6 is_stmt 1               # xz/coder.c:516:6
	cmpl	$-3, %r15d
	#DEBUG_VALUE: coder_normal:ret <- $r14d
	.loc	0 562 8                         # xz/coder.c:562:8
	ja	.LBB5_38
	jmp	.LBB5_63
.Ltmp233:
.LBB5_54:                               # %if.else
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: in_size <- 0
	#DEBUG_VALUE: coder_passthru:pair <- $rbx
	.loc	0 599 14                        # xz/coder.c:599:14
	movq	strm+8(%rip), %rax
.Ltmp234:
.LBB5_55:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: in_size <- 0
	#DEBUG_VALUE: coder_passthru:pair <- $rbx
	.loc	0 599 23 is_stmt 0              # xz/coder.c:599:23
	testq	%rax, %rax
	sete	%r13b
	.loc	0 599 2                         # xz/coder.c:599:2
	je	.LBB5_60
.Ltmp235:
# %bb.56:                               # %while.cond.i
                                        #   in Loop: Header=BB5_55 Depth=1
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: in_size <- 0
	#DEBUG_VALUE: coder_passthru:pair <- $rbx
	cmpl	$0, (%r12)
	jne	.LBB5_60
.Ltmp236:
# %bb.57:                               # %if.end.i36
                                        #   in Loop: Header=BB5_55 Depth=1
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: in_size <- 0
	#DEBUG_VALUE: coder_passthru:pair <- $rbx
	.loc	0 603 7 is_stmt 1               # xz/coder.c:603:7
	movl	$in_buf, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	callq	io_write@PLT
.Ltmp237:
	.loc	0 603 7 is_stmt 0               # xz/coder.c:603:7
	testb	%al, %al
	jne	.LBB5_59
.Ltmp238:
# %bb.58:                               # %if.end2.i
                                        #   in Loop: Header=BB5_55 Depth=1
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: in_size <- 0
	#DEBUG_VALUE: coder_passthru:pair <- $rbx
	.loc	0 606 17 is_stmt 1              # xz/coder.c:606:17
	movq	strm+16(%rip), %rax
	addq	strm+8(%rip), %rax
	movq	%rax, strm+16(%rip)
	.loc	0 607 18                        # xz/coder.c:607:18
	movq	%rax, strm+40(%rip)
	.loc	0 608 3                         # xz/coder.c:608:3
	callq	message_progress_update@PLT
.Ltmp239:
	.loc	0 610 19                        # xz/coder.c:610:19
	movl	$in_buf, %esi
	movl	$8192, %edx                     # imm = 0x2000
	movq	%rbx, %rdi
	callq	io_read@PLT
.Ltmp240:
	.loc	0 610 17 is_stmt 0              # xz/coder.c:610:17
	movq	%rax, strm+8(%rip)
.Ltmp241:
	.loc	0 611 21 is_stmt 1              # xz/coder.c:611:21
	cmpq	$-1, %rax
.Ltmp242:
	.loc	0 611 7 is_stmt 0               # xz/coder.c:611:7
	jne	.LBB5_55
.Ltmp243:
.LBB5_59:
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: in_size <- 0
	.loc	0 0 7                           # xz/coder.c:0:7
	xorl	%r13d, %r13d
.Ltmp244:
.LBB5_60:                               # %if.end15
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: in_size <- 0
	#DEBUG_VALUE: coder_run:success <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $r13b
	.loc	0 667 5 is_stmt 1               # xz/coder.c:667:5
	movzbl	%r13b, %edi
	callq	message_progress_end@PLT
.Ltmp245:
	.loc	0 0 5 is_stmt 0                 # xz/coder.c:0:5
	jmp	.LBB5_61
.Ltmp246:
.LBB5_62:                               # %if.then33.i
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: in_size <- 0
	#DEBUG_VALUE: coder_normal:pair <- $rbx
	#DEBUG_VALUE: coder_normal:action <- $ebp
	#DEBUG_VALUE: coder_normal:success <- 0
	#DEBUG_VALUE: coder_normal:ret <- $r14d
	movl	$9, %r14d
.Ltmp247:
	.loc	0 534 23 is_stmt 1              # xz/coder.c:534:23
	cmpq	$0, strm+8(%rip)
	.loc	0 534 28 is_stmt 0              # xz/coder.c:534:28
	je	.LBB5_65
.Ltmp248:
.LBB5_63:                               # %if.end53.i
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: in_size <- 0
	#DEBUG_VALUE: coder_normal:pair <- $rbx
	#DEBUG_VALUE: coder_normal:action <- $ebp
	#DEBUG_VALUE: coder_normal:success <- 0
	.loc	0 563 35 is_stmt 1              # xz/coder.c:563:35
	movq	(%rbx), %r15
	.loc	0 564 7                         # xz/coder.c:564:7
	movl	%r14d, %edi
	callq	message_strm@PLT
.Ltmp249:
	.loc	0 0 7 is_stmt 0                 # xz/coder.c:0:7
	xorl	%r13d, %r13d
	.loc	0 563 5 is_stmt 1               # xz/coder.c:563:5
	movl	$.L.str.9, %edi
	movq	%r15, %rsi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	message_error@PLT
.Ltmp250:
	.loc	0 574 12                        # xz/coder.c:574:12
	cmpl	$6, %r14d
.Ltmp251:
	.loc	0 574 8 is_stmt 0               # xz/coder.c:574:8
	jne	.LBB5_60
.Ltmp252:
# %bb.64:                               # %if.then55.i
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: in_size <- 0
	#DEBUG_VALUE: coder_normal:pair <- $rbx
	#DEBUG_VALUE: coder_normal:action <- $ebp
	#DEBUG_VALUE: coder_normal:success <- 0
	.loc	0 578 7 is_stmt 1               # xz/coder.c:578:7
	movl	$strm, %edi
	callq	lzma_memusage@PLT
.Ltmp253:
	.loc	0 577 5                         # xz/coder.c:577:5
	movl	$1, %edi
	movq	%rax, %rsi
	callq	message_mem_needed@PLT
.Ltmp254:
	.loc	0 0 5 is_stmt 0                 # xz/coder.c:0:5
	jmp	.LBB5_59
.Ltmp255:
.LBB5_65:                               # %land.lhs.true35.i
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: in_size <- 0
	#DEBUG_VALUE: coder_normal:pair <- $rbx
	#DEBUG_VALUE: coder_normal:action <- $ebp
	#DEBUG_VALUE: coder_normal:success <- 0
	movb	$1, %r13b
.Ltmp256:
	.loc	0 534 9 is_stmt 1               # xz/coder.c:534:9
	cmpb	$0, 24(%rbx)
	jne	.LBB5_60
.Ltmp257:
# %bb.66:                               # %if.then38.i
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: in_size <- 0
	#DEBUG_VALUE: coder_normal:pair <- $rbx
	#DEBUG_VALUE: coder_normal:action <- $ebp
	#DEBUG_VALUE: coder_normal:success <- 0
	.loc	0 539 22                        # xz/coder.c:539:22
	movl	$in_buf, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	io_read@PLT
.Ltmp258:
	.loc	0 539 20 is_stmt 0              # xz/coder.c:539:20
	movq	%rax, strm+8(%rip)
	.loc	0 541 10 is_stmt 1              # xz/coder.c:541:10
	cmpq	$-1, %rax
	je	.LBB5_59
.Ltmp259:
# %bb.67:                               # %if.then38.i
	#DEBUG_VALUE: coder_run:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: coder_run:pair <- $rbx
	#DEBUG_VALUE: coder_run:success <- 0
	#DEBUG_VALUE: in_size <- 0
	#DEBUG_VALUE: coder_normal:pair <- $rbx
	#DEBUG_VALUE: coder_normal:action <- $ebp
	#DEBUG_VALUE: coder_normal:success <- 0
	testq	%rax, %rax
	je	.LBB5_60
	jmp	.LBB5_63
.Ltmp260:
.Lfunc_end5:
	.size	coder_run, .Lfunc_end5-coder_run
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI5_0:
	.quad	.LBB5_5
	.quad	.LBB5_15
	.quad	.LBB5_7
	.quad	.LBB5_22
	.file	17 "/usr/include" "fcntl.h" md5 0x1a9bb91818c37dc7bc291ca6e49fc221
	.file	18 "liblzma/api/lzma" "container.h" md5 0x7f878de3abe07c50108c7f7da139bedb
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function is_format_lzma
	.type	is_format_lzma,@function
is_format_lzma:                         # @is_format_lzma
.Lfunc_begin6:
	.loc	0 304 0                         # xz/coder.c:304:0
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	.loc	0 306 20 prologue_end           # xz/coder.c:306:20
	cmpq	$13, strm+8(%rip)
.Ltmp261:
	.loc	0 306 6 is_stmt 0               # xz/coder.c:306:6
	jae	.LBB6_2
# %bb.1:
	.loc	0 0 6                           # xz/coder.c:0:6
	xorl	%ebx, %ebx
	.loc	0 306 6                         # xz/coder.c:306:6
	jmp	.LBB6_7
.LBB6_2:                                # %if.end
	.loc	0 310 14 is_stmt 1              # xz/coder.c:310:14
	movups	.L__const.is_format_lzma.filter(%rip), %xmm0
	movaps	%xmm0, (%rsp)
	xorl	%ebx, %ebx
	movq	%rsp, %rdi
.Ltmp262:
	.loc	0 311 6                         # xz/coder.c:311:6
	movl	$in_buf, %edx
	movl	$5, %ecx
	xorl	%esi, %esi
	callq	lzma_properties_decode@PLT
.Ltmp263:
	.loc	0 311 58 is_stmt 0              # xz/coder.c:311:58
	testl	%eax, %eax
.Ltmp264:
	.loc	0 311 6                         # xz/coder.c:311:6
	jne	.LBB6_7
# %bb.3:                                # %if.end3
	.loc	0 318 34 is_stmt 1              # xz/coder.c:318:34
	movq	8(%rsp), %rdi
.Ltmp265:
	#DEBUG_VALUE: is_format_lzma:opt <- $rdi
	.loc	0 319 34                        # xz/coder.c:319:34
	movl	(%rdi), %r14d
.Ltmp266:
	#DEBUG_VALUE: is_format_lzma:dict_size <- $r14d
	.loc	0 320 2                         # xz/coder.c:320:2
	callq	free@PLT
.Ltmp267:
	.loc	0 322 16                        # xz/coder.c:322:16
	cmpl	$-1, %r14d
.Ltmp268:
	.loc	0 322 6 is_stmt 0               # xz/coder.c:322:6
	je	.LBB6_6
.Ltmp269:
# %bb.4:                                # %if.then6
	#DEBUG_VALUE: is_format_lzma:dict_size <- $r14d
	.loc	0 323 26 is_stmt 1              # xz/coder.c:323:26
	leal	-1(%r14), %eax
.Ltmp270:
	#DEBUG_VALUE: d <- undef
	#DEBUG_VALUE: d <- undef
	#DEBUG_VALUE: d <- undef
	#DEBUG_VALUE: d <- undef
	#DEBUG_VALUE: d <- undef
	#DEBUG_VALUE: d <- undef
	.loc	0 0 26 is_stmt 0                # xz/coder.c:0:26
	xorl	%ebx, %ebx
	.loc	0 323 26                        # xz/coder.c:323:26
	movl	%r14d, %ecx
	addl	$-1, %ecx
.Ltmp271:
	#DEBUG_VALUE: d <- $ecx
	.loc	0 0 26                          # xz/coder.c:0:26
	jae	.LBB6_7
.Ltmp272:
# %bb.5:                                # %if.then6
	#DEBUG_VALUE: is_format_lzma:dict_size <- $r14d
	#DEBUG_VALUE: d <- $ecx
	movl	%eax, %ecx
	shrl	$2, %ecx
	orl	%eax, %ecx
	movl	%ecx, %eax
	shrl	$3, %eax
	orl	%ecx, %eax
	movl	%eax, %ecx
	shrl	$4, %ecx
	orl	%eax, %ecx
	movl	%ecx, %eax
	shrl	$8, %eax
	orl	%ecx, %eax
	movl	%eax, %ecx
	shrl	$16, %ecx
	orl	%eax, %ecx
	incl	%ecx
	cmpl	%r14d, %ecx
	jne	.LBB6_7
.Ltmp273:
.LBB6_6:                                # %if.end19
	#DEBUG_VALUE: is_format_lzma:dict_size <- $r14d
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: is_format_lzma:uncompressed_size <- 0
	#DEBUG_VALUE: i <- 1
	#DEBUG_VALUE: i <- 2
	#DEBUG_VALUE: i <- 3
	#DEBUG_VALUE: i <- 4
	#DEBUG_VALUE: i <- 5
	#DEBUG_VALUE: i <- 6
	#DEBUG_VALUE: is_format_lzma:uncompressed_size <- undef
	#DEBUG_VALUE: i <- 7
	.loc	0 339 21 is_stmt 1              # xz/coder.c:339:21
	movq	in_buf+5(%rip), %rax
.Ltmp274:
	#DEBUG_VALUE: is_format_lzma:uncompressed_size <- $rax
	#DEBUG_VALUE: i <- 8
	.loc	0 342 4                         # xz/coder.c:342:4
	incq	%rax
.Ltmp275:
	.loc	0 0 4 is_stmt 0                 # xz/coder.c:0:4
	movabsq	$274877906946, %rcx             # imm = 0x4000000002
	.loc	0 342 4                         # xz/coder.c:342:4
	cmpq	%rcx, %rax
	setb	%bl
.Ltmp276:
.LBB6_7:                                # %return
	.loc	0 346 1 is_stmt 1               # xz/coder.c:346:1
	movl	%ebx, %eax
	.loc	0 346 1 epilogue_begin is_stmt 0 # xz/coder.c:346:1
	addq	$24, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Ltmp277:
.Lfunc_end6:
	.size	is_format_lzma, .Lfunc_end6-is_format_lzma
	.cfi_endproc
                                        # -- End function
	.type	opt_mode,@object                # @opt_mode
	.bss
	.globl	opt_mode
	.p2align	2, 0x0
opt_mode:
	.long	0                               # 0x0
	.size	opt_mode, 4

	.type	opt_format,@object              # @opt_format
	.globl	opt_format
	.p2align	2, 0x0
opt_format:
	.long	0                               # 0x0
	.size	opt_format, 4

	.type	opt_auto_adjust,@object         # @opt_auto_adjust
	.data
	.globl	opt_auto_adjust
opt_auto_adjust:
	.byte	1                               # 0x1
	.size	opt_auto_adjust, 1

	.type	check,@object                   # @check
	.local	check
	.comm	check,4,4
	.type	check_default,@object           # @check_default
	.local	check_default
	.comm	check_default,1,1
	.type	preset_number,@object           # @preset_number
	.p2align	2, 0x0
preset_number:
	.long	6                               # 0x6
	.size	preset_number, 4

	.type	filters_count,@object           # @filters_count
	.local	filters_count
	.comm	filters_count,4,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Maximum number of filters is four"
	.size	.L.str, 34

	.type	filters,@object                 # @filters
	.local	filters
	.comm	filters,80,16
	.type	coder_set_compression_settings.opt_lzma,@object # @coder_set_compression_settings.opt_lzma
	.local	coder_set_compression_settings.opt_lzma
	.comm	coder_set_compression_settings.opt_lzma,112,8
	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Using a preset in raw mode is discouraged."
	.size	.L.str.1, 43

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"The exact options of the presets may vary between software versions."
	.size	.L.str.2, 69

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"The .lzma format supports only the LZMA1 filter"
	.size	.L.str.3, 48

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"LZMA1 cannot be used with the .xz format"
	.size	.L.str.4, 41

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Unsupported filter chain or filter options"
	.size	.L.str.5, 43

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Decompression will need %s MiB of memory."
	.size	.L.str.6, 42

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Adjusted LZMA%c dictionary size from %s MiB to %s MiB to not exceed the memory usage limit of %s MiB"
	.size	.L.str.7, 101

	.type	in_buf,@object                  # @in_buf
	.local	in_buf
	.comm	in_buf,8192,8
	.type	strm,@object                    # @strm
	.local	strm
	.comm	strm,136,8
	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Memory usage limit is too low for the given filter setup."
	.size	.L.str.8, 58

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"%s: %s"
	.size	.L.str.9, 7

	.type	is_format_xz.magic,@object      # @is_format_xz.magic
	.section	.rodata,"a",@progbits
is_format_xz.magic:
	.asciz	"\3757zXZ"
	.size	is_format_xz.magic, 6

	.type	.L__const.is_format_lzma.filter,@object # @__const.is_format_lzma.filter
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3, 0x0
.L__const.is_format_lzma.filter:
	.quad	4611686018427387905             # 0x4000000000000001
	.quad	0
	.size	.L__const.is_format_lzma.filter, 16

	.type	out_buf,@object                 # @out_buf
	.local	out_buf
	.comm	out_buf,8192,8
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
	.uleb128 .Ltmp3-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # super-register DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp22-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp22-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp21-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp21-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp51-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp116-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp117-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp57-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp57-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp58-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp86-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp105-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp119-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp63-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp66-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp84-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp109-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp85-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp103-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp122-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp122-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp126-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp126-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp143-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp143-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp144-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp144-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp123-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp127-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp127-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp143-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp143-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp145-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp145-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp193-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp193-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp195-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp195-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp126-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp143-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp145-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp192-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp195-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp244-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp244-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp246-.Lfunc_begin0         #   ending offset
	.byte	17                              # Loc expr size
	.byte	125                             # DW_OP_breg13
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 255
	.byte	1                               # 
	.byte	26                              # DW_OP_and
	.byte	168                             # DW_OP_convert
	.asciz	"\253\200\200"                  # 
	.byte	168                             # DW_OP_convert
	.asciz	"\257\200\200"                  # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp246-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp130-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp143-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp145-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp189-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp130-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp142-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	59                              # DW_OP_lit11
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp142-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp143-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp145-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp150-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	59                              # DW_OP_lit11
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp150-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp152-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp152-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp163-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	59                              # DW_OP_lit11
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp163-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp165-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp165-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp167-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	59                              # DW_OP_lit11
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp167-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp169-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp169-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp171-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	59                              # DW_OP_lit11
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp171-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp173-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp173-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp176-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	59                              # DW_OP_lit11
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp176-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp177-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp177-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp178-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp179-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp181-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp132-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp143-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	58                              # DW_OP_lit10
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp152-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp165-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	58                              # DW_OP_lit10
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp173-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp181-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	58                              # DW_OP_lit10
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp132-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp139-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp152-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp156-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp161-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp165-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	51                              # DW_OP_lit3
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp200-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp233-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp246-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp203-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp233-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp246-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp201-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp233-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp246-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp204-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp208-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp217-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp233-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp265-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp267-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp266-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp276-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp271-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp272-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc22:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp273-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp274-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	55                              # DW_OP_lit7
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp274-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp276-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	56                              # DW_OP_lit8
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc23:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp274-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp275-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
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
	.byte	3                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
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
	.byte	7                               # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	8                               # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
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
	.byte	10                              # Abbreviation Code
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
	.byte	11                              # Abbreviation Code
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
	.byte	12                              # Abbreviation Code
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
	.byte	13                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
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
	.byte	15                              # Abbreviation Code
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
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
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
	.byte	11                              # DW_FORM_data1
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
	.byte	11                              # DW_FORM_data1
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	22                              # Abbreviation Code
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
	.byte	23                              # Abbreviation Code
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
	.byte	24                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	25                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	26                              # Abbreviation Code
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
	.byte	27                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	28                              # Abbreviation Code
	.byte	23                              # DW_TAG_union_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	11                              # DW_AT_byte_size
	.byte	5                               # DW_FORM_data2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	29                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	30                              # Abbreviation Code
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
	.byte	31                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	32                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	33                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	34                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	35                              # Abbreviation Code
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
	.byte	36                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	37                              # Abbreviation Code
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
	.byte	38                              # Abbreviation Code
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
	.byte	39                              # Abbreviation Code
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
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	40                              # Abbreviation Code
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
	.byte	41                              # Abbreviation Code
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
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	43                              # Abbreviation Code
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
	.byte	44                              # Abbreviation Code
	.byte	24                              # DW_TAG_unspecified_parameters
	.byte	0                               # DW_CHILDREN_no
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
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	46                              # Abbreviation Code
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
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	48                              # Abbreviation Code
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
	.byte	49                              # Abbreviation Code
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
	.byte	50                              # Abbreviation Code
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
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	51                              # Abbreviation Code
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
	.byte	52                              # Abbreviation Code
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
	.byte	53                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	54                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	0                               # DW_CHILDREN_no
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
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	55                              # Abbreviation Code
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
	.byte	56                              # Abbreviation Code
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
	.byte	57                              # Abbreviation Code
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
	.byte	58                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	59                              # Abbreviation Code
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
	.byte	60                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	61                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	62                              # Abbreviation Code
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
	.byte	5                               # DW_FORM_data2
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	63                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
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
	.byte	64                              # Abbreviation Code
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
	.byte	65                              # Abbreviation Code
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
	.byte	66                              # Abbreviation Code
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
	.byte	67                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xc:0xd51 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	23                              # DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lrnglists_table_base0          # DW_AT_rnglists_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x2b:0x4 DW_TAG_base_type
	.byte	199                             # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x2f:0x4 DW_TAG_base_type
	.byte	198                             # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x33:0xb DW_TAG_variable
	.byte	3                               # DW_AT_name
	.long	62                              # DW_AT_type
                                        # DW_AT_external
	.byte	0                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	0
	.byte	4                               # Abbrev [4] 0x3e:0x16 DW_TAG_enumeration_type
	.long	84                              # DW_AT_type
	.byte	9                               # DW_AT_name
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	13                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x47:0x3 DW_TAG_enumerator
	.byte	5                               # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x4a:0x3 DW_TAG_enumerator
	.byte	6                               # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x4d:0x3 DW_TAG_enumerator
	.byte	7                               # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x50:0x3 DW_TAG_enumerator
	.byte	8                               # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x54:0x4 DW_TAG_base_type
	.byte	4                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x58:0xb DW_TAG_variable
	.byte	10                              # DW_AT_name
	.long	99                              # DW_AT_type
                                        # DW_AT_external
	.byte	0                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	1
	.byte	4                               # Abbrev [4] 0x63:0x16 DW_TAG_enumeration_type
	.long	84                              # DW_AT_type
	.byte	15                              # DW_AT_name
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x6c:0x3 DW_TAG_enumerator
	.byte	11                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x6f:0x3 DW_TAG_enumerator
	.byte	12                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x72:0x3 DW_TAG_enumerator
	.byte	13                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x75:0x3 DW_TAG_enumerator
	.byte	14                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x79:0xb DW_TAG_variable
	.byte	16                              # DW_AT_name
	.long	132                             # DW_AT_type
                                        # DW_AT_external
	.byte	0                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	2
	.byte	2                               # Abbrev [2] 0x84:0x4 DW_TAG_base_type
	.byte	17                              # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x88:0xa DW_TAG_variable
	.long	146                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	3
	.byte	7                               # Abbrev [7] 0x92:0xc DW_TAG_array_type
	.long	158                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x97:0x6 DW_TAG_subrange_type
	.long	162                             # DW_AT_type
	.byte	34                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x9e:0x4 DW_TAG_base_type
	.byte	18                              # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0xa2:0x4 DW_TAG_base_type
	.byte	19                              # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	10                              # Abbrev [10] 0xa6:0x170 DW_TAG_subprogram
	.byte	32                              # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	204                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0xb1:0xb DW_TAG_variable
	.byte	20                              # DW_AT_name
	.long	534                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	4
	.byte	12                              # Abbrev [12] 0xbc:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	210                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.long	3410                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0xc5:0x9 DW_TAG_variable
	.byte	4                               # DW_AT_location
	.byte	138                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.long	1111                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0xce:0x11 DW_TAG_lexical_block
	.byte	33                              # DW_AT_low_pc
	.long	.Ltmp48-.Ltmp41                 # DW_AT_high_pc
	.byte	14                              # Abbrev [14] 0xd4:0xa DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	94
	.byte	209                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.long	1531                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0xdf:0x10 DW_TAG_lexical_block
	.byte	34                              # DW_AT_low_pc
	.long	.Ltmp68-.Ltmp62                 # DW_AT_high_pc
	.byte	12                              # Abbrev [12] 0xe5:0x9 DW_TAG_variable
	.byte	5                               # DW_AT_location
	.byte	211                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.long	3410                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0xef:0x60 DW_TAG_lexical_block
	.byte	35                              # DW_AT_low_pc
	.long	.Ltmp109-.Ltmp70                # DW_AT_high_pc
	.byte	12                              # Abbrev [12] 0xf5:0x9 DW_TAG_variable
	.byte	6                               # DW_AT_location
	.byte	212                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.long	2064                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0xfe:0x9 DW_TAG_variable
	.byte	7                               # DW_AT_location
	.byte	213                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.long	2388                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x107:0x8 DW_TAG_variable
	.byte	209                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	214                             # DW_AT_decl_line
	.long	1531                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x10f:0x15 DW_TAG_inlined_subroutine
	.long	2007                            # DW_AT_abstract_origin
	.byte	36                              # DW_AT_low_pc
	.long	.Ltmp75-.Ltmp72                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	207                             # DW_AT_call_line
	.byte	4                               # DW_AT_call_column
	.byte	17                              # Abbrev [17] 0x11c:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.long	2011                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x124:0x15 DW_TAG_inlined_subroutine
	.long	2007                            # DW_AT_abstract_origin
	.byte	37                              # DW_AT_low_pc
	.long	.Ltmp79-.Ltmp76                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	218                             # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	17                              # Abbrev [17] 0x131:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.long	2011                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x139:0x15 DW_TAG_inlined_subroutine
	.long	2007                            # DW_AT_abstract_origin
	.byte	38                              # DW_AT_low_pc
	.long	.Ltmp91-.Ltmp88                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	237                             # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	17                              # Abbrev [17] 0x146:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.long	2011                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x14f:0x6 DW_TAG_call_site
	.long	2020                            # DW_AT_call_origin
	.byte	39                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0x155:0x6 DW_TAG_call_site
	.long	2020                            # DW_AT_call_origin
	.byte	40                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0x15b:0x6 DW_TAG_call_site
	.long	2036                            # DW_AT_call_origin
	.byte	41                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0x161:0x6 DW_TAG_call_site
	.long	2069                            # DW_AT_call_origin
	.byte	42                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0x167:0x6 DW_TAG_call_site
	.long	1986                            # DW_AT_call_origin
	.byte	43                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0x16d:0x6 DW_TAG_call_site
	.long	1986                            # DW_AT_call_origin
	.byte	44                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0x173:0x6 DW_TAG_call_site
	.long	2073                            # DW_AT_call_origin
	.byte	45                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0x179:0x6 DW_TAG_call_site
	.long	2098                            # DW_AT_call_origin
	.byte	46                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0x17f:0x6 DW_TAG_call_site
	.long	2112                            # DW_AT_call_origin
	.byte	47                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0x185:0x6 DW_TAG_call_site
	.long	1986                            # DW_AT_call_origin
	.byte	48                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0x18b:0x6 DW_TAG_call_site
	.long	2126                            # DW_AT_call_origin
	.byte	49                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0x191:0x6 DW_TAG_call_site
	.long	2112                            # DW_AT_call_origin
	.byte	50                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0x197:0x6 DW_TAG_call_site
	.long	2141                            # DW_AT_call_origin
	.byte	51                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0x19d:0x6 DW_TAG_call_site
	.long	2155                            # DW_AT_call_origin
	.byte	52                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0x1a3:0x6 DW_TAG_call_site
	.long	2020                            # DW_AT_call_origin
	.byte	53                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0x1a9:0x6 DW_TAG_call_site
	.long	2020                            # DW_AT_call_origin
	.byte	54                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0x1af:0x6 DW_TAG_call_site
	.long	2126                            # DW_AT_call_origin
	.byte	55                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0x1b5:0x6 DW_TAG_call_site
	.long	2174                            # DW_AT_call_origin
	.byte	56                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0x1bb:0x6 DW_TAG_call_site
	.long	2020                            # DW_AT_call_origin
	.byte	57                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0x1c1:0x6 DW_TAG_call_site
	.long	2126                            # DW_AT_call_origin
	.byte	58                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0x1c7:0x6 DW_TAG_call_site
	.long	2174                            # DW_AT_call_origin
	.byte	59                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0x1cd:0x6 DW_TAG_call_site
	.long	2020                            # DW_AT_call_origin
	.byte	60                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0x1d3:0x6 DW_TAG_call_site
	.long	2126                            # DW_AT_call_origin
	.byte	61                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0x1d9:0x6 DW_TAG_call_site
	.long	2174                            # DW_AT_call_origin
	.byte	62                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0x1df:0x6 DW_TAG_call_site
	.long	2198                            # DW_AT_call_origin
	.byte	63                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0x1e5:0x6 DW_TAG_call_site
	.long	2069                            # DW_AT_call_origin
	.byte	64                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0x1eb:0x6 DW_TAG_call_site
	.long	2155                            # DW_AT_call_origin
	.byte	65                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0x1f1:0x6 DW_TAG_call_site
	.long	2155                            # DW_AT_call_origin
	.byte	66                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0x1f7:0x6 DW_TAG_call_site
	.long	2141                            # DW_AT_call_origin
	.byte	67                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0x1fd:0x6 DW_TAG_call_site
	.long	2155                            # DW_AT_call_origin
	.byte	68                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0x203:0x6 DW_TAG_call_site
	.long	2020                            # DW_AT_call_origin
	.byte	69                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0x209:0x6 DW_TAG_call_site
	.long	2212                            # DW_AT_call_origin
	.byte	70                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0x20f:0x6 DW_TAG_call_site
	.long	2198                            # DW_AT_call_origin
	.byte	71                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x216:0x9 DW_TAG_typedef
	.long	543                             # DW_AT_type
	.byte	61                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	399                             # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x21f:0xf2 DW_TAG_structure_type
	.byte	112                             # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0x223:0x9 DW_TAG_member
	.byte	21                              # DW_AT_name
	.long	785                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x22c:0x9 DW_TAG_member
	.byte	24                              # DW_AT_name
	.long	801                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	240                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x235:0x9 DW_TAG_member
	.byte	28                              # DW_AT_name
	.long	785                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	254                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x23e:0xa DW_TAG_member
	.byte	29                              # DW_AT_name
	.long	785                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	281                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x248:0xa DW_TAG_member
	.byte	30                              # DW_AT_name
	.long	785                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	293                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x252:0xa DW_TAG_member
	.byte	31                              # DW_AT_name
	.long	785                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	316                             # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x25c:0xa DW_TAG_member
	.byte	32                              # DW_AT_name
	.long	831                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	322                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x266:0xa DW_TAG_member
	.byte	36                              # DW_AT_name
	.long	785                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	342                             # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x270:0xa DW_TAG_member
	.byte	37                              # DW_AT_name
	.long	854                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	345                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x27a:0xa DW_TAG_member
	.byte	44                              # DW_AT_name
	.long	785                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	375                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x284:0xa DW_TAG_member
	.byte	45                              # DW_AT_name
	.long	785                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	384                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x28e:0xa DW_TAG_member
	.byte	46                              # DW_AT_name
	.long	785                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	385                             # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x298:0xa DW_TAG_member
	.byte	47                              # DW_AT_name
	.long	785                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	386                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x2a2:0xa DW_TAG_member
	.byte	48                              # DW_AT_name
	.long	785                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	387                             # DW_AT_decl_line
	.byte	60                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x2ac:0xa DW_TAG_member
	.byte	49                              # DW_AT_name
	.long	785                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	388                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x2b6:0xa DW_TAG_member
	.byte	50                              # DW_AT_name
	.long	785                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	389                             # DW_AT_decl_line
	.byte	68                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x2c0:0xa DW_TAG_member
	.byte	51                              # DW_AT_name
	.long	785                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x2ca:0xa DW_TAG_member
	.byte	52                              # DW_AT_name
	.long	785                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	391                             # DW_AT_decl_line
	.byte	76                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x2d4:0xa DW_TAG_member
	.byte	53                              # DW_AT_name
	.long	886                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	392                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x2de:0xa DW_TAG_member
	.byte	56                              # DW_AT_name
	.long	886                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	393                             # DW_AT_decl_line
	.byte	84                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x2e8:0xa DW_TAG_member
	.byte	57                              # DW_AT_name
	.long	886                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	394                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x2f2:0xa DW_TAG_member
	.byte	58                              # DW_AT_name
	.long	886                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	395                             # DW_AT_decl_line
	.byte	92                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x2fc:0xa DW_TAG_member
	.byte	59                              # DW_AT_name
	.long	906                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	396                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x306:0xa DW_TAG_member
	.byte	60                              # DW_AT_name
	.long	906                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	397                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x311:0x8 DW_TAG_typedef
	.long	793                             # DW_AT_type
	.byte	23                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	23                              # Abbrev [23] 0x319:0x8 DW_TAG_typedef
	.long	84                              # DW_AT_type
	.byte	22                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	24                              # Abbrev [24] 0x321:0x5 DW_TAG_pointer_type
	.long	806                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x326:0x5 DW_TAG_const_type
	.long	811                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x32b:0x8 DW_TAG_typedef
	.long	819                             # DW_AT_type
	.byte	27                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	23                              # Abbrev [23] 0x333:0x8 DW_TAG_typedef
	.long	827                             # DW_AT_type
	.byte	26                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x33b:0x4 DW_TAG_base_type
	.byte	25                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	23                              # Abbrev [23] 0x33f:0x8 DW_TAG_typedef
	.long	839                             # DW_AT_type
	.byte	35                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	155                             # DW_AT_decl_line
	.byte	26                              # Abbrev [26] 0x347:0xf DW_TAG_enumeration_type
	.long	84                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x34f:0x3 DW_TAG_enumerator
	.byte	33                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x352:0x3 DW_TAG_enumerator
	.byte	34                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x356:0x8 DW_TAG_typedef
	.long	862                             # DW_AT_type
	.byte	43                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	26                              # Abbrev [26] 0x35e:0x18 DW_TAG_enumeration_type
	.long	84                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x366:0x3 DW_TAG_enumerator
	.byte	38                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x369:0x3 DW_TAG_enumerator
	.byte	39                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x36c:0x3 DW_TAG_enumerator
	.byte	40                              # DW_AT_name
	.byte	18                              # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x36f:0x3 DW_TAG_enumerator
	.byte	41                              # DW_AT_name
	.byte	19                              # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x372:0x3 DW_TAG_enumerator
	.byte	42                              # DW_AT_name
	.byte	20                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x376:0x8 DW_TAG_typedef
	.long	894                             # DW_AT_type
	.byte	55                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	26                              # Abbrev [26] 0x37e:0xc DW_TAG_enumeration_type
	.long	84                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x386:0x3 DW_TAG_enumerator
	.byte	54                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x38a:0x1 DW_TAG_pointer_type
	.byte	6                               # Abbrev [6] 0x38b:0xa DW_TAG_variable
	.long	917                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	5
	.byte	7                               # Abbrev [7] 0x395:0xc DW_TAG_array_type
	.long	158                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x39a:0x6 DW_TAG_subrange_type
	.long	162                             # DW_AT_type
	.byte	43                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x3a1:0xa DW_TAG_variable
	.long	939                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	6
	.byte	7                               # Abbrev [7] 0x3ab:0xc DW_TAG_array_type
	.long	158                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x3b0:0x6 DW_TAG_subrange_type
	.long	162                             # DW_AT_type
	.byte	69                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x3b7:0xa DW_TAG_variable
	.long	961                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	7
	.byte	7                               # Abbrev [7] 0x3c1:0xc DW_TAG_array_type
	.long	158                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x3c6:0x6 DW_TAG_subrange_type
	.long	162                             # DW_AT_type
	.byte	48                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x3cd:0xa DW_TAG_variable
	.long	983                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	8
	.byte	7                               # Abbrev [7] 0x3d7:0xc DW_TAG_array_type
	.long	158                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x3dc:0x6 DW_TAG_subrange_type
	.long	162                             # DW_AT_type
	.byte	41                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x3e3:0xa DW_TAG_variable
	.long	917                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	9
	.byte	6                               # Abbrev [6] 0x3ed:0xa DW_TAG_variable
	.long	1015                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	10
	.byte	7                               # Abbrev [7] 0x3f7:0xc DW_TAG_array_type
	.long	158                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x3fc:0x6 DW_TAG_subrange_type
	.long	162                             # DW_AT_type
	.byte	42                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x403:0xa DW_TAG_variable
	.long	1037                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	254                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	11
	.byte	7                               # Abbrev [7] 0x40d:0xc DW_TAG_array_type
	.long	158                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x412:0x6 DW_TAG_subrange_type
	.long	162                             # DW_AT_type
	.byte	101                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x419:0xb DW_TAG_variable
	.byte	62                              # DW_AT_name
	.long	1060                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	12
	.byte	7                               # Abbrev [7] 0x424:0xc DW_TAG_array_type
	.long	1072                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x429:0x6 DW_TAG_subrange_type
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x430:0x8 DW_TAG_typedef
	.long	1080                            # DW_AT_type
	.byte	69                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x438:0x17 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0x43c:0x9 DW_TAG_member
	.byte	63                              # DW_AT_name
	.long	1103                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x445:0x9 DW_TAG_member
	.byte	68                              # DW_AT_name
	.long	906                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x44f:0x8 DW_TAG_typedef
	.long	1111                            # DW_AT_type
	.byte	67                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	23                              # Abbrev [23] 0x457:0x8 DW_TAG_typedef
	.long	1119                            # DW_AT_type
	.byte	66                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	23                              # Abbrev [23] 0x45f:0x8 DW_TAG_typedef
	.long	1127                            # DW_AT_type
	.byte	65                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x467:0x4 DW_TAG_base_type
	.byte	64                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	11                              # Abbrev [11] 0x46b:0xb DW_TAG_variable
	.byte	70                              # DW_AT_name
	.long	1142                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	13
	.byte	23                              # Abbrev [23] 0x476:0x8 DW_TAG_typedef
	.long	1150                            # DW_AT_type
	.byte	74                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	28                              # Abbrev [28] 0x47e:0x21 DW_TAG_union_type
	.short	8192                            # DW_AT_byte_size
	.byte	8                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0x483:0x9 DW_TAG_member
	.byte	71                              # DW_AT_name
	.long	1183                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x48c:0x9 DW_TAG_member
	.byte	72                              # DW_AT_name
	.long	1196                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x495:0x9 DW_TAG_member
	.byte	73                              # DW_AT_name
	.long	1209                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x49f:0xd DW_TAG_array_type
	.long	811                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x4a4:0x7 DW_TAG_subrange_type
	.long	162                             # DW_AT_type
	.short	8192                            # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x4ac:0xd DW_TAG_array_type
	.long	785                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x4b1:0x7 DW_TAG_subrange_type
	.long	162                             # DW_AT_type
	.short	2048                            # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x4b9:0xd DW_TAG_array_type
	.long	1111                            # DW_AT_type
	.byte	29                              # Abbrev [29] 0x4be:0x7 DW_TAG_subrange_type
	.long	162                             # DW_AT_type
	.short	1024                            # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x4c6:0xb DW_TAG_variable
	.byte	75                              # DW_AT_name
	.long	1233                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	14
	.byte	23                              # Abbrev [23] 0x4d1:0x8 DW_TAG_typedef
	.long	1241                            # DW_AT_type
	.byte	80                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	26                              # Abbrev [26] 0x4d9:0x15 DW_TAG_enumeration_type
	.long	84                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x4e1:0x3 DW_TAG_enumerator
	.byte	76                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x4e4:0x3 DW_TAG_enumerator
	.byte	77                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x4e7:0x3 DW_TAG_enumerator
	.byte	78                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x4ea:0x3 DW_TAG_enumerator
	.byte	79                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x4ee:0x13 DW_TAG_variable
	.byte	81                              # DW_AT_name
	.long	132                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	10                              # DW_AT_location
	.byte	161
	.byte	15
	.byte	148
	.byte	1
	.byte	48
	.byte	32
	.byte	30
	.byte	49
	.byte	34
	.byte	159
	.byte	11                              # Abbrev [11] 0x501:0xb DW_TAG_variable
	.byte	82                              # DW_AT_name
	.long	785                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	16
	.byte	11                              # Abbrev [11] 0x50c:0xb DW_TAG_variable
	.byte	83                              # DW_AT_name
	.long	785                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	17
	.byte	6                               # Abbrev [6] 0x517:0xa DW_TAG_variable
	.long	1313                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	18
	.byte	7                               # Abbrev [7] 0x521:0xc DW_TAG_array_type
	.long	158                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x526:0x6 DW_TAG_subrange_type
	.long	162                             # DW_AT_type
	.byte	58                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x52d:0xb DW_TAG_variable
	.byte	84                              # DW_AT_name
	.long	1336                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	19
	.byte	19                              # Abbrev [19] 0x538:0x9 DW_TAG_typedef
	.long	1345                            # DW_AT_type
	.byte	102                             # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	490                             # DW_AT_decl_line
	.byte	30                              # Abbrev [30] 0x541:0xba DW_TAG_structure_type
	.byte	136                             # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.short	453                             # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x546:0xa DW_TAG_member
	.byte	85                              # DW_AT_name
	.long	801                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	454                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x550:0xa DW_TAG_member
	.byte	86                              # DW_AT_name
	.long	1531                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	455                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x55a:0xa DW_TAG_member
	.byte	88                              # DW_AT_name
	.long	1111                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	456                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x564:0xa DW_TAG_member
	.byte	89                              # DW_AT_name
	.long	1539                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	458                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x56e:0xa DW_TAG_member
	.byte	90                              # DW_AT_name
	.long	1531                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	459                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x578:0xa DW_TAG_member
	.byte	91                              # DW_AT_name
	.long	1111                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	460                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x582:0xa DW_TAG_member
	.byte	92                              # DW_AT_name
	.long	1544                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	468                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x58c:0xa DW_TAG_member
	.byte	97                              # DW_AT_name
	.long	1637                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	471                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x596:0xa DW_TAG_member
	.byte	59                              # DW_AT_name
	.long	906                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	479                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x5a0:0xa DW_TAG_member
	.byte	60                              # DW_AT_name
	.long	906                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	480                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x5aa:0xa DW_TAG_member
	.byte	100                             # DW_AT_name
	.long	906                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	481                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x5b4:0xa DW_TAG_member
	.byte	101                             # DW_AT_name
	.long	906                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	482                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x5be:0xa DW_TAG_member
	.byte	45                              # DW_AT_name
	.long	1111                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	483                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x5c8:0xa DW_TAG_member
	.byte	46                              # DW_AT_name
	.long	1111                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	484                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x5d2:0xa DW_TAG_member
	.byte	47                              # DW_AT_name
	.long	1531                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	485                             # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x5dc:0xa DW_TAG_member
	.byte	48                              # DW_AT_name
	.long	1531                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	486                             # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x5e6:0xa DW_TAG_member
	.byte	53                              # DW_AT_name
	.long	886                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	487                             # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x5f0:0xa DW_TAG_member
	.byte	56                              # DW_AT_name
	.long	886                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	488                             # DW_AT_decl_line
	.byte	132                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x5fb:0x8 DW_TAG_typedef
	.long	1127                            # DW_AT_type
	.byte	87                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	24                              # Abbrev [24] 0x603:0x5 DW_TAG_pointer_type
	.long	811                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x608:0x5 DW_TAG_pointer_type
	.long	1549                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x60d:0x9 DW_TAG_typedef
	.long	1558                            # DW_AT_type
	.byte	96                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	403                             # DW_AT_decl_line
	.byte	30                              # Abbrev [30] 0x616:0x24 DW_TAG_structure_type
	.byte	24                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.short	341                             # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x61b:0xa DW_TAG_member
	.byte	93                              # DW_AT_name
	.long	1594                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	376                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x625:0xa DW_TAG_member
	.byte	94                              # DW_AT_name
	.long	1620                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x62f:0xa DW_TAG_member
	.byte	95                              # DW_AT_name
	.long	906                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	401                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x63a:0x5 DW_TAG_pointer_type
	.long	1599                            # DW_AT_type
	.byte	31                              # Abbrev [31] 0x63f:0x15 DW_TAG_subroutine_type
	.long	906                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	32                              # Abbrev [32] 0x644:0x5 DW_TAG_formal_parameter
	.long	906                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x649:0x5 DW_TAG_formal_parameter
	.long	1531                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0x64e:0x5 DW_TAG_formal_parameter
	.long	1531                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x654:0x5 DW_TAG_pointer_type
	.long	1625                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x659:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	32                              # Abbrev [32] 0x65a:0x5 DW_TAG_formal_parameter
	.long	906                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x65f:0x5 DW_TAG_formal_parameter
	.long	906                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x665:0x5 DW_TAG_pointer_type
	.long	1642                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x66a:0x9 DW_TAG_typedef
	.long	1651                            # DW_AT_type
	.byte	99                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	411                             # DW_AT_decl_line
	.byte	34                              # Abbrev [34] 0x673:0x2 DW_TAG_structure_type
	.byte	98                              # DW_AT_name
                                        # DW_AT_declaration
	.byte	35                              # Abbrev [35] 0x675:0xb DW_TAG_variable
	.long	1664                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	454                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	20
	.byte	7                               # Abbrev [7] 0x680:0xc DW_TAG_array_type
	.long	158                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x685:0x6 DW_TAG_subrange_type
	.long	162                             # DW_AT_type
	.byte	7                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0x68c:0xe DW_TAG_subprogram
	.byte	37                              # Abbrev [37] 0x68d:0xc DW_TAG_variable
	.byte	103                             # DW_AT_name
	.long	1690                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	295                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	21
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x69a:0xc DW_TAG_array_type
	.long	806                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x69f:0x6 DW_TAG_subrange_type
	.long	162                             # DW_AT_type
	.byte	6                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x6a6:0xb DW_TAG_variable
	.byte	104                             # DW_AT_name
	.long	1142                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	22
	.byte	4                               # Abbrev [4] 0x6b1:0x19 DW_TAG_enumeration_type
	.long	84                              # DW_AT_type
	.byte	110                             # DW_AT_name
	.byte	4                               # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	14                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x6ba:0x3 DW_TAG_enumerator
	.byte	105                             # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x6bd:0x3 DW_TAG_enumerator
	.byte	106                             # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x6c0:0x3 DW_TAG_enumerator
	.byte	107                             # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x6c3:0x3 DW_TAG_enumerator
	.byte	108                             # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x6c6:0x3 DW_TAG_enumerator
	.byte	109                             # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x6ca:0x13 DW_TAG_enumeration_type
	.long	84                              # DW_AT_type
	.byte	114                             # DW_AT_name
	.byte	4                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x6d3:0x3 DW_TAG_enumerator
	.byte	111                             # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x6d6:0x3 DW_TAG_enumerator
	.byte	112                             # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x6d9:0x3 DW_TAG_enumerator
	.byte	113                             # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x6dd:0x13 DW_TAG_enumeration_type
	.long	84                              # DW_AT_type
	.byte	118                             # DW_AT_name
	.byte	4                               # DW_AT_byte_size
	.byte	12                              # DW_AT_decl_file
	.byte	14                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x6e6:0x3 DW_TAG_enumerator
	.byte	115                             # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x6e9:0x3 DW_TAG_enumerator
	.byte	116                             # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x6ec:0x3 DW_TAG_enumerator
	.byte	117                             # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x6f0:0x2d DW_TAG_enumeration_type
	.long	84                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x6f8:0x3 DW_TAG_enumerator
	.byte	119                             # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x6fb:0x3 DW_TAG_enumerator
	.byte	120                             # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x6fe:0x3 DW_TAG_enumerator
	.byte	121                             # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x701:0x3 DW_TAG_enumerator
	.byte	122                             # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x704:0x3 DW_TAG_enumerator
	.byte	123                             # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x707:0x3 DW_TAG_enumerator
	.byte	124                             # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x70a:0x3 DW_TAG_enumerator
	.byte	125                             # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x70d:0x3 DW_TAG_enumerator
	.byte	126                             # DW_AT_name
	.byte	7                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x710:0x3 DW_TAG_enumerator
	.byte	127                             # DW_AT_name
	.byte	8                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x713:0x3 DW_TAG_enumerator
	.byte	128                             # DW_AT_name
	.byte	9                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x716:0x3 DW_TAG_enumerator
	.byte	129                             # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x719:0x3 DW_TAG_enumerator
	.byte	130                             # DW_AT_name
	.byte	11                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x71d:0x15 DW_TAG_enumeration_type
	.long	84                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	250                             # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x725:0x3 DW_TAG_enumerator
	.byte	131                             # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x728:0x3 DW_TAG_enumerator
	.byte	132                             # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x72b:0x3 DW_TAG_enumerator
	.byte	133                             # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	5                               # Abbrev [5] 0x72e:0x3 DW_TAG_enumerator
	.byte	134                             # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x732:0x16 DW_TAG_subprogram
	.byte	23                              # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	200                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	38                              # Abbrev [38] 0x73d:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	207                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.long	1233                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	39                              # Abbrev [39] 0x748:0x4 DW_TAG_subprogram
	.byte	135                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	62                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	10                              # Abbrev [10] 0x74c:0x28 DW_TAG_subprogram
	.byte	24                              # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	201                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	40                              # Abbrev [40] 0x757:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	208                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
	.long	785                             # DW_AT_type
	.byte	41                              # Abbrev [41] 0x760:0xd DW_TAG_inlined_subroutine
	.long	1864                            # DW_AT_abstract_origin
	.byte	25                              # DW_AT_low_pc
	.long	.Ltmp7-.Ltmp1                   # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	81                              # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	18                              # Abbrev [18] 0x76d:0x6 DW_TAG_call_site
	.long	1908                            # DW_AT_call_origin
	.byte	26                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	42                              # Abbrev [42] 0x774:0xb DW_TAG_subprogram
	.byte	94                              # DW_AT_name
	.byte	13                              # DW_AT_decl_file
	.short	555                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0x779:0x5 DW_TAG_formal_parameter
	.long	906                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x77f:0x1f DW_TAG_subprogram
	.byte	27                              # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	202                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	87                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	41                              # Abbrev [41] 0x78a:0xd DW_TAG_inlined_subroutine
	.long	1864                            # DW_AT_abstract_origin
	.byte	28                              # DW_AT_low_pc
	.long	.Ltmp14-.Ltmp9                  # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	90                              # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	18                              # Abbrev [18] 0x797:0x6 DW_TAG_call_site
	.long	1908                            # DW_AT_call_origin
	.byte	29                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x79e:0x24 DW_TAG_subprogram
	.byte	30                              # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	203                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	40                              # Abbrev [40] 0x7a9:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	63                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.long	1103                            # DW_AT_type
	.byte	40                              # Abbrev [40] 0x7b2:0x9 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	68                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.long	906                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x7bb:0x6 DW_TAG_call_site
	.long	1986                            # DW_AT_call_origin
	.byte	31                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	43                              # Abbrev [43] 0x7c2:0xb DW_TAG_subprogram
	.byte	136                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0x7c6:0x5 DW_TAG_formal_parameter
	.long	1997                            # DW_AT_type
	.byte	44                              # Abbrev [44] 0x7cb:0x1 DW_TAG_unspecified_parameters
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x7cd:0x5 DW_TAG_pointer_type
	.long	2002                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0x7d2:0x5 DW_TAG_const_type
	.long	158                             # DW_AT_type
	.byte	45                              # Abbrev [45] 0x7d7:0xd DW_TAG_subprogram
	.byte	137                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	46                              # Abbrev [46] 0x7db:0x8 DW_TAG_formal_parameter
	.byte	138                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.long	1111                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	43                              # Abbrev [43] 0x7e4:0x10 DW_TAG_subprogram
	.byte	139                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0x7e8:0x5 DW_TAG_formal_parameter
	.long	1713                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0x7ed:0x5 DW_TAG_formal_parameter
	.long	1997                            # DW_AT_type
	.byte	44                              # Abbrev [44] 0x7f2:0x1 DW_TAG_unspecified_parameters
	.byte	0                               # End Of Children Mark
	.byte	47                              # Abbrev [47] 0x7f4:0x14 DW_TAG_subprogram
	.byte	140                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	419                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2056                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0x7fd:0x5 DW_TAG_formal_parameter
	.long	2064                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0x802:0x5 DW_TAG_formal_parameter
	.long	785                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x808:0x8 DW_TAG_typedef
	.long	827                             # DW_AT_type
	.byte	141                             # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	24                              # Abbrev [24] 0x810:0x5 DW_TAG_pointer_type
	.long	534                             # DW_AT_type
	.byte	48                              # Abbrev [48] 0x815:0x4 DW_TAG_subprogram
	.byte	142                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	43                              # Abbrev [43] 0x819:0xf DW_TAG_subprogram
	.byte	143                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0x81d:0x5 DW_TAG_formal_parameter
	.long	1713                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0x822:0x5 DW_TAG_formal_parameter
	.long	2088                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x828:0x5 DW_TAG_pointer_type
	.long	2093                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0x82d:0x5 DW_TAG_const_type
	.long	1072                            # DW_AT_type
	.byte	49                              # Abbrev [49] 0x832:0xe DW_TAG_subprogram
	.byte	144                             # DW_AT_name
	.byte	14                              # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1111                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0x83a:0x5 DW_TAG_formal_parameter
	.long	62                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	49                              # Abbrev [49] 0x840:0xe DW_TAG_subprogram
	.byte	145                             # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1111                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0x848:0x5 DW_TAG_formal_parameter
	.long	2088                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	43                              # Abbrev [43] 0x84e:0xf DW_TAG_subprogram
	.byte	146                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0x852:0x5 DW_TAG_formal_parameter
	.long	1713                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0x857:0x5 DW_TAG_formal_parameter
	.long	1111                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	49                              # Abbrev [49] 0x85d:0xe DW_TAG_subprogram
	.byte	147                             # DW_AT_name
	.byte	15                              # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1111                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0x865:0x5 DW_TAG_formal_parameter
	.long	1111                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	49                              # Abbrev [49] 0x86b:0x13 DW_TAG_subprogram
	.byte	148                             # DW_AT_name
	.byte	15                              # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1997                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0x873:0x5 DW_TAG_formal_parameter
	.long	1111                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0x878:0x5 DW_TAG_formal_parameter
	.long	785                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	43                              # Abbrev [43] 0x87e:0x14 DW_TAG_subprogram
	.byte	149                             # DW_AT_name
	.byte	16                              # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0x882:0x5 DW_TAG_formal_parameter
	.long	2194                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0x887:0x5 DW_TAG_formal_parameter
	.long	2194                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0x88c:0x5 DW_TAG_formal_parameter
	.long	2194                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x892:0x4 DW_TAG_base_type
	.byte	150                             # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	49                              # Abbrev [49] 0x896:0xe DW_TAG_subprogram
	.byte	151                             # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1111                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0x89e:0x5 DW_TAG_formal_parameter
	.long	2088                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	49                              # Abbrev [49] 0x8a4:0xe DW_TAG_subprogram
	.byte	152                             # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2056                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0x8ac:0x5 DW_TAG_formal_parameter
	.long	1233                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	50                              # Abbrev [50] 0x8b2:0x30 DW_TAG_subprogram
	.byte	153                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	355                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1738                            # DW_AT_type
                                        # DW_AT_inline
	.byte	51                              # Abbrev [51] 0x8bb:0x9 DW_TAG_formal_parameter
	.byte	154                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	355                             # DW_AT_decl_line
	.long	2274                            # DW_AT_type
	.byte	52                              # Abbrev [52] 0x8c4:0x9 DW_TAG_variable
	.byte	166                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	357                             # DW_AT_decl_line
	.long	2380                            # DW_AT_type
	.byte	53                              # Abbrev [53] 0x8cd:0x14 DW_TAG_lexical_block
	.byte	52                              # Abbrev [52] 0x8ce:0x9 DW_TAG_variable
	.byte	168                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	379                             # DW_AT_decl_line
	.long	2388                            # DW_AT_type
	.byte	52                              # Abbrev [52] 0x8d7:0x9 DW_TAG_variable
	.byte	169                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	384                             # DW_AT_decl_line
	.long	99                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x8e2:0x5 DW_TAG_pointer_type
	.long	2279                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0x8e7:0x8 DW_TAG_typedef
	.long	2287                            # DW_AT_type
	.byte	165                             # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x8ef:0x44 DW_TAG_structure_type
	.byte	40                              # DW_AT_byte_size
	.byte	8                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0x8f3:0x9 DW_TAG_member
	.byte	155                             # DW_AT_name
	.long	1997                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x8fc:0x9 DW_TAG_member
	.byte	156                             # DW_AT_name
	.long	2355                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x905:0x9 DW_TAG_member
	.byte	157                             # DW_AT_name
	.long	2194                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x90e:0x9 DW_TAG_member
	.byte	158                             # DW_AT_name
	.long	2194                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x917:0x9 DW_TAG_member
	.byte	159                             # DW_AT_name
	.long	132                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x920:0x9 DW_TAG_member
	.byte	160                             # DW_AT_name
	.long	132                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	25                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x929:0x9 DW_TAG_member
	.byte	161                             # DW_AT_name
	.long	2360                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x933:0x5 DW_TAG_pointer_type
	.long	158                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x938:0x8 DW_TAG_typedef
	.long	2368                            # DW_AT_type
	.byte	164                             # DW_AT_name
	.byte	17                              # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	23                              # Abbrev [23] 0x940:0x8 DW_TAG_typedef
	.long	2376                            # DW_AT_type
	.byte	163                             # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x948:0x4 DW_TAG_base_type
	.byte	162                             # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	23                              # Abbrev [23] 0x94c:0x8 DW_TAG_typedef
	.long	1776                            # DW_AT_type
	.byte	167                             # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	25                              # Abbrev [25] 0x954:0x5 DW_TAG_const_type
	.long	785                             # DW_AT_type
	.byte	54                              # Abbrev [54] 0x959:0x9 DW_TAG_subprogram
	.byte	170                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	292                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	132                             # DW_AT_type
                                        # DW_AT_inline
	.byte	50                              # Abbrev [50] 0x962:0x39 DW_TAG_subprogram
	.byte	171                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	467                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	132                             # DW_AT_type
                                        # DW_AT_inline
	.byte	51                              # Abbrev [51] 0x96b:0x9 DW_TAG_formal_parameter
	.byte	154                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	467                             # DW_AT_decl_line
	.long	2274                            # DW_AT_type
	.byte	52                              # Abbrev [52] 0x974:0x9 DW_TAG_variable
	.byte	172                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	474                             # DW_AT_decl_line
	.long	2459                            # DW_AT_type
	.byte	52                              # Abbrev [52] 0x97d:0x9 DW_TAG_variable
	.byte	174                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	479                             # DW_AT_decl_line
	.long	132                             # DW_AT_type
	.byte	52                              # Abbrev [52] 0x986:0x9 DW_TAG_variable
	.byte	166                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	476                             # DW_AT_decl_line
	.long	2380                            # DW_AT_type
	.byte	53                              # Abbrev [53] 0x98f:0xb DW_TAG_lexical_block
	.byte	52                              # Abbrev [52] 0x990:0x9 DW_TAG_variable
	.byte	175                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	515                             # DW_AT_decl_line
	.long	2468                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x99b:0x9 DW_TAG_typedef
	.long	1821                            # DW_AT_type
	.byte	173                             # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	322                             # DW_AT_decl_line
	.byte	25                              # Abbrev [25] 0x9a4:0x5 DW_TAG_const_type
	.long	132                             # DW_AT_type
	.byte	50                              # Abbrev [50] 0x9a9:0x13 DW_TAG_subprogram
	.byte	176                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	597                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	132                             # DW_AT_type
                                        # DW_AT_inline
	.byte	51                              # Abbrev [51] 0x9b2:0x9 DW_TAG_formal_parameter
	.byte	154                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	597                             # DW_AT_decl_line
	.long	2274                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	55                              # Abbrev [55] 0x9bc:0x19b DW_TAG_subprogram
	.byte	72                              # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	205                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	620                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	56                              # Abbrev [56] 0x9c8:0xa DW_TAG_formal_parameter
	.byte	8                               # DW_AT_location
	.byte	214                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	620                             # DW_AT_decl_line
	.long	1997                            # DW_AT_type
	.byte	57                              # Abbrev [57] 0x9d2:0xa DW_TAG_variable
	.byte	9                               # DW_AT_location
	.byte	154                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	626                             # DW_AT_decl_line
	.long	2274                            # DW_AT_type
	.byte	57                              # Abbrev [57] 0x9dc:0xa DW_TAG_variable
	.byte	10                              # DW_AT_location
	.byte	174                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	631                             # DW_AT_decl_line
	.long	132                             # DW_AT_type
	.byte	58                              # Abbrev [58] 0x9e6:0x98 DW_TAG_lexical_block
	.byte	0                               # DW_AT_ranges
	.byte	52                              # Abbrev [52] 0x9e8:0x9 DW_TAG_variable
	.byte	216                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	645                             # DW_AT_decl_line
	.long	3415                            # DW_AT_type
	.byte	59                              # Abbrev [59] 0x9f1:0x42 DW_TAG_inlined_subroutine
	.long	2226                            # DW_AT_abstract_origin
	.byte	1                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.short	645                             # DW_AT_call_line
	.byte	40                              # DW_AT_call_column
	.byte	60                              # Abbrev [60] 0x9fb:0x6 DW_TAG_formal_parameter
	.byte	11                              # DW_AT_location
	.long	2235                            # DW_AT_abstract_origin
	.byte	61                              # Abbrev [61] 0xa01:0x6 DW_TAG_variable
	.byte	12                              # DW_AT_location
	.long	2244                            # DW_AT_abstract_origin
	.byte	58                              # Abbrev [58] 0xa07:0x2b DW_TAG_lexical_block
	.byte	2                               # DW_AT_ranges
	.byte	61                              # Abbrev [61] 0xa09:0x6 DW_TAG_variable
	.byte	13                              # DW_AT_location
	.long	2254                            # DW_AT_abstract_origin
	.byte	61                              # Abbrev [61] 0xa0f:0x6 DW_TAG_variable
	.byte	14                              # DW_AT_location
	.long	2263                            # DW_AT_abstract_origin
	.byte	62                              # Abbrev [62] 0xa15:0xe DW_TAG_inlined_subroutine
	.long	2393                            # DW_AT_abstract_origin
	.byte	73                              # DW_AT_low_pc
	.long	.Ltmp136-.Ltmp134               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	388                             # DW_AT_call_line
	.byte	8                               # DW_AT_call_column
	.byte	62                              # Abbrev [62] 0xa23:0xe DW_TAG_inlined_subroutine
	.long	2393                            # DW_AT_abstract_origin
	.byte	74                              # DW_AT_low_pc
	.long	.Ltmp154-.Ltmp152               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	395                             # DW_AT_call_line
	.byte	8                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0xa33:0x4a DW_TAG_lexical_block
	.byte	75                              # DW_AT_low_pc
	.long	.Ltmp260-.Ltmp198               # DW_AT_high_pc
	.byte	63                              # Abbrev [63] 0xa39:0xa DW_TAG_variable
	.byte	0                               # DW_AT_const_value
	.byte	215                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	652                             # DW_AT_decl_line
	.long	3410                            # DW_AT_type
	.byte	59                              # Abbrev [59] 0xa43:0x23 DW_TAG_inlined_subroutine
	.long	2402                            # DW_AT_abstract_origin
	.byte	3                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.short	663                             # DW_AT_call_line
	.byte	16                              # DW_AT_call_column
	.byte	60                              # Abbrev [60] 0xa4d:0x6 DW_TAG_formal_parameter
	.byte	15                              # DW_AT_location
	.long	2411                            # DW_AT_abstract_origin
	.byte	61                              # Abbrev [61] 0xa53:0x6 DW_TAG_variable
	.byte	16                              # DW_AT_location
	.long	2420                            # DW_AT_abstract_origin
	.byte	61                              # Abbrev [61] 0xa59:0x6 DW_TAG_variable
	.byte	17                              # DW_AT_location
	.long	2429                            # DW_AT_abstract_origin
	.byte	61                              # Abbrev [61] 0xa5f:0x6 DW_TAG_variable
	.byte	18                              # DW_AT_location
	.long	2438                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	64                              # Abbrev [64] 0xa66:0x16 DW_TAG_inlined_subroutine
	.long	2473                            # DW_AT_abstract_origin
	.byte	76                              # DW_AT_low_pc
	.long	.Ltmp243-.Ltmp233               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	665                             # DW_AT_call_line
	.byte	16                              # DW_AT_call_column
	.byte	17                              # Abbrev [17] 0xa74:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	2482                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0xa7e:0x6 DW_TAG_call_site
	.long	2903                            # DW_AT_call_origin
	.byte	77                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0xa84:0x6 DW_TAG_call_site
	.long	2913                            # DW_AT_call_origin
	.byte	78                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0xa8a:0x6 DW_TAG_call_site
	.long	2927                            # DW_AT_call_origin
	.byte	79                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0xa90:0x6 DW_TAG_call_site
	.long	2956                            # DW_AT_call_origin
	.byte	80                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0xa96:0x6 DW_TAG_call_site
	.long	2098                            # DW_AT_call_origin
	.byte	81                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0xa9c:0x6 DW_TAG_call_site
	.long	3061                            # DW_AT_call_origin
	.byte	82                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0xaa2:0x6 DW_TAG_call_site
	.long	3086                            # DW_AT_call_origin
	.byte	83                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0xaa8:0x6 DW_TAG_call_site
	.long	3110                            # DW_AT_call_origin
	.byte	84                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0xaae:0x6 DW_TAG_call_site
	.long	3129                            # DW_AT_call_origin
	.byte	85                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0xab4:0x6 DW_TAG_call_site
	.long	3158                            # DW_AT_call_origin
	.byte	86                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0xaba:0x6 DW_TAG_call_site
	.long	2098                            # DW_AT_call_origin
	.byte	87                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0xac0:0x6 DW_TAG_call_site
	.long	3177                            # DW_AT_call_origin
	.byte	88                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0xac6:0x6 DW_TAG_call_site
	.long	3202                            # DW_AT_call_origin
	.byte	89                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0xacc:0x6 DW_TAG_call_site
	.long	3222                            # DW_AT_call_origin
	.byte	90                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0xad2:0x6 DW_TAG_call_site
	.long	3236                            # DW_AT_call_origin
	.byte	91                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0xad8:0x6 DW_TAG_call_site
	.long	3247                            # DW_AT_call_origin
	.byte	92                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0xade:0x6 DW_TAG_call_site
	.long	2126                            # DW_AT_call_origin
	.byte	93                              # DW_AT_call_return_pc
	.byte	65                              # Abbrev [65] 0xae4:0x6 DW_TAG_call_site
	.long	3272                            # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	94                              # DW_AT_call_pc
	.byte	18                              # Abbrev [18] 0xaea:0x6 DW_TAG_call_site
	.long	3287                            # DW_AT_call_origin
	.byte	95                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0xaf0:0x6 DW_TAG_call_site
	.long	3301                            # DW_AT_call_origin
	.byte	96                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0xaf6:0x6 DW_TAG_call_site
	.long	3222                            # DW_AT_call_origin
	.byte	97                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0xafc:0x6 DW_TAG_call_site
	.long	3316                            # DW_AT_call_origin
	.byte	98                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0xb02:0x6 DW_TAG_call_site
	.long	3327                            # DW_AT_call_origin
	.byte	99                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0xb08:0x6 DW_TAG_call_site
	.long	2927                            # DW_AT_call_origin
	.byte	100                             # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0xb0e:0x6 DW_TAG_call_site
	.long	3202                            # DW_AT_call_origin
	.byte	101                             # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0xb14:0x6 DW_TAG_call_site
	.long	3331                            # DW_AT_call_origin
	.byte	102                             # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0xb1a:0x6 DW_TAG_call_site
	.long	3331                            # DW_AT_call_origin
	.byte	103                             # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0xb20:0x6 DW_TAG_call_site
	.long	3331                            # DW_AT_call_origin
	.byte	104                             # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0xb26:0x6 DW_TAG_call_site
	.long	3327                            # DW_AT_call_origin
	.byte	105                             # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0xb2c:0x6 DW_TAG_call_site
	.long	2927                            # DW_AT_call_origin
	.byte	106                             # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0xb32:0x6 DW_TAG_call_site
	.long	3365                            # DW_AT_call_origin
	.byte	107                             # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0xb38:0x6 DW_TAG_call_site
	.long	3222                            # DW_AT_call_origin
	.byte	108                             # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0xb3e:0x6 DW_TAG_call_site
	.long	3236                            # DW_AT_call_origin
	.byte	109                             # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0xb44:0x6 DW_TAG_call_site
	.long	3247                            # DW_AT_call_origin
	.byte	110                             # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0xb4a:0x6 DW_TAG_call_site
	.long	2126                            # DW_AT_call_origin
	.byte	111                             # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0xb50:0x6 DW_TAG_call_site
	.long	2927                            # DW_AT_call_origin
	.byte	112                             # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	43                              # Abbrev [43] 0xb57:0xa DW_TAG_subprogram
	.byte	177                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0xb5b:0x5 DW_TAG_formal_parameter
	.long	1997                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	49                              # Abbrev [49] 0xb61:0xe DW_TAG_subprogram
	.byte	178                             # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2274                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0xb69:0x5 DW_TAG_formal_parameter
	.long	1997                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	49                              # Abbrev [49] 0xb6f:0x18 DW_TAG_subprogram
	.byte	179                             # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1531                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0xb77:0x5 DW_TAG_formal_parameter
	.long	2274                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0xb7c:0x5 DW_TAG_formal_parameter
	.long	2951                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0xb81:0x5 DW_TAG_formal_parameter
	.long	1531                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0xb87:0x5 DW_TAG_pointer_type
	.long	1142                            # DW_AT_type
	.byte	66                              # Abbrev [66] 0xb8c:0x69 DW_TAG_subprogram
	.byte	113                             # DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	206                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	303                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	132                             # DW_AT_type
	.byte	67                              # Abbrev [67] 0xb9c:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	0
	.byte	217                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	310                             # DW_AT_decl_line
	.long	1072                            # DW_AT_type
	.byte	57                              # Abbrev [57] 0xba8:0xa DW_TAG_variable
	.byte	19                              # DW_AT_location
	.byte	212                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	318                             # DW_AT_decl_line
	.long	2064                            # DW_AT_type
	.byte	57                              # Abbrev [57] 0xbb2:0xa DW_TAG_variable
	.byte	20                              # DW_AT_location
	.byte	21                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	319                             # DW_AT_decl_line
	.long	2388                            # DW_AT_type
	.byte	57                              # Abbrev [57] 0xbbc:0xa DW_TAG_variable
	.byte	23                              # DW_AT_location
	.byte	219                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	337                             # DW_AT_decl_line
	.long	1111                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0xbc6:0x11 DW_TAG_lexical_block
	.byte	114                             # DW_AT_low_pc
	.long	.Ltmp272-.Ltmp269               # DW_AT_high_pc
	.byte	57                              # Abbrev [57] 0xbcc:0xa DW_TAG_variable
	.byte	21                              # DW_AT_location
	.byte	218                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	323                             # DW_AT_decl_line
	.long	785                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0xbd7:0x11 DW_TAG_lexical_block
	.byte	115                             # DW_AT_low_pc
	.long	.Ltmp274-.Ltmp273               # DW_AT_high_pc
	.byte	57                              # Abbrev [57] 0xbdd:0xa DW_TAG_variable
	.byte	22                              # DW_AT_location
	.byte	209                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	338                             # DW_AT_decl_line
	.long	1531                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0xbe8:0x6 DW_TAG_call_site
	.long	3375                            # DW_AT_call_origin
	.byte	116                             # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0xbee:0x6 DW_TAG_call_site
	.long	1908                            # DW_AT_call_origin
	.byte	117                             # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	47                              # Abbrev [47] 0xbf5:0x14 DW_TAG_subprogram
	.byte	180                             # DW_AT_name
	.byte	18                              # DW_AT_decl_file
	.short	377                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2380                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0xbfe:0x5 DW_TAG_formal_parameter
	.long	3081                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0xc03:0x5 DW_TAG_formal_parameter
	.long	1111                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0xc09:0x5 DW_TAG_pointer_type
	.long	1336                            # DW_AT_type
	.byte	49                              # Abbrev [49] 0xc0e:0x18 DW_TAG_subprogram
	.byte	181                             # DW_AT_name
	.byte	18                              # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2380                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0xc16:0x5 DW_TAG_formal_parameter
	.long	3081                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0xc1b:0x5 DW_TAG_formal_parameter
	.long	2088                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0xc20:0x5 DW_TAG_formal_parameter
	.long	1233                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	49                              # Abbrev [49] 0xc26:0x13 DW_TAG_subprogram
	.byte	182                             # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	196                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2380                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0xc2e:0x5 DW_TAG_formal_parameter
	.long	3081                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0xc33:0x5 DW_TAG_formal_parameter
	.long	2088                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	49                              # Abbrev [49] 0xc39:0x13 DW_TAG_subprogram
	.byte	183                             # DW_AT_name
	.byte	18                              # DW_AT_decl_file
	.byte	213                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2380                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0xc41:0x5 DW_TAG_formal_parameter
	.long	3081                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0xc46:0x5 DW_TAG_formal_parameter
	.long	3148                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0xc4c:0x5 DW_TAG_pointer_type
	.long	3153                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0xc51:0x5 DW_TAG_const_type
	.long	534                             # DW_AT_type
	.byte	49                              # Abbrev [49] 0xc56:0x13 DW_TAG_subprogram
	.byte	184                             # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2380                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0xc5e:0x5 DW_TAG_formal_parameter
	.long	3081                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0xc63:0x5 DW_TAG_formal_parameter
	.long	2088                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	47                              # Abbrev [47] 0xc69:0x19 DW_TAG_subprogram
	.byte	185                             # DW_AT_name
	.byte	18                              # DW_AT_decl_file
	.short	339                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2380                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0xc72:0x5 DW_TAG_formal_parameter
	.long	3081                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0xc77:0x5 DW_TAG_formal_parameter
	.long	1111                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0xc7c:0x5 DW_TAG_formal_parameter
	.long	785                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	47                              # Abbrev [47] 0xc82:0x14 DW_TAG_subprogram
	.byte	186                             # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	529                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2380                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0xc8b:0x5 DW_TAG_formal_parameter
	.long	3081                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0xc90:0x5 DW_TAG_formal_parameter
	.long	2459                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	49                              # Abbrev [49] 0xc96:0xe DW_TAG_subprogram
	.byte	187                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1997                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0xc9e:0x5 DW_TAG_formal_parameter
	.long	2380                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	43                              # Abbrev [43] 0xca4:0xb DW_TAG_subprogram
	.byte	188                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0xca8:0x5 DW_TAG_formal_parameter
	.long	1997                            # DW_AT_type
	.byte	44                              # Abbrev [44] 0xcad:0x1 DW_TAG_unspecified_parameters
	.byte	0                               # End Of Children Mark
	.byte	47                              # Abbrev [47] 0xcaf:0xf DW_TAG_subprogram
	.byte	189                             # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	571                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1111                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0xcb8:0x5 DW_TAG_formal_parameter
	.long	3262                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0xcbe:0x5 DW_TAG_pointer_type
	.long	3267                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0xcc3:0x5 DW_TAG_const_type
	.long	1336                            # DW_AT_type
	.byte	43                              # Abbrev [43] 0xcc8:0xf DW_TAG_subprogram
	.byte	190                             # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0xccc:0x5 DW_TAG_formal_parameter
	.long	2274                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0xcd1:0x5 DW_TAG_formal_parameter
	.long	132                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	49                              # Abbrev [49] 0xcd7:0xe DW_TAG_subprogram
	.byte	191                             # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	132                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0xcdf:0x5 DW_TAG_formal_parameter
	.long	2274                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	43                              # Abbrev [43] 0xce5:0xf DW_TAG_subprogram
	.byte	192                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	153                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0xce9:0x5 DW_TAG_formal_parameter
	.long	3081                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0xcee:0x5 DW_TAG_formal_parameter
	.long	1111                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	43                              # Abbrev [43] 0xcf4:0xb DW_TAG_subprogram
	.byte	193                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0xcf8:0x5 DW_TAG_formal_parameter
	.long	1997                            # DW_AT_type
	.byte	44                              # Abbrev [44] 0xcfd:0x1 DW_TAG_unspecified_parameters
	.byte	0                               # End Of Children Mark
	.byte	48                              # Abbrev [48] 0xcff:0x4 DW_TAG_subprogram
	.byte	194                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	49                              # Abbrev [49] 0xd03:0x18 DW_TAG_subprogram
	.byte	195                             # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	132                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0xd0b:0x5 DW_TAG_formal_parameter
	.long	2274                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0xd10:0x5 DW_TAG_formal_parameter
	.long	3355                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0xd15:0x5 DW_TAG_formal_parameter
	.long	1531                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0xd1b:0x5 DW_TAG_pointer_type
	.long	3360                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0xd20:0x5 DW_TAG_const_type
	.long	1142                            # DW_AT_type
	.byte	43                              # Abbrev [43] 0xd25:0xa DW_TAG_subprogram
	.byte	196                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0xd29:0x5 DW_TAG_formal_parameter
	.long	132                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	47                              # Abbrev [47] 0xd2f:0x1e DW_TAG_subprogram
	.byte	197                             # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.short	358                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2380                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0xd38:0x5 DW_TAG_formal_parameter
	.long	3405                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0xd3d:0x5 DW_TAG_formal_parameter
	.long	1544                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0xd42:0x5 DW_TAG_formal_parameter
	.long	801                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0xd47:0x5 DW_TAG_formal_parameter
	.long	1531                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0xd4d:0x5 DW_TAG_pointer_type
	.long	1072                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0xd52:0x5 DW_TAG_const_type
	.long	1111                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0xd57:0x5 DW_TAG_const_type
	.long	1738                            # DW_AT_type
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
	.uleb128 .Ltmp130-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp143-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp145-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp191-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp195-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp260-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges1:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp130-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp143-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp145-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp188-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges2:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp132-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp143-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp152-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp162-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp173-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp178-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges3:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp200-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp233-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp247-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp260-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	884                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"xz/coder.c"                    # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/xz-test/src" # string offset=116
.Linfo_string3:
	.asciz	"opt_mode"                      # string offset=148
.Linfo_string4:
	.asciz	"unsigned int"                  # string offset=157
.Linfo_string5:
	.asciz	"MODE_COMPRESS"                 # string offset=170
.Linfo_string6:
	.asciz	"MODE_DECOMPRESS"               # string offset=184
.Linfo_string7:
	.asciz	"MODE_TEST"                     # string offset=200
.Linfo_string8:
	.asciz	"MODE_LIST"                     # string offset=210
.Linfo_string9:
	.asciz	"operation_mode"                # string offset=220
.Linfo_string10:
	.asciz	"opt_format"                    # string offset=235
.Linfo_string11:
	.asciz	"FORMAT_AUTO"                   # string offset=246
.Linfo_string12:
	.asciz	"FORMAT_XZ"                     # string offset=258
.Linfo_string13:
	.asciz	"FORMAT_LZMA"                   # string offset=268
.Linfo_string14:
	.asciz	"FORMAT_RAW"                    # string offset=280
.Linfo_string15:
	.asciz	"format_type"                   # string offset=291
.Linfo_string16:
	.asciz	"opt_auto_adjust"               # string offset=303
.Linfo_string17:
	.asciz	"_Bool"                         # string offset=319
.Linfo_string18:
	.asciz	"char"                          # string offset=325
.Linfo_string19:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=330
.Linfo_string20:
	.asciz	"opt_lzma"                      # string offset=350
.Linfo_string21:
	.asciz	"dict_size"                     # string offset=359
.Linfo_string22:
	.asciz	"__uint32_t"                    # string offset=369
.Linfo_string23:
	.asciz	"uint32_t"                      # string offset=380
.Linfo_string24:
	.asciz	"preset_dict"                   # string offset=389
.Linfo_string25:
	.asciz	"unsigned char"                 # string offset=401
.Linfo_string26:
	.asciz	"__uint8_t"                     # string offset=415
.Linfo_string27:
	.asciz	"uint8_t"                       # string offset=425
.Linfo_string28:
	.asciz	"preset_dict_size"              # string offset=433
.Linfo_string29:
	.asciz	"lc"                            # string offset=450
.Linfo_string30:
	.asciz	"lp"                            # string offset=453
.Linfo_string31:
	.asciz	"pb"                            # string offset=456
.Linfo_string32:
	.asciz	"mode"                          # string offset=459
.Linfo_string33:
	.asciz	"LZMA_MODE_FAST"                # string offset=464
.Linfo_string34:
	.asciz	"LZMA_MODE_NORMAL"              # string offset=479
.Linfo_string35:
	.asciz	"lzma_mode"                     # string offset=496
.Linfo_string36:
	.asciz	"nice_len"                      # string offset=506
.Linfo_string37:
	.asciz	"mf"                            # string offset=515
.Linfo_string38:
	.asciz	"LZMA_MF_HC3"                   # string offset=518
.Linfo_string39:
	.asciz	"LZMA_MF_HC4"                   # string offset=530
.Linfo_string40:
	.asciz	"LZMA_MF_BT2"                   # string offset=542
.Linfo_string41:
	.asciz	"LZMA_MF_BT3"                   # string offset=554
.Linfo_string42:
	.asciz	"LZMA_MF_BT4"                   # string offset=566
.Linfo_string43:
	.asciz	"lzma_match_finder"             # string offset=578
.Linfo_string44:
	.asciz	"depth"                         # string offset=596
.Linfo_string45:
	.asciz	"reserved_int1"                 # string offset=602
.Linfo_string46:
	.asciz	"reserved_int2"                 # string offset=616
.Linfo_string47:
	.asciz	"reserved_int3"                 # string offset=630
.Linfo_string48:
	.asciz	"reserved_int4"                 # string offset=644
.Linfo_string49:
	.asciz	"reserved_int5"                 # string offset=658
.Linfo_string50:
	.asciz	"reserved_int6"                 # string offset=672
.Linfo_string51:
	.asciz	"reserved_int7"                 # string offset=686
.Linfo_string52:
	.asciz	"reserved_int8"                 # string offset=700
.Linfo_string53:
	.asciz	"reserved_enum1"                # string offset=714
.Linfo_string54:
	.asciz	"LZMA_RESERVED_ENUM"            # string offset=729
.Linfo_string55:
	.asciz	"lzma_reserved_enum"            # string offset=748
.Linfo_string56:
	.asciz	"reserved_enum2"                # string offset=767
.Linfo_string57:
	.asciz	"reserved_enum3"                # string offset=782
.Linfo_string58:
	.asciz	"reserved_enum4"                # string offset=797
.Linfo_string59:
	.asciz	"reserved_ptr1"                 # string offset=812
.Linfo_string60:
	.asciz	"reserved_ptr2"                 # string offset=826
.Linfo_string61:
	.asciz	"lzma_options_lzma"             # string offset=840
.Linfo_string62:
	.asciz	"filters"                       # string offset=858
.Linfo_string63:
	.asciz	"id"                            # string offset=866
.Linfo_string64:
	.asciz	"unsigned long"                 # string offset=869
.Linfo_string65:
	.asciz	"__uint64_t"                    # string offset=883
.Linfo_string66:
	.asciz	"uint64_t"                      # string offset=894
.Linfo_string67:
	.asciz	"lzma_vli"                      # string offset=903
.Linfo_string68:
	.asciz	"options"                       # string offset=912
.Linfo_string69:
	.asciz	"lzma_filter"                   # string offset=920
.Linfo_string70:
	.asciz	"in_buf"                        # string offset=932
.Linfo_string71:
	.asciz	"u8"                            # string offset=939
.Linfo_string72:
	.asciz	"u32"                           # string offset=942
.Linfo_string73:
	.asciz	"u64"                           # string offset=946
.Linfo_string74:
	.asciz	"io_buf"                        # string offset=950
.Linfo_string75:
	.asciz	"check"                         # string offset=957
.Linfo_string76:
	.asciz	"LZMA_CHECK_NONE"               # string offset=963
.Linfo_string77:
	.asciz	"LZMA_CHECK_CRC32"              # string offset=979
.Linfo_string78:
	.asciz	"LZMA_CHECK_CRC64"              # string offset=996
.Linfo_string79:
	.asciz	"LZMA_CHECK_SHA256"             # string offset=1013
.Linfo_string80:
	.asciz	"lzma_check"                    # string offset=1031
.Linfo_string81:
	.asciz	"check_default"                 # string offset=1042
.Linfo_string82:
	.asciz	"preset_number"                 # string offset=1056
.Linfo_string83:
	.asciz	"filters_count"                 # string offset=1070
.Linfo_string84:
	.asciz	"strm"                          # string offset=1084
.Linfo_string85:
	.asciz	"next_in"                       # string offset=1089
.Linfo_string86:
	.asciz	"avail_in"                      # string offset=1097
.Linfo_string87:
	.asciz	"size_t"                        # string offset=1106
.Linfo_string88:
	.asciz	"total_in"                      # string offset=1113
.Linfo_string89:
	.asciz	"next_out"                      # string offset=1122
.Linfo_string90:
	.asciz	"avail_out"                     # string offset=1131
.Linfo_string91:
	.asciz	"total_out"                     # string offset=1141
.Linfo_string92:
	.asciz	"allocator"                     # string offset=1151
.Linfo_string93:
	.asciz	"alloc"                         # string offset=1161
.Linfo_string94:
	.asciz	"free"                          # string offset=1167
.Linfo_string95:
	.asciz	"opaque"                        # string offset=1172
.Linfo_string96:
	.asciz	"lzma_allocator"                # string offset=1179
.Linfo_string97:
	.asciz	"internal"                      # string offset=1194
.Linfo_string98:
	.asciz	"lzma_internal_s"               # string offset=1203
.Linfo_string99:
	.asciz	"lzma_internal"                 # string offset=1219
.Linfo_string100:
	.asciz	"reserved_ptr3"                 # string offset=1233
.Linfo_string101:
	.asciz	"reserved_ptr4"                 # string offset=1247
.Linfo_string102:
	.asciz	"lzma_stream"                   # string offset=1261
.Linfo_string103:
	.asciz	"magic"                         # string offset=1273
.Linfo_string104:
	.asciz	"out_buf"                       # string offset=1279
.Linfo_string105:
	.asciz	"V_SILENT"                      # string offset=1287
.Linfo_string106:
	.asciz	"V_ERROR"                       # string offset=1296
.Linfo_string107:
	.asciz	"V_WARNING"                     # string offset=1304
.Linfo_string108:
	.asciz	"V_VERBOSE"                     # string offset=1314
.Linfo_string109:
	.asciz	"V_DEBUG"                       # string offset=1324
.Linfo_string110:
	.asciz	"message_verbosity"             # string offset=1332
.Linfo_string111:
	.asciz	"CODER_INIT_NORMAL"             # string offset=1350
.Linfo_string112:
	.asciz	"CODER_INIT_PASSTHRU"           # string offset=1368
.Linfo_string113:
	.asciz	"CODER_INIT_ERROR"              # string offset=1388
.Linfo_string114:
	.asciz	"coder_init_ret"                # string offset=1405
.Linfo_string115:
	.asciz	"E_SUCCESS"                     # string offset=1420
.Linfo_string116:
	.asciz	"E_ERROR"                       # string offset=1430
.Linfo_string117:
	.asciz	"E_WARNING"                     # string offset=1438
.Linfo_string118:
	.asciz	"exit_status_type"              # string offset=1448
.Linfo_string119:
	.asciz	"LZMA_OK"                       # string offset=1465
.Linfo_string120:
	.asciz	"LZMA_STREAM_END"               # string offset=1473
.Linfo_string121:
	.asciz	"LZMA_NO_CHECK"                 # string offset=1489
.Linfo_string122:
	.asciz	"LZMA_UNSUPPORTED_CHECK"        # string offset=1503
.Linfo_string123:
	.asciz	"LZMA_GET_CHECK"                # string offset=1526
.Linfo_string124:
	.asciz	"LZMA_MEM_ERROR"                # string offset=1541
.Linfo_string125:
	.asciz	"LZMA_MEMLIMIT_ERROR"           # string offset=1556
.Linfo_string126:
	.asciz	"LZMA_FORMAT_ERROR"             # string offset=1576
.Linfo_string127:
	.asciz	"LZMA_OPTIONS_ERROR"            # string offset=1594
.Linfo_string128:
	.asciz	"LZMA_DATA_ERROR"               # string offset=1613
.Linfo_string129:
	.asciz	"LZMA_BUF_ERROR"                # string offset=1629
.Linfo_string130:
	.asciz	"LZMA_PROG_ERROR"               # string offset=1644
.Linfo_string131:
	.asciz	"LZMA_RUN"                      # string offset=1660
.Linfo_string132:
	.asciz	"LZMA_SYNC_FLUSH"               # string offset=1669
.Linfo_string133:
	.asciz	"LZMA_FULL_FLUSH"               # string offset=1685
.Linfo_string134:
	.asciz	"LZMA_FINISH"                   # string offset=1701
.Linfo_string135:
	.asciz	"forget_filter_chain"           # string offset=1713
.Linfo_string136:
	.asciz	"message_fatal"                 # string offset=1733
.Linfo_string137:
	.asciz	"memlimit_too_small"            # string offset=1747
.Linfo_string138:
	.asciz	"memory_usage"                  # string offset=1766
.Linfo_string139:
	.asciz	"message"                       # string offset=1779
.Linfo_string140:
	.asciz	"lzma_lzma_preset"              # string offset=1787
.Linfo_string141:
	.asciz	"lzma_bool"                     # string offset=1804
.Linfo_string142:
	.asciz	"message_bug"                   # string offset=1814
.Linfo_string143:
	.asciz	"message_filters_show"          # string offset=1826
.Linfo_string144:
	.asciz	"hardware_memlimit_get"         # string offset=1847
.Linfo_string145:
	.asciz	"lzma_raw_decoder_memusage"     # string offset=1869
.Linfo_string146:
	.asciz	"message_mem_needed"            # string offset=1895
.Linfo_string147:
	.asciz	"round_up_to_mib"               # string offset=1914
.Linfo_string148:
	.asciz	"uint64_to_str"                 # string offset=1930
.Linfo_string149:
	.asciz	"tuklib_exit"                   # string offset=1944
.Linfo_string150:
	.asciz	"int"                           # string offset=1956
.Linfo_string151:
	.asciz	"lzma_raw_encoder_memusage"     # string offset=1960
.Linfo_string152:
	.asciz	"lzma_check_is_supported"       # string offset=1986
.Linfo_string153:
	.asciz	"coder_init"                    # string offset=2010
.Linfo_string154:
	.asciz	"pair"                          # string offset=2021
.Linfo_string155:
	.asciz	"src_name"                      # string offset=2026
.Linfo_string156:
	.asciz	"dest_name"                     # string offset=2035
.Linfo_string157:
	.asciz	"src_fd"                        # string offset=2045
.Linfo_string158:
	.asciz	"dest_fd"                       # string offset=2052
.Linfo_string159:
	.asciz	"src_eof"                       # string offset=2060
.Linfo_string160:
	.asciz	"dest_try_sparse"               # string offset=2068
.Linfo_string161:
	.asciz	"dest_pending_sparse"           # string offset=2084
.Linfo_string162:
	.asciz	"long"                          # string offset=2104
.Linfo_string163:
	.asciz	"__off_t"                       # string offset=2109
.Linfo_string164:
	.asciz	"off_t"                         # string offset=2117
.Linfo_string165:
	.asciz	"file_pair"                     # string offset=2123
.Linfo_string166:
	.asciz	"ret"                           # string offset=2133
.Linfo_string167:
	.asciz	"lzma_ret"                      # string offset=2137
.Linfo_string168:
	.asciz	"flags"                         # string offset=2146
.Linfo_string169:
	.asciz	"init_format"                   # string offset=2152
.Linfo_string170:
	.asciz	"is_format_xz"                  # string offset=2164
.Linfo_string171:
	.asciz	"coder_normal"                  # string offset=2177
.Linfo_string172:
	.asciz	"action"                        # string offset=2190
.Linfo_string173:
	.asciz	"lzma_action"                   # string offset=2197
.Linfo_string174:
	.asciz	"success"                       # string offset=2209
.Linfo_string175:
	.asciz	"stop"                          # string offset=2217
.Linfo_string176:
	.asciz	"coder_passthru"                # string offset=2222
.Linfo_string177:
	.asciz	"message_filename"              # string offset=2237
.Linfo_string178:
	.asciz	"io_open_src"                   # string offset=2254
.Linfo_string179:
	.asciz	"io_read"                       # string offset=2266
.Linfo_string180:
	.asciz	"lzma_alone_decoder"            # string offset=2274
.Linfo_string181:
	.asciz	"lzma_stream_encoder"           # string offset=2293
.Linfo_string182:
	.asciz	"lzma_raw_decoder"              # string offset=2313
.Linfo_string183:
	.asciz	"lzma_alone_encoder"            # string offset=2330
.Linfo_string184:
	.asciz	"lzma_raw_encoder"              # string offset=2349
.Linfo_string185:
	.asciz	"lzma_stream_decoder"           # string offset=2366
.Linfo_string186:
	.asciz	"lzma_code"                     # string offset=2386
.Linfo_string187:
	.asciz	"message_strm"                  # string offset=2396
.Linfo_string188:
	.asciz	"message_error"                 # string offset=2409
.Linfo_string189:
	.asciz	"lzma_memusage"                 # string offset=2423
.Linfo_string190:
	.asciz	"io_close"                      # string offset=2437
.Linfo_string191:
	.asciz	"io_open_dest"                  # string offset=2446
.Linfo_string192:
	.asciz	"message_progress_start"        # string offset=2459
.Linfo_string193:
	.asciz	"message_warning"               # string offset=2482
.Linfo_string194:
	.asciz	"message_progress_update"       # string offset=2498
.Linfo_string195:
	.asciz	"io_write"                      # string offset=2522
.Linfo_string196:
	.asciz	"message_progress_end"          # string offset=2531
.Linfo_string197:
	.asciz	"lzma_properties_decode"        # string offset=2552
.Linfo_string198:
	.asciz	"DW_ATE_unsigned_8"             # string offset=2575
.Linfo_string199:
	.asciz	"DW_ATE_unsigned_1"             # string offset=2593
.Linfo_string200:
	.asciz	"coder_set_check"               # string offset=2611
.Linfo_string201:
	.asciz	"coder_set_preset"              # string offset=2627
.Linfo_string202:
	.asciz	"coder_set_extreme"             # string offset=2644
.Linfo_string203:
	.asciz	"coder_add_filter"              # string offset=2662
.Linfo_string204:
	.asciz	"coder_set_compression_settings" # string offset=2679
.Linfo_string205:
	.asciz	"coder_run"                     # string offset=2710
.Linfo_string206:
	.asciz	"is_format_lzma"                # string offset=2720
.Linfo_string207:
	.asciz	"new_check"                     # string offset=2735
.Linfo_string208:
	.asciz	"new_preset"                    # string offset=2745
.Linfo_string209:
	.asciz	"i"                             # string offset=2756
.Linfo_string210:
	.asciz	"memory_limit"                  # string offset=2758
.Linfo_string211:
	.asciz	"decmem"                        # string offset=2771
.Linfo_string212:
	.asciz	"opt"                           # string offset=2778
.Linfo_string213:
	.asciz	"orig_dict_size"                # string offset=2782
.Linfo_string214:
	.asciz	"filename"                      # string offset=2797
.Linfo_string215:
	.asciz	"in_size"                       # string offset=2806
.Linfo_string216:
	.asciz	"init_ret"                      # string offset=2814
.Linfo_string217:
	.asciz	"filter"                        # string offset=2823
.Linfo_string218:
	.asciz	"d"                             # string offset=2830
.Linfo_string219:
	.asciz	"uncompressed_size"             # string offset=2832
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
	.long	.Linfo_string188
	.long	.Linfo_string189
	.long	.Linfo_string190
	.long	.Linfo_string191
	.long	.Linfo_string192
	.long	.Linfo_string193
	.long	.Linfo_string194
	.long	.Linfo_string195
	.long	.Linfo_string196
	.long	.Linfo_string197
	.long	.Linfo_string198
	.long	.Linfo_string199
	.long	.Linfo_string200
	.long	.Linfo_string201
	.long	.Linfo_string202
	.long	.Linfo_string203
	.long	.Linfo_string204
	.long	.Linfo_string205
	.long	.Linfo_string206
	.long	.Linfo_string207
	.long	.Linfo_string208
	.long	.Linfo_string209
	.long	.Linfo_string210
	.long	.Linfo_string211
	.long	.Linfo_string212
	.long	.Linfo_string213
	.long	.Linfo_string214
	.long	.Linfo_string215
	.long	.Linfo_string216
	.long	.Linfo_string217
	.long	.Linfo_string218
	.long	.Linfo_string219
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	opt_mode
	.quad	opt_format
	.quad	opt_auto_adjust
	.quad	.L.str
	.quad	coder_set_compression_settings.opt_lzma
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	filters
	.quad	in_buf
	.quad	check
	.quad	check_default
	.quad	preset_number
	.quad	filters_count
	.quad	.L.str.8
	.quad	strm
	.quad	.L.str.9
	.quad	is_format_xz.magic
	.quad	out_buf
	.quad	.Lfunc_begin0
	.quad	.Lfunc_begin1
	.quad	.Ltmp1
	.quad	.Ltmp4
	.quad	.Lfunc_begin2
	.quad	.Ltmp9
	.quad	.Ltmp11
	.quad	.Lfunc_begin3
	.quad	.Ltmp19
	.quad	.Lfunc_begin4
	.quad	.Ltmp41
	.quad	.Ltmp62
	.quad	.Ltmp70
	.quad	.Ltmp72
	.quad	.Ltmp76
	.quad	.Ltmp88
	.quad	.Ltmp31
	.quad	.Ltmp32
	.quad	.Ltmp33
	.quad	.Ltmp36
	.quad	.Ltmp39
	.quad	.Ltmp47
	.quad	.Ltmp49
	.quad	.Ltmp50
	.quad	.Ltmp54
	.quad	.Ltmp59
	.quad	.Ltmp60
	.quad	.Ltmp63
	.quad	.Ltmp66
	.quad	.Ltmp67
	.quad	.Ltmp68
	.quad	.Ltmp73
	.quad	.Ltmp74
	.quad	.Ltmp75
	.quad	.Ltmp77
	.quad	.Ltmp78
	.quad	.Ltmp79
	.quad	.Ltmp89
	.quad	.Ltmp90
	.quad	.Ltmp91
	.quad	.Ltmp92
	.quad	.Ltmp96
	.quad	.Ltmp104
	.quad	.Ltmp106
	.quad	.Ltmp107
	.quad	.Ltmp108
	.quad	.Ltmp109
	.quad	.Ltmp112
	.quad	.Ltmp118
	.quad	.Lfunc_begin5
	.quad	.Ltmp134
	.quad	.Ltmp152
	.quad	.Ltmp198
	.quad	.Ltmp233
	.quad	.Ltmp122
	.quad	.Ltmp123
	.quad	.Ltmp127
	.quad	.Ltmp138
	.quad	.Ltmp140
	.quad	.Ltmp141
	.quad	.Ltmp149
	.quad	.Ltmp162
	.quad	.Ltmp166
	.quad	.Ltmp170
	.quad	.Ltmp174
	.quad	.Ltmp175
	.quad	.Ltmp178
	.quad	.Ltmp182
	.quad	.Ltmp183
	.quad	.Ltmp186
	.quad	.Ltmp187
	.quad	.Ltmp194
	.quad	.Ltmp197
	.quad	.Ltmp199
	.quad	.Ltmp205
	.quad	.Ltmp206
	.quad	.Ltmp207
	.quad	.Ltmp211
	.quad	.Ltmp216
	.quad	.Ltmp221
	.quad	.Ltmp229
	.quad	.Ltmp237
	.quad	.Ltmp239
	.quad	.Ltmp240
	.quad	.Ltmp245
	.quad	.Ltmp249
	.quad	.Ltmp250
	.quad	.Ltmp253
	.quad	.Ltmp254
	.quad	.Ltmp258
	.quad	.Lfunc_begin6
	.quad	.Ltmp269
	.quad	.Ltmp273
	.quad	.Ltmp263
	.quad	.Ltmp267
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
