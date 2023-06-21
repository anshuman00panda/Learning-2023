	.file	"ques2.c"
	.text
	.globl	get_grade
	.type	get_grade, @function
get_grade:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	cmpl	$35, -20(%rbp)
	jg	.L2
	cmpl	$0, -20(%rbp)
	jns	.L3
	jmp	.L4
.L11:
	movl	-20(%rbp), %eax
	subl	$36, %eax
	cmpl	$64, %eax
	ja	.L4
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L6(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L6(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L6:
	.long	.L10-.L6
	.long	.L10-.L6
	.long	.L10-.L6
	.long	.L10-.L6
	.long	.L10-.L6
	.long	.L10-.L6
	.long	.L10-.L6
	.long	.L10-.L6
	.long	.L10-.L6
	.long	.L10-.L6
	.long	.L10-.L6
	.long	.L10-.L6
	.long	.L10-.L6
	.long	.L10-.L6
	.long	.L9-.L6
	.long	.L9-.L6
	.long	.L9-.L6
	.long	.L9-.L6
	.long	.L9-.L6
	.long	.L9-.L6
	.long	.L9-.L6
	.long	.L9-.L6
	.long	.L9-.L6
	.long	.L9-.L6
	.long	.L8-.L6
	.long	.L8-.L6
	.long	.L8-.L6
	.long	.L8-.L6
	.long	.L8-.L6
	.long	.L8-.L6
	.long	.L8-.L6
	.long	.L8-.L6
	.long	.L8-.L6
	.long	.L8-.L6
	.long	.L8-.L6
	.long	.L8-.L6
	.long	.L8-.L6
	.long	.L8-.L6
	.long	.L8-.L6
	.long	.L7-.L6
	.long	.L7-.L6
	.long	.L7-.L6
	.long	.L7-.L6
	.long	.L7-.L6
	.long	.L7-.L6
	.long	.L7-.L6
	.long	.L7-.L6
	.long	.L7-.L6
	.long	.L7-.L6
	.long	.L7-.L6
	.long	.L7-.L6
	.long	.L7-.L6
	.long	.L7-.L6
	.long	.L7-.L6
	.long	.L5-.L6
	.long	.L5-.L6
	.long	.L5-.L6
	.long	.L5-.L6
	.long	.L5-.L6
	.long	.L5-.L6
	.long	.L5-.L6
	.long	.L5-.L6
	.long	.L5-.L6
	.long	.L5-.L6
	.long	.L5-.L6
	.text
.L2:
	cmpl	$100, -20(%rbp)
	jg	.L4
	cmpl	$36, -20(%rbp)
	jge	.L11
	jmp	.L4
.L5:
	movb	$65, -1(%rbp)
	jmp	.L12
.L7:
	movb	$66, -1(%rbp)
	jmp	.L12
.L8:
	movb	$67, -1(%rbp)
	jmp	.L12
.L9:
	movb	$68, -1(%rbp)
	jmp	.L12
.L10:
	movb	$69, -1(%rbp)
	jmp	.L12
.L3:
	movb	$70, -1(%rbp)
	jmp	.L12
.L4:
	movb	$88, -1(%rbp)
.L12:
	movzbl	-1(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	get_grade, .-get_grade
	.section	.rodata
.LC0:
	.string	"Grade "
.LC1:
	.string	"A"
.LC2:
	.string	"B"
.LC3:
	.string	"C"
.LC4:
	.string	"D"
.LC5:
	.string	"E"
.LC6:
	.string	"F"
.LC7:
	.string	"Invalid grade"
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
	movl	$65, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	get_grade
	movb	%al, -5(%rbp)
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movsbl	-5(%rbp), %eax
	subl	$65, %eax
	cmpl	$5, %eax
	ja	.L15
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L17(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L17(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L17:
	.long	.L22-.L17
	.long	.L21-.L17
	.long	.L20-.L17
	.long	.L19-.L17
	.long	.L18-.L17
	.long	.L16-.L17
	.text
.L22:
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	jmp	.L23
.L21:
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	jmp	.L23
.L20:
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	jmp	.L23
.L19:
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
	jmp	.L23
.L18:
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
	jmp	.L23
.L16:
	leaq	.LC6(%rip), %rdi
	call	puts@PLT
	jmp	.L23
.L15:
	leaq	.LC7(%rip), %rdi
	call	puts@PLT
.L23:
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
