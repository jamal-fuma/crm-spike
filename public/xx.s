	.file	"xx.c"
	.section	.rodata
.LC0:
	.string	"Src=%p %*s\n"
.LC1:
	.string	"Dst=%p %*s\n"
	.text
.globl main
	.type	main, @function
main:
.LFB2:
	pushq	%rbp
.LCFI0:
	movq	%rsp, %rbp
.LCFI1:
	subq	$48, %rsp
.LCFI2:
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	leaq	-16(%rbp), %rax
	movl	$1195853639, (%rax)
	movl	$1195853639, 4(%rax)
	movw	$18247, 8(%rax)
	leaq	-16(%rbp), %rax
	addq	$2, %rax
	movl	$1094795585, (%rax)
	movl	$1094795585, 4(%rax)
	movw	$16705, 8(%rax)
	leaq	-16(%rbp), %rax
	addq	$4, %rax
	movl	$1111638594, (%rax)
	movw	$16962, 4(%rax)
	leaq	-16(%rbp), %rax
	addq	$6, %rax
	movw	$17219, (%rax)
	leaq	-16(%rbp), %rax
	addq	$8, %rax
	movw	$17476, (%rax)
	leaq	-16(%rbp), %rax
	addq	$10, %rax
	movw	$17733, (%rax)
	leaq	-32(%rbp), %rax
	movl	$1179010630, (%rax)
	movl	$1179010630, 4(%rax)
	movl	$1179010630, 8(%rax)
	movw	$17990, 12(%rax)
	movb	$70, 14(%rax)
	leaq	-16(%rbp), %rcx
	leaq	-16(%rbp), %rsi
	movl	$12, %edx
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	leaq	-32(%rbp), %rcx
	leaq	-32(%rbp), %rsi
	movl	$15, %edx
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	leaq	-16(%rbp), %rcx
	leaq	-16(%rbp), %rsi
	movl	$12, %edx
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	leaq	-16(%rbp), %rax
	leaq	2(%rax), %rdx
	leaq	-32(%rbp), %rcx
	movq	(%rdx), %rax
	movq	%rax, (%rcx)
	movzwl	8(%rdx), %eax
	movw	%ax, 8(%rcx)
	leaq	-32(%rbp), %rax
	leaq	13(%rax), %rdx
	leaq	-16(%rbp), %rax
	movl	(%rax), %eax
	movw	%ax, (%rdx)
	leaq	-32(%rbp), %rcx
	leaq	-32(%rbp), %rsi
	movl	$15, %edx
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	leave
	ret
.LFE2:
	.size	main, .-main
	.section	.eh_frame,"a",@progbits
.Lframe1:
	.long	.LECIE1-.LSCIE1
.LSCIE1:
	.long	0x0
	.byte	0x1
	.string	"zR"
	.uleb128 0x1
	.sleb128 -8
	.byte	0x10
	.uleb128 0x1
	.byte	0x3
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x1
	.align 8
.LECIE1:
.LSFDE1:
	.long	.LEFDE1-.LASFDE1
.LASFDE1:
	.long	.LASFDE1-.Lframe1
	.long	.LFB2
	.long	.LFE2-.LFB2
	.uleb128 0x0
	.byte	0x4
	.long	.LCFI0-.LFB2
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xd
	.uleb128 0x6
	.align 8
.LEFDE1:
	.ident	"GCC: (GNU) 4.1.2 (Gentoo 4.1.2 p1.0.2)"
	.section	.note.GNU-stack,"",@progbits
