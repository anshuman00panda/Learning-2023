	.file	"ques5.c"
	.text
	.globl	searchStudentByName
	.type	searchStudentByName, @function
searchStudentByName:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L5:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	leaq	4(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L3
	movl	-4(%rbp), %eax
	jmp	.L4
.L3:
	addl	$1, -4(%rbp)
.L2:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L5
	movl	$-1, %eax
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	searchStudentByName, .-searchStudentByName
	.section	.rodata
.LC5:
	.string	"Enter the name to search: "
.LC6:
	.string	"%s"
.LC7:
	.string	"Student Found at index %d\n"
.LC8:
	.string	"Roll No: %d\n"
.LC9:
	.string	"Name: %s\n"
.LC10:
	.string	"Marks: %.2f\n"
.LC11:
	.string	"Student Not Found"
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
	subq	$192, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1001, -176(%rbp)
	movq	$1852797505, -172(%rbp)
	movq	$0, -164(%rbp)
	movl	$0, -156(%rbp)
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, -152(%rbp)
	movl	$1002, -148(%rbp)
	movq	$6451010, -144(%rbp)
	movq	$0, -136(%rbp)
	movl	$0, -128(%rbp)
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, -124(%rbp)
	movl	$1003, -120(%rbp)
	movabsq	$111542068669507, %rax
	movl	$0, %edx
	movq	%rax, -116(%rbp)
	movq	%rdx, -108(%rbp)
	movl	$0, -100(%rbp)
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -96(%rbp)
	movl	$1004, -92(%rbp)
	movabsq	$431266095428, %rax
	movl	$0, %edx
	movq	%rax, -88(%rbp)
	movq	%rdx, -80(%rbp)
	movl	$0, -72(%rbp)
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -68(%rbp)
	movl	$1005, -64(%rbp)
	movabsq	$521509891397, %rax
	movl	$0, %edx
	movq	%rax, -60(%rbp)
	movq	%rdx, -52(%rbp)
	movl	$0, -44(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -40(%rbp)
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	-32(%rbp), %rdx
	leaq	-176(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	searchStudentByName
	movl	%eax, -180(%rbp)
	cmpl	$-1, -180(%rbp)
	je	.L7
	movl	-180(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-180(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	addq	%rbp, %rax
	subq	$176, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC8(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-176(%rbp), %rcx
	movl	-180(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	addq	$4, %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-180(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	addq	%rbp, %rax
	subq	$152, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	leaq	.LC10(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	jmp	.L8
.L7:
	leaq	.LC11(%rip), %rdi
	call	puts@PLT
.L8:
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L10
	call	__stack_chk_fail@PLT
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC0:
	.long	1119158272
	.align 4
.LC1:
	.long	1118470144
	.align 4
.LC2:
	.long	1119846400
	.align 4
.LC3:
	.long	1117782016
	.align 4
.LC4:
	.long	1119420416
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
