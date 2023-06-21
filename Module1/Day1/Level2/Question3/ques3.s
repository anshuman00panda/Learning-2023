	.file	"ques3.c"
	.text
	.globl	is_vowel
	.type	is_vowel, @function
is_vowel:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movsbl	-4(%rbp), %eax
	subl	$65, %eax
	cmpl	$52, %eax
	ja	.L2
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L4(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L4(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L4:
	.long	.L3-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L3-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L3-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L3-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L3-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L3-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L3-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L3-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L3-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L3-.L4
	.text
.L3:
	movl	$1, %eax
	jmp	.L5
.L2:
	movl	$0, %eax
.L5:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	is_vowel, .-is_vowel
	.section	.rodata
.LC0:
	.string	"Vowel"
.LC1:
	.string	"Not Vowel"
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
	movb	$101, -5(%rbp)
	movsbl	-5(%rbp), %eax
	movl	%eax, %edi
	call	is_vowel
	movl	%eax, -4(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L7
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	jmp	.L8
.L7:
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
.L8:
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
