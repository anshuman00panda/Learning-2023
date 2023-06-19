	.file	"ques2.c"
	.text
	.globl	swap
	.type	swap, @function
swap:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -24(%rbp)
	jmp	.L2
.L3:
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -25(%rbp)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-25(%rbp), %eax
	movb	%al, (%rdx)
	addq	$1, -24(%rbp)
.L2:
	movq	-24(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jb	.L3
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	swap, .-swap
	.section	.rodata
	.align 8
.LC0:
	.string	"Before swap: num1 = %d, num2 = %d\n"
	.align 8
.LC1:
	.string	"After swap: num1 = %d, num2 = %d\n"
	.align 8
.LC4:
	.string	"Before swap: f1 = %f, f2 = %f\n"
.LC5:
	.string	"After swap: f1 = %f, f2 = %f\n"
	.align 8
.LC6:
	.string	"Before swap: c1 = %c, c2 = %c\n"
.LC7:
	.string	"After swap: c1 = %c, c2 = %c\n"
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
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$10, -24(%rbp)
	movl	$20, -20(%rbp)
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-20(%rbp), %rcx
	leaq	-24(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	swap
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -16(%rbp)
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -12(%rbp)
	movss	-12(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm1
	movss	-16(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	leaq	.LC4(%rip), %rdi
	movl	$2, %eax
	call	printf@PLT
	leaq	-12(%rbp), %rcx
	leaq	-16(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	swap
	movss	-12(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm1
	movss	-16(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	leaq	.LC5(%rip), %rdi
	movl	$2, %eax
	call	printf@PLT
	movb	$65, -26(%rbp)
	movb	$66, -25(%rbp)
	movzbl	-25(%rbp), %eax
	movsbl	%al, %edx
	movzbl	-26(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-25(%rbp), %rcx
	leaq	-26(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	swap
	movzbl	-25(%rbp), %eax
	movsbl	%al, %edx
	movzbl	-26(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L6
	call	__stack_chk_fail@PLT
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC2:
	.long	1078523331
	.align 4
.LC3:
	.long	1076753334
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
