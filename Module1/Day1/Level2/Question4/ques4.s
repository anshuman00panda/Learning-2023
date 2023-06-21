	.file	"ques4.c"
	.text
	.globl	find_character_type
	.type	find_character_type, @function
find_character_type:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movsbq	-4(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L2
	movl	$1, %eax
	jmp	.L3
.L2:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movsbq	-4(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L4
	movl	$2, %eax
	jmp	.L3
.L4:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movsbq	-4(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L5
	movl	$3, %eax
	jmp	.L3
.L5:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movsbq	-4(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L6
	movl	$4, %eax
	jmp	.L3
.L6:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movsbq	-4(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$16384, %eax
	testl	%eax, %eax
	je	.L7
	movl	$5, %eax
	jmp	.L3
.L7:
	movl	$-1, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	find_character_type, .-find_character_type
	.section	.rodata
.LC0:
	.string	"Type: Uppercase Alphabet"
.LC1:
	.string	"Type: Lowercase Alphabet"
.LC2:
	.string	"Type: Digit"
.LC3:
	.string	"Type: Printable Symbol"
.LC4:
	.string	"Type: Non-Printable Symbol"
.LC5:
	.string	"Type: Unknown"
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
	movb	$33, -5(%rbp)
	movsbl	-5(%rbp), %eax
	movl	%eax, %edi
	call	find_character_type
	movl	%eax, -4(%rbp)
	cmpl	$5, -4(%rbp)
	ja	.L9
	movl	-4(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L11(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L11(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L11:
	.long	.L9-.L11
	.long	.L15-.L11
	.long	.L14-.L11
	.long	.L13-.L11
	.long	.L12-.L11
	.long	.L10-.L11
	.text
.L15:
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	jmp	.L16
.L14:
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	jmp	.L16
.L13:
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	jmp	.L16
.L12:
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	jmp	.L16
.L10:
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
	jmp	.L16
.L9:
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
.L16:
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
