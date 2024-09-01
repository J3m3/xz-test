	.text
	.file	"args.c"
	.type	opt_stdout,@object              # @opt_stdout
	.bss
	.globl	opt_stdout
opt_stdout:
	.byte	0                               # 0x0
	.size	opt_stdout, 1

	.type	opt_force,@object               # @opt_force
	.globl	opt_force
opt_force:
	.byte	0                               # 0x0
	.size	opt_force, 1

	.type	opt_keep_original,@object       # @opt_keep_original
	.globl	opt_keep_original
opt_keep_original:
	.byte	0                               # 0x0
	.size	opt_keep_original, 1

	.type	opt_robot,@object               # @opt_robot
	.globl	opt_robot
opt_robot:
	.byte	0                               # 0x0
	.size	opt_robot, 1

	.type	stdin_filename,@object          # @stdin_filename
	.section	.rodata,"a",@progbits
	.globl	stdin_filename
stdin_filename:
	.asciz	"(stdin)"
	.size	stdin_filename, 8

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
