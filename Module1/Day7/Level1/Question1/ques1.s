	.file	"ques1.c"
	.text
	.section	.rodata
.LC0:
	.string	"Enter the source file name: "
.LC1:
	.string	"%s"
	.align 8
.LC2:
	.string	"Enter the destination file name: "
.LC3:
	.string	"r"
.LC4:
	.string	"Error opening source file."
.LC5:
	.string	"w"
	.align 8
.LC6:
	.string	"Error opening destination file."
.LC7:
	.string	"File copied successfully."
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
	subq	$256, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-224(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-112(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	-224(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -240(%rbp)
	cmpq	$0, -240(%rbp)
	jne	.L2
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
	movl	$1, %eax
	jmp	.L7
.L2:
	leaq	-112(%rbp), %rax
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -232(%rbp)
	cmpq	$0, -232(%rbp)
	jne	.L5
	leaq	.LC6(%rip), %rdi
	call	puts@PLT
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	$1, %eax
	jmp	.L7
.L6:
	movsbl	-241(%rbp), %eax
	movq	-232(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fputc@PLT
.L5:
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	fgetc@PLT
	movb	%al, -241(%rbp)
	cmpb	$-1, -241(%rbp)
	jne	.L6
	leaq	.LC7(%rip), %rdi
	call	puts@PLT
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	$0, %eax
.L7:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L8
	call	__stack_chk_fail@PLT
.L8:
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
