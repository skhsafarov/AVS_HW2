	.file	"main.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%s"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 4096
	or	QWORD PTR [rsp], 0
	sub	rsp, 4096
	or	QWORD PTR [rsp], 0
	sub	rsp, 2064
	mov	DWORD PTR -4[rbp], 0
	lea	rax, -10256[rbp]
	mov	rsi, rax
	lea	rdi, .LC0[rip]
	mov	eax, 0
	call	__isoc99_scanf@PLT
	nop
.L2:
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -4[rbp], edx
	cdqe
	movzx	eax, BYTE PTR -10256[rbp+rax]
	test	al, al
	jne	.L2
	mov	eax, DWORD PTR -4[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -8[rbp], eax
	sub	DWORD PTR -4[rbp], 2
.L3:
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	edx, BYTE PTR -10256[rbp+rax]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	movzx	eax, BYTE PTR -10256[rbp+rax]
	xor	edx, eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	BYTE PTR -10256[rbp+rax], dl
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	edx, BYTE PTR -10256[rbp+rax]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	movzx	eax, BYTE PTR -10256[rbp+rax]
	xor	edx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	BYTE PTR -10256[rbp+rax], dl
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	edx, BYTE PTR -10256[rbp+rax]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	movzx	eax, BYTE PTR -10256[rbp+rax]
	xor	edx, eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	BYTE PTR -10256[rbp+rax], dl
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -8[rbp], edx
	cdqe
	movzx	eax, BYTE PTR -10256[rbp+rax]
	test	al, al
	jne	.L3
	lea	rax, -10256[rbp]
	mov	rsi, rax
	lea	rdi, .LC0[rip]
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	leave
	ret
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
