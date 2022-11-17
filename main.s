	.file	"main.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"\320\235\320\265\320\262\320\265\321\200\320\275\320\276\320\265 \320\272\320\276\320\273\320\273\320\270\321\207\320\265\321\201\321\202\320\262\320\276 \320\277\320\260\321\200\320\260\320\274\320\265\321\202\321\200\320\276\320\262!"
.LC1:
	.string	"file"
.LC2:
	.string	"r"
	.align 8
.LC3:
	.string	"\320\244\320\260\320\271\320\273\320\260 \320\275\320\265 \321\201\321\203\321\211\320\265\321\201\321\202\320\262\321\203\320\265\321\202!"
.LC4:
	.string	"%s"
.LC5:
	.string	"w"
.LC6:
	.string	"rand"
.LC7:
	.string	"min > max"
	.align 8
.LC8:
	.string	"\320\235\320\265\320\262\320\265\321\200\320\275\320\260\321\217 \320\272\320\276\320\274\320\260\320\275\320\264\320\260!"
.LC9:
	.string	"%ldnanosecons"
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
	sub	rsp, 2128
	mov	DWORD PTR -10308[rbp], edi
	mov	QWORD PTR -10320[rbp], rsi
	mov	edi, 0
	call	time@PLT
	mov	edi, eax
	call	srand@PLT
	cmp	DWORD PTR -10308[rbp], 4
	je	.L2
	lea	rdi, .LC0[rip]
	mov	eax, 0
	call	printf@PLT
	mov	eax, 1
	jmp	.L11
.L2:
	lea	rax, -10288[rbp]
	mov	rsi, rax
	mov	edi, 1
	call	clock_gettime@PLT
	mov	rax, QWORD PTR -10320[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	lea	rsi, .LC1[rip]
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	je	.L4
	mov	rax, QWORD PTR -10320[rbp]
	add	rax, 16
	mov	rax, QWORD PTR [rax]
	lea	rsi, .LC2[rip]
	mov	rdi, rax
	call	fopen@PLT
	mov	QWORD PTR -24[rbp], rax
	cmp	QWORD PTR -24[rbp], 0
	jne	.L5
	lea	rdi, .LC3[rip]
	mov	eax, 0
	call	printf@PLT
	mov	eax, 2
	jmp	.L11
.L5:
	lea	rdx, -10272[rbp]
	mov	rax, QWORD PTR -24[rbp]
	lea	rsi, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_fscanf@PLT
	lea	rax, -10272[rbp]
	mov	rdi, rax
	call	TurnOver@PLT
	mov	rax, QWORD PTR -10320[rbp]
	add	rax, 24
	mov	rax, QWORD PTR [rax]
	lea	rsi, .LC5[rip]
	mov	rdi, rax
	call	fopen@PLT
	mov	QWORD PTR -32[rbp], rax
	mov	rdx, QWORD PTR -32[rbp]
	lea	rax, -10272[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	fputs@PLT
	jmp	.L6
.L4:
	mov	rax, QWORD PTR -10320[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	lea	rdx, .LC6[rip]
	cmp	rax, rdx
	jne	.L7
	mov	rax, QWORD PTR -10320[rbp]
	add	rax, 16
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	atoi@PLT
	mov	DWORD PTR -8[rbp], eax
	mov	rax, QWORD PTR -10320[rbp]
	add	rax, 24
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	atoi@PLT
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jle	.L8
	lea	rdi, .LC7[rip]
	mov	eax, 0
	call	printf@PLT
	mov	eax, 3
	jmp	.L11
.L8:
	call	rand@PLT
	mov	edx, DWORD PTR -12[rbp]
	sub	edx, DWORD PTR -8[rbp]
	lea	ecx, 1[rdx]
	cdq
	idiv	ecx
	mov	eax, DWORD PTR -8[rbp]
	add	eax, edx
	mov	DWORD PTR -12[rbp], eax
	mov	DWORD PTR -4[rbp], 0
	jmp	.L9
.L10:
	call	rand@PLT
	movsx	rdx, eax
	imul	rdx, rdx, -1370734243
	shr	rdx, 32
	add	edx, eax
	mov	ecx, edx
	sar	ecx, 6
	cdq
	sub	ecx, edx
	mov	edx, ecx
	imul	edx, edx, 94
	sub	eax, edx
	mov	edx, eax
	mov	eax, edx
	add	eax, 33
	mov	edx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	BYTE PTR -10272[rbp+rax], dl
	add	DWORD PTR -4[rbp], 1
.L9:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jl	.L10
	lea	rax, -10272[rbp]
	mov	rdi, rax
	call	puts@PLT
	lea	rax, -10272[rbp]
	mov	rdi, rax
	call	TurnOver@PLT
	lea	rax, -10272[rbp]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L6
.L7:
	lea	rdi, .LC8[rip]
	mov	eax, 0
	call	printf@PLT
	mov	rax, QWORD PTR -10320[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	mov	rsi, rax
	lea	rdi, .LC4[rip]
	mov	eax, 0
	call	printf@PLT
	mov	eax, 4
	jmp	.L11
.L6:
	lea	rax, -10304[rbp]
	mov	rsi, rax
	mov	edi, 1
	call	clock_gettime@PLT
	lea	rdx, -10304[rbp]
	lea	rax, -10288[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	TimeSpecDiff@PLT
	mov	rsi, rax
	lea	rdi, .LC9[rip]
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
.L11:
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
