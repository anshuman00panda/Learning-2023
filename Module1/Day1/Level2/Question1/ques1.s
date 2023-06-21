	.file	"ques1.c"
	.text
	.globl	find_greatest
	.type	find_greatest, @function
find_greatest:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L2
	movl	-4(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.L2
	movl	-4(%rbp), %eax
	jmp	.L3
.L2:
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.L4
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.L4
	movl	-8(%rbp), %eax
	jmp	.L3
.L4:
	movl	-12(%rbp), %eax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	find_greatest, .-find_greatest
	.section	.rodata
.LC0:
	.string	"Enter three numbers: "
.LC1:
	.string	"%d %d %d"
.LC2:
	.string	"The greatest number is: %d\n"
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
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-16(%rbp), %rcx
	leaq	-20(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	find_greatest
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L7
	call	__stack_chk_fail@PLT
.L7:
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
