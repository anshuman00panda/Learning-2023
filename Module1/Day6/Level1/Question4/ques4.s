	.file	"ques4.c"
	.text
	.globl	initializeStudentArray
	.type	initializeStudentArray, @function
initializeStudentArray:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L3:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	addq	$4, %rax
	movb	$0, (%rax)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 24(%rax)
	addl	$1, -4(%rbp)
.L2:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L3
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	initializeStudentArray, .-initializeStudentArray
	.section	.rodata
.LC1:
	.string	"\nStudent Array:"
.LC2:
	.string	"Student %d\n"
.LC3:
	.string	"Roll No: %d\n"
.LC4:
	.string	"Name: %s\n"
.LC5:
	.string	"Marks: %.2f\n"
	.text
	.globl	displayStudentArray
	.type	displayStudentArray, @function
displayStudentArray:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	movl	$0, -4(%rbp)
	jmp	.L5
.L6:
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	addq	$4, %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	24(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	leaq	.LC5(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$10, %edi
	call	putchar@PLT
	addl	$1, -4(%rbp)
.L5:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L6
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	displayStudentArray, .-displayStudentArray
	.globl	sortStudentArray
	.type	sortStudentArray, @function
sortStudentArray:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$0, -72(%rbp)
	jmp	.L8
.L13:
	movl	$0, -68(%rbp)
	jmp	.L9
.L12:
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movss	24(%rax), %xmm1
	movl	-68(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movss	24(%rax), %xmm0
	comiss	%xmm1, %xmm0
	jbe	.L10
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -64(%rbp)
	movq	%rbx, -56(%rbp)
	movq	16(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movl	24(%rax), %eax
	movl	%eax, -40(%rbp)
	movl	-68(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movl	-68(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$3, %rax
	subq	%rcx, %rax
	salq	$2, %rax
	movq	%rax, %rcx
	movq	-88(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	%rcx, 16(%rax)
	movl	24(%rdx), %edx
	movl	%edx, 24(%rax)
	movl	-68(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	-48(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movl	-40(%rbp), %edx
	movl	%edx, 24(%rax)
.L10:
	addl	$1, -68(%rbp)
.L9:
	movl	-92(%rbp), %eax
	subl	-72(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -68(%rbp)
	jl	.L12
	addl	$1, -72(%rbp)
.L8:
	movl	-92(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -72(%rbp)
	jl	.L13
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L14
	call	__stack_chk_fail@PLT
.L14:
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	sortStudentArray, .-sortStudentArray
	.section	.rodata
.LC6:
	.string	" "
	.text
	.globl	parseInputString
	.type	parseInputString, @function
parseInputString:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movl	$0, -28(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -24(%rbp)
	jmp	.L17
.L18:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, (%rbx)
	leaq	.LC6(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -24(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	leaq	4(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy@PLT
	leaq	.LC6(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 24(%rax)
	leaq	.LC6(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -24(%rbp)
	addl	$1, -28(%rbp)
.L17:
	cmpq	$0, -24(%rbp)
	jne	.L18
	nop
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	parseInputString, .-parseInputString
	.section	.rodata
	.align 8
.LC7:
	.string	"Enter the number of students: "
.LC8:
	.string	"%d"
.LC9:
	.string	"Enter the input string: "
.LC10:
	.string	" %[^\n]"
	.align 8
.LC11:
	.string	"\nSorted Student Array (Descending Order of Marks):"
	.text
	.globl	main
	.type	main, @function
main:
.LFB10:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-124(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-124(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -120(%rbp)
	movl	-124(%rbp), %edx
	movq	-120(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	initializeStudentArray
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-112(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-124(%rbp), %ecx
	leaq	-112(%rbp), %rdx
	movq	-120(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	parseInputString
	movl	-124(%rbp), %edx
	movq	-120(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	displayStudentArray
	movl	-124(%rbp), %edx
	movq	-120(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sortStudentArray
	leaq	.LC11(%rip), %rdi
	call	puts@PLT
	movl	-124(%rbp), %edx
	movq	-120(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	displayStudentArray
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L21
	call	__stack_chk_fail@PLT
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
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
