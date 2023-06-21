	.file	"ques2.c"
	.text
	.section	.rodata
.LC0:
	.string	"Grade A"
.LC1:
	.string	"Grade B"
.LC2:
	.string	"Grade C"
.LC3:
	.string	"Grade D"
.LC4:
	.string	"Grade F"
.LC5:
	.string	"Invalid score"
	.text
	.globl	print_grade
	.type	print_grade, @function
print_grade:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$89, -4(%rbp)
	jle	.L2
	cmpl	$100, -4(%rbp)
	jg	.L2
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	jmp	.L3
.L2:
	cmpl	$74, -4(%rbp)
	jle	.L4
	cmpl	$89, -4(%rbp)
	jg	.L4
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	jmp	.L3
.L4:
	cmpl	$59, -4(%rbp)
	jle	.L5
	cmpl	$74, -4(%rbp)
	jg	.L5
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	jmp	.L3
.L5:
	cmpl	$49, -4(%rbp)
	jle	.L6
	cmpl	$59, -4(%rbp)
	jg	.L6
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	jmp	.L3
.L6:
	cmpl	$0, -4(%rbp)
	js	.L7
	cmpl	$49, -4(%rbp)
	jg	.L7
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
	jmp	.L3
.L7:
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
	nop
.L3:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	print_grade, .-print_grade
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
	movl	$85, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	print_grade
	movl	$0, %eax
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
