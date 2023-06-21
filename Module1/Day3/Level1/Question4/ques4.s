	.file	"ques4.c"
	.text
	.section	.rodata
.LC0:
	.string	"Enter number %d: "
.LC1:
	.string	"%d"
.LC2:
	.string	"Not Valid"
	.align 8
.LC3:
	.string	"Smallest digit: %d\nLargest digit: %d\n"
	.text
	.globl	findSmallestLargestDigits
	.type	findSmallestLargestDigits, @function
findSmallestLargestDigits:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$9, -20(%rbp)
	movl	$0, -16(%rbp)
	movl	$1, -24(%rbp)
	jmp	.L2
.L7:
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-28(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	jmp	.L3
.L6:
	movl	-28(%rbp), %edx
	movslq	%edx, %rax
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %ecx
	sarl	$2, %ecx
	movl	%edx, %eax
	sarl	$31, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	%eax, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.L4
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
.L4:
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jle	.L5
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
.L5:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$1717986919, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$2, %edx
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -28(%rbp)
.L3:
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	jg	.L6
	addl	$1, -24(%rbp)
.L2:
	movl	-24(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jle	.L7
	cmpl	$9, -20(%rbp)
	je	.L8
	cmpl	$0, -16(%rbp)
	jne	.L9
.L8:
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	jmp	.L10
.L9:
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L10:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L11
	call	__stack_chk_fail@PLT
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	findSmallestLargestDigits, .-findSmallestLargestDigits
	.section	.rodata
.LC4:
	.string	"Enter the value of n: "
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
	subq	$16, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	findSmallestLargestDigits
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L14
	call	__stack_chk_fail@PLT
.L14:
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
