	.file	"ques1p2.c"
	.text
	.globl	calculateVolumeArrow
	.type	calculateVolumeArrow, @function
calculateVolumeArrow:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm1
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm0
	mulsd	%xmm0, %xmm1
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0
	mulsd	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	calculateVolumeArrow, .-calculateVolumeArrow
	.globl	calculateSurfaceAreaDot
	.type	calculateSurfaceAreaDot, @function
calculateSurfaceAreaDot:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movsd	16(%rbp), %xmm1
	movsd	24(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	16(%rbp), %xmm1
	movsd	32(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	24(%rbp), %xmm1
	movsd	32(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-24(%rbp), %xmm0
	addsd	-16(%rbp), %xmm0
	addsd	-8(%rbp), %xmm0
	addsd	%xmm0, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	calculateSurfaceAreaDot, .-calculateSurfaceAreaDot
	.section	.rodata
.LC3:
	.string	"Box Dimensions:"
.LC4:
	.string	"Length (Arrow): %.2f\n"
.LC5:
	.string	"Width (Arrow): %.2f\n"
.LC6:
	.string	"Height (Arrow): %.2f\n"
.LC7:
	.string	"Length (Dot): %.2f\n"
.LC8:
	.string	"Width (Dot): %.2f\n"
.LC9:
	.string	"Height (Dot): %.2f\n"
.LC10:
	.string	"Volume (Arrow): %.2f\n"
.LC11:
	.string	"Surface Area (Dot): %.2f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
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
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	.LC1(%rip), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	.LC2(%rip), %xmm0
	movsd	%xmm0, -16(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	calculateVolumeArrow
	movq	%xmm0, %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	pushq	16(%rax)
	pushq	8(%rax)
	pushq	(%rax)
	call	calculateSurfaceAreaDot
	addq	$24, %rsp
	movq	%xmm0, %rax
	movq	%rax, -40(%rbp)
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %xmm0
	leaq	.LC4(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %xmm0
	leaq	.LC5(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %xmm0
	leaq	.LC6(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$10, %edi
	call	putchar@PLT
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %xmm0
	leaq	.LC7(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %xmm0
	leaq	.LC8(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %xmm0
	leaq	.LC9(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$10, %edi
	call	putchar@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC10(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC11(%rip), %rdi
	movl	$1, %eax
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
.LFE2:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1075052544
	.align 8
.LC1:
	.long	0
	.long	1074266112
	.align 8
.LC2:
	.long	0
	.long	1074790400
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
