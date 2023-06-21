	.file	"ques4.c"
	.text
	.section	.rodata
.LC0:
	.string	"Enter Operand 1: "
.LC1:
	.string	"%f"
.LC2:
	.string	"Enter Operator (+, -, *, /): "
.LC3:
	.string	" %c"
.LC4:
	.string	"Enter Operand 2: "
	.align 8
.LC6:
	.string	"Error: Division by zero is not allowed."
.LC7:
	.string	"Error: Invalid operator."
.LC8:
	.string	"Result: %.2f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
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
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-20(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-21(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movzbl	-21(%rbp), %eax
	movsbl	%al, %eax
	cmpl	$47, %eax
	je	.L2
	cmpl	$47, %eax
	jg	.L3
	cmpl	$45, %eax
	je	.L4
	cmpl	$45, %eax
	jg	.L3
	cmpl	$42, %eax
	je	.L5
	cmpl	$43, %eax
	jne	.L3
	movss	-20(%rbp), %xmm1
	movss	-16(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	jmp	.L6
.L4:
	movss	-20(%rbp), %xmm0
	movss	-16(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	jmp	.L6
.L5:
	movss	-20(%rbp), %xmm1
	movss	-16(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	jmp	.L6
.L2:
	movss	-16(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L13
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	je	.L14
.L13:
	movss	-20(%rbp), %xmm0
	movss	-16(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	jmp	.L6
.L14:
	leaq	.LC6(%rip), %rdi
	call	puts@PLT
	movl	$1, %eax
	jmp	.L11
.L3:
	leaq	.LC7(%rip), %rdi
	call	puts@PLT
	movl	$1, %eax
	jmp	.L11
.L6:
	cvtss2sd	-12(%rbp), %xmm0
	leaq	.LC8(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$0, %eax
.L11:
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L12
	call	__stack_chk_fail@PLT
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
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
