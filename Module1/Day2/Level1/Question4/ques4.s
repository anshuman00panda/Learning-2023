	.file	"ques4.c"
	.text
	.globl	countSetBits
	.type	countSetBits, @function
countSetBits:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L3:
	movl	-20(%rbp), %eax
	andl	$1, %eax
	addl	%eax, -4(%rbp)
	sarl	-20(%rbp)
.L2:
	cmpl	$0, -20(%rbp)
	jg	.L3
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	countSetBits, .-countSetBits
	.section	.rodata
.LC0:
	.string	"Total number of set bits: %d\n"
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
	movl	$1, -20(%rbp)
	movl	$244, -16(%rbp)
	movl	$65537, -12(%rbp)
	movl	$3, -24(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L6
.L7:
	movl	-28(%rbp), %eax
	cltq
	movl	-20(%rbp,%rax,4), %eax
	movl	%eax, %edi
	call	countSetBits
	addl	%eax, -32(%rbp)
	addl	$1, -28(%rbp)
.L6:
	movl	-28(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.L7
	movl	-32(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
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
