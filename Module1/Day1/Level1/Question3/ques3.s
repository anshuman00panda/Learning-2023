	.file	"ques3.c"
	.text
	.section	.rodata
.LC0:
	.string	"Enter Roll No: "
.LC1:
	.string	"%d"
.LC2:
	.string	"Enter Name: "
.LC3:
	.string	" %[^\n]s"
.LC4:
	.string	"Enter Physics Marks: "
.LC5:
	.string	"%f"
.LC6:
	.string	"Enter Math Marks: "
.LC7:
	.string	"Enter Chemistry Marks: "
	.align 8
.LC10:
	.string	"\n------ Student Summary ------"
.LC11:
	.string	"Roll No: %d\n"
.LC12:
	.string	"Name: %s\n"
.LC13:
	.string	"Physics Marks: %.2f\n"
.LC14:
	.string	"Math Marks: %.2f\n"
.LC15:
	.string	"Chemistry Marks: %.2f\n"
.LC16:
	.string	"Total Marks: %.2f\n"
.LC17:
	.string	"Percentage: %.2f%%\n"
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
	subq	$144, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-136(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-112(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-132(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-128(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-124(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movss	-132(%rbp), %xmm1
	movss	-128(%rbp), %xmm0
	addss	%xmm0, %xmm1
	movss	-124(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -120(%rbp)
	movss	-120(%rbp), %xmm0
	movss	.LC8(%rip), %xmm1
	divss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movss	.LC9(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -116(%rbp)
	leaq	.LC10(%rip), %rdi
	call	puts@PLT
	movl	-136(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC11(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-112(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movss	-132(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	leaq	.LC13(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movss	-128(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	leaq	.LC14(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movss	-124(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	leaq	.LC15(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	cvtss2sd	-120(%rbp), %xmm0
	leaq	.LC16(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	cvtss2sd	-116(%rbp), %xmm0
	leaq	.LC17(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L3
	call	__stack_chk_fail@PLT
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC8:
	.long	1133903872
	.align 4
.LC9:
	.long	1120403456
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
