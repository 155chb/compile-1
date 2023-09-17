	.file	"fib_1.c"
	.text
	.p2align 4
	.globl	fib
	.type	fib, @function
fib:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$1, %eax
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movl	%edi, 4(%rsp)
	movl	$0, 8(%rsp)
	cmpl	$2, %edi
	jle	.L1
.L2:
	movl	4(%rsp), %eax
	movl	$0, 12(%rsp)
	subl	$1, %eax
	movl	%eax, (%rsp)
	cmpl	$2, %eax
	je	.L56
.L3:
	movl	(%rsp), %eax
	movl	$0, 16(%rsp)
	leal	-1(%rax), %r9d
	cmpl	$2, %r9d
	je	.L57
.L5:
	leal	-1(%r9), %esi
	xorl	%r8d, %r8d
	cmpl	$2, %esi
	je	.L58
.L7:
	leal	-1(%rsi), %ebp
	xorl	%ecx, %ecx
	cmpl	$2, %ebp
	je	.L59
.L9:
	leal	-1(%rbp), %ebx
	xorl	%r14d, %r14d
	movl	%ebx, %r10d
	cmpl	$2, %ebx
	je	.L60
.L11:
	leal	-1(%r10), %edx
	xorl	%ebx, %ebx
	cmpl	$2, %edx
	je	.L61
.L13:
	leal	-1(%rdx), %r12d
	xorl	%r15d, %r15d
	movl	%ebx, %r11d
	cmpl	$2, %r12d
	je	.L62
.L15:
	leal	-1(%r12), %r13d
	xorl	%ebx, %ebx
	cmpl	$2, %r13d
	je	.L63
.L17:
	leal	-1(%r13), %edi
	movl	%edx, 44(%rsp)
	subl	$2, %r13d
	movl	%r10d, 40(%rsp)
	movl	%r11d, 36(%rsp)
	movl	%ecx, 32(%rsp)
	movl	%r8d, 28(%rsp)
	movl	%esi, 24(%rsp)
	movl	%r9d, 20(%rsp)
	call	fib
	movl	20(%rsp), %r9d
	movl	24(%rsp), %esi
	addl	%eax, %ebx
	cmpl	$2, %r13d
	movl	28(%rsp), %r8d
	movl	32(%rsp), %ecx
	movl	36(%rsp), %r11d
	movl	40(%rsp), %r10d
	movl	44(%rsp), %edx
	jg	.L17
	addl	$1, %ebx
.L19:
	subl	$2, %r12d
	addl	%ebx, %r15d
	cmpl	$2, %r12d
	jg	.L15
	movl	%r11d, %ebx
	addl	$1, %r15d
.L18:
	subl	$2, %edx
	addl	%r15d, %ebx
	cmpl	$2, %edx
	jg	.L13
	addl	$1, %ebx
.L16:
	subl	$2, %r10d
	addl	%ebx, %r14d
	cmpl	$2, %r10d
	jg	.L11
	addl	$1, %r14d
.L14:
	subl	$2, %ebp
	addl	%r14d, %ecx
	cmpl	$2, %ebp
	jg	.L9
	addl	$1, %ecx
.L12:
	subl	$2, %esi
	addl	%ecx, %r8d
	cmpl	$2, %esi
	jg	.L7
	addl	$1, %r8d
.L10:
	subl	$2, %r9d
	addl	%r8d, 16(%rsp)
	cmpl	$2, %r9d
	jg	.L5
	movl	16(%rsp), %eax
	addl	$1, %eax
.L8:
	subl	$2, (%rsp)
	movl	(%rsp), %edi
	addl	%eax, 12(%rsp)
	cmpl	$2, %edi
	jg	.L3
	movl	12(%rsp), %eax
	addl	$1, %eax
.L6:
	subl	$2, 4(%rsp)
	movl	4(%rsp), %edi
	addl	%eax, 8(%rsp)
	cmpl	$2, %edi
	jg	.L2
	movl	8(%rsp), %eax
	addl	$1, %eax
.L1:
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L61:
	.cfi_restore_state
	movl	$1, %ebx
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L62:
	movl	$1, %r15d
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L63:
	movl	$1, %ebx
	jmp	.L19
.L60:
	movl	$1, %r14d
	jmp	.L14
.L59:
	movl	$1, %ecx
	jmp	.L12
.L58:
	movl	$1, %r8d
	jmp	.L10
.L57:
	movl	$1, %eax
	jmp	.L8
.L56:
	movl	$1, %eax
	jmp	.L6
	.cfi_endproc
.LFE7:
	.size	fib, .-fib
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d"
.LC1:
	.string	"%d\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	leaq	.LC0(%rip), %rdi
	xorl	%r13d, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	leaq	4(%rsp), %rsi
	movl	$0, 4(%rsp)
	call	__isoc99_scanf@PLT
	movl	4(%rsp), %r12d
	cmpl	$2, %r12d
	jle	.L67
.L65:
	leal	-1(%r12), %ebx
	xorl	%ebp, %ebp
	cmpl	$2, %ebx
	je	.L77
.L66:
	leal	-1(%rbx), %edi
	subl	$2, %ebx
	call	fib
	addl	%eax, %ebp
	cmpl	$2, %ebx
	jg	.L66
	addl	$1, %ebp
.L68:
	subl	$2, %r12d
	addl	%ebp, %r13d
	cmpl	$2, %r12d
	jg	.L65
.L67:
	xorl	%eax, %eax
	leal	1(%r13), %esi
	leaq	.LC1(%rip), %rdi
	call	printf@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L78
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L77:
	.cfi_restore_state
	movl	$1, %ebp
	jmp	.L68
.L78:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
