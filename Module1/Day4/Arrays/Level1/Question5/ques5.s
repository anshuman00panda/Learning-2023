	.file	"ques5.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"Difference between even-indexed and odd-indexed elements: %d\n"
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
	subq	$64, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$64, -48(%rbp)
	movl	$84, -44(%rbp)
	movl	$20, -40(%rbp)
	movl	$36, -36(%rbp)
	movl	$12, -32(%rbp)
	movl	$90, -28(%rbp)
	movl	$72, -24(%rbp)
	movl	$10, -20(%rbp)
	movl	$45, -16(%rbp)
	movl	$56, -12(%rbp)
	movl	$0, -64(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -56(%rbp)
	jmp	.L2
.L5:
	movl	-56(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L3
	movl	-56(%rbp), %eax
	cltq
	movl	-48(%rbp,%rax,4), %eax
	addl	%eax, -64(%rbp)
	jmp	.L4
.L3:
	movl	-56(%rbp), %eax
	cltq
	movl	-48(%rbp,%rax,4), %eax
	addl	%eax, -60(%rbp)
.L4:
	addl	$1, -56(%rbp)
.L2:
	cmpl	$9, -56(%rbp)
	jle	.L5
	movl	-64(%rbp), %eax
	subl	-60(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L7
	call	__stack_chk_fail@PLT
.L7:
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
