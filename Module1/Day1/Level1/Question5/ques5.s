	.file	"ques5.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"Error: Invalid operation type."
	.text
	.globl	bit_operations
	.type	bit_operations, @function
bit_operations:
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
	movl	%esi, -8(%rbp)
	cmpl	$3, -8(%rbp)
	je	.L2
	cmpl	$3, -8(%rbp)
	jg	.L3
	cmpl	$1, -8(%rbp)
	je	.L4
	cmpl	$2, -8(%rbp)
	je	.L5
	jmp	.L3
.L4:
	orl	$1, -4(%rbp)
	jmp	.L6
.L5:
	andl	$2147483647, -4(%rbp)
	jmp	.L6
.L2:
	xorl	$32768, -4(%rbp)
	jmp	.L6
.L3:
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	movl	$-1, %eax
	jmp	.L7
.L6:
	movl	-4(%rbp), %eax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	bit_operations, .-bit_operations
	.section	.rodata
.LC1:
	.string	"Enter the 32-bit integer: "
.LC2:
	.string	"%d"
	.align 8
.LC3:
	.string	"Enter the operation type (1, 2, or 3): "
.LC4:
	.string	"Result: %d\n"
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
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-20(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	bit_operations
	movl	%eax, -12(%rbp)
	cmpl	$-1, -12(%rbp)
	je	.L9
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L9:
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L11
	call	__stack_chk_fail@PLT
.L11:
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
