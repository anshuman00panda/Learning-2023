	.file	"ques3.c"
	.text
	.globl	calculateTimeDifference
	.type	calculateTimeDifference, @function
calculateTimeDifference:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdx, %rax
	movq	%rcx, %rdx
	movq	%rdi, -64(%rbp)
	movl	%esi, -56(%rbp)
	movq	%rax, -80(%rbp)
	movl	-72(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -72(%rbp)
	movl	-64(%rbp), %eax
	imull	$3600, %eax, %edx
	movl	-60(%rbp), %eax
	imull	$60, %eax, %eax
	addl	%eax, %edx
	movl	-56(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -36(%rbp)
	movl	-80(%rbp), %eax
	imull	$3600, %eax, %edx
	movl	-76(%rbp), %eax
	imull	$60, %eax, %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	subl	-36(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$-1851608123, %rdx, %rdx
	shrq	$32, %rdx
	addl	%eax, %edx
	sarl	$11, %edx
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -24(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$-1851608123, %rdx, %rdx
	shrq	$32, %rdx
	addl	%eax, %edx
	movl	%edx, %ecx
	sarl	$11, %ecx
	cltd
	subl	%edx, %ecx
	movl	%ecx, %edx
	imull	$3600, %edx, %edx
	subl	%edx, %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$-2004318071, %rdx, %rdx
	shrq	$32, %rdx
	addl	%eax, %edx
	sarl	$5, %edx
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$-2004318071, %rdx, %rdx
	shrq	$32, %rdx
	addl	%eax, %edx
	movl	%edx, %ecx
	sarl	$5, %ecx
	cltd
	subl	%edx, %ecx
	movl	%ecx, %edx
	imull	$60, %edx, %edx
	subl	%edx, %eax
	movl	%eax, %edx
	movl	%edx, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -12(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -4(%rbp)
	movq	-12(%rbp), %rax
	movl	-4(%rbp), %ecx
	movq	%rcx, %rdx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	calculateTimeDifference, .-calculateTimeDifference
	.section	.rodata
	.align 8
.LC0:
	.string	"Enter the start time (hh:mm:ss): "
.LC1:
	.string	"%d:%d:%d"
	.align 8
.LC2:
	.string	"Enter the end time (hh:mm:ss): "
	.align 8
.LC3:
	.string	"Time Difference: %02d:%02d:%02d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-44(%rbp), %rax
	leaq	8(%rax), %rcx
	leaq	-44(%rbp), %rax
	leaq	4(%rax), %rdx
	leaq	-44(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rax
	leaq	8(%rax), %rcx
	leaq	-32(%rbp), %rax
	leaq	4(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movq	-32(%rbp), %rax
	movl	-24(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-44(%rbp), %rdi
	movl	-36(%rbp), %esi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	calculateTimeDifference
	movq	%rax, -20(%rbp)
	movl	-12(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L5
	call	__stack_chk_fail@PLT
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
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
