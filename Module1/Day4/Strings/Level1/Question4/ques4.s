	.file	"ques4.c"
	.text
	.section	.rodata
.LC0:
	.string	"%d/%d/%d"
	.text
	.globl	countElapsedDays
	.type	countElapsedDays, @function
countElapsedDays:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	time@PLT
	leaq	-64(%rbp), %rax
	leaq	20(%rax), %rsi
	leaq	-64(%rbp), %rax
	leaq	16(%rax), %rcx
	leaq	-64(%rbp), %rax
	leaq	12(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rsi, %r8
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	movl	-48(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	subl	$1900, %eax
	movl	%eax, -44(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -64(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	mktime@PLT
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	difftime@PLT
	movq	%xmm0, %rax
	movq	%rax, -72(%rbp)
	movsd	-72(%rbp), %xmm0
	movsd	.LC1(%rip), %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %eax
	movl	%eax, -92(%rbp)
	movl	-92(%rbp), %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L3
	call	__stack_chk_fail@PLT
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	countElapsedDays, .-countElapsedDays
	.section	.rodata
.LC2:
	.string	"01/01/2023"
.LC3:
	.string	"Start Date: %s\n"
.LC4:
	.string	"Elapsed Days: %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC2(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	countElapsedDays
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1089804288
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
