	.file	"memory.c"
	.text
.Ltext0:
	.globl	my_memcpy
	.type	my_memcpy, @function
my_memcpy:
.LFB0:
	.file 1 "memory.c"
	.loc 1 16 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 1 18 0
	movq	$0, -8(%rbp)
	jmp	.L2
.L3:
	.loc 1 19 0 discriminator 3
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-32(%rbp), %rax
	movb	%dl, (%rax)
	.loc 1 20 0 discriminator 3
	addq	$1, -24(%rbp)
	.loc 1 21 0 discriminator 3
	addq	$1, -32(%rbp)
	.loc 1 18 0 discriminator 3
	addq	$1, -8(%rbp)
.L2:
	.loc 1 18 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L3
	.loc 1 23 0 is_stmt 1
	movq	-32(%rbp), %rax
	.loc 1 24 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	my_memcpy, .-my_memcpy
	.globl	my_memmove
	.type	my_memmove, @function
my_memmove:
.LFB1:
	.loc 1 26 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 1 27 0
	movq	$0, -16(%rbp)
	.loc 1 30 0
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	.loc 1 31 0
	movq	$0, -16(%rbp)
	jmp	.L6
.L7:
	.loc 1 33 0 discriminator 3
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	.loc 1 31 0 discriminator 3
	addq	$1, -16(%rbp)
.L6:
	.loc 1 31 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L7
	.loc 1 36 0 is_stmt 1
	movq	$0, -16(%rbp)
	jmp	.L8
.L9:
	.loc 1 38 0 discriminator 3
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	.loc 1 36 0 discriminator 3
	addq	$1, -16(%rbp)
.L8:
	.loc 1 36 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L9
	.loc 1 44 0 is_stmt 1
	movq	-32(%rbp), %rax
	.loc 1 45 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	my_memmove, .-my_memmove
	.globl	my_memset
	.type	my_memset, @function
my_memset:
.LFB2:
	.loc 1 48 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, %eax
	movb	%al, -36(%rbp)
	.loc 1 51 0
	movq	$0, -16(%rbp)
	jmp	.L12
.L13:
	.loc 1 52 0 discriminator 3
	movq	-24(%rbp), %rax
	movzbl	-36(%rbp), %edx
	movb	%dl, (%rax)
	.loc 1 53 0 discriminator 3
	addq	$1, -24(%rbp)
	.loc 1 51 0 discriminator 3
	addq	$1, -16(%rbp)
.L12:
	.loc 1 51 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L13
	.loc 1 55 0 is_stmt 1
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 1 56 0
	movq	-8(%rbp), %rax
	.loc 1 57 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	my_memset, .-my_memset
	.globl	my_memzero
	.type	my_memzero, @function
my_memzero:
.LFB3:
	.loc 1 59 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 61 0
	movq	$0, -8(%rbp)
	jmp	.L16
.L17:
	.loc 1 62 0 discriminator 3
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	.loc 1 61 0 discriminator 3
	addq	$1, -8(%rbp)
.L16:
	.loc 1 61 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L17
	.loc 1 64 0 is_stmt 1
	movq	-24(%rbp), %rax
	.loc 1 65 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	my_memzero, .-my_memzero
	.globl	my_reverse
	.type	my_reverse, @function
my_reverse:
.LFB4:
	.loc 1 67 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 1 71 0
	movq	-48(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	jne	.L20
	.loc 1 72 0
	movq	-48(%rbp), %rax
	shrq	%rax
	movq	%rax, -8(%rbp)
	jmp	.L21
.L20:
	.loc 1 75 0
	movq	-48(%rbp), %rax
	subq	$1, %rax
	shrq	%rax
	movq	%rax, -8(%rbp)
.L21:
	.loc 1 77 0
	movq	$0, -16(%rbp)
	jmp	.L22
.L23:
	.loc 1 78 0 discriminator 3
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -17(%rbp)
	.loc 1 79 0 discriminator 3
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	subq	-16(%rbp), %rax
	leaq	-1(%rax), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	.loc 1 80 0 discriminator 3
	movq	-48(%rbp), %rax
	subq	-16(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-17(%rbp), %eax
	movb	%al, (%rdx)
	.loc 1 77 0 discriminator 3
	addq	$1, -16(%rbp)
.L22:
	.loc 1 77 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	.L23
	.loc 1 82 0 is_stmt 1
	movq	-40(%rbp), %rax
	.loc 1 83 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	my_reverse, .-my_reverse
	.globl	reserve_words
	.type	reserve_words, @function
reserve_words:
.LFB5:
	.loc 1 84 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 87 0
	movq	-24(%rbp), %rax
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	.loc 1 88 0
	movq	-8(%rbp), %rax
	.loc 1 89 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	reserve_words, .-reserve_words
	.globl	free_words
	.type	free_words, @function
free_words:
.LFB6:
	.loc 1 91 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 96 0
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 97 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	free_words, .-free_words
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/6/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "/usr/include/stdint.h"
	.file 7 "/usr/include/malloc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x633
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF74
	.byte	0xc
	.long	.LASF75
	.long	.LASF76
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF8
	.byte	0x2
	.byte	0xd8
	.long	0x38
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF1
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF2
	.uleb128 0x5
	.byte	0x8
	.long	0x5a
	.uleb128 0x6
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF5
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x83
	.long	0x46
	.uleb128 0x2
	.long	.LASF10
	.byte	0x3
	.byte	0x84
	.long	0x46
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x5
	.byte	0x8
	.long	0xa3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x8
	.long	.LASF42
	.byte	0xd8
	.byte	0x4
	.byte	0xf1
	.long	0x227
	.uleb128 0x9
	.long	.LASF13
	.byte	0x4
	.byte	0xf2
	.long	0x3f
	.byte	0
	.uleb128 0x9
	.long	.LASF14
	.byte	0x4
	.byte	0xf7
	.long	0x9d
	.byte	0x8
	.uleb128 0x9
	.long	.LASF15
	.byte	0x4
	.byte	0xf8
	.long	0x9d
	.byte	0x10
	.uleb128 0x9
	.long	.LASF16
	.byte	0x4
	.byte	0xf9
	.long	0x9d
	.byte	0x18
	.uleb128 0x9
	.long	.LASF17
	.byte	0x4
	.byte	0xfa
	.long	0x9d
	.byte	0x20
	.uleb128 0x9
	.long	.LASF18
	.byte	0x4
	.byte	0xfb
	.long	0x9d
	.byte	0x28
	.uleb128 0x9
	.long	.LASF19
	.byte	0x4
	.byte	0xfc
	.long	0x9d
	.byte	0x30
	.uleb128 0x9
	.long	.LASF20
	.byte	0x4
	.byte	0xfd
	.long	0x9d
	.byte	0x38
	.uleb128 0x9
	.long	.LASF21
	.byte	0x4
	.byte	0xfe
	.long	0x9d
	.byte	0x40
	.uleb128 0xa
	.long	.LASF22
	.byte	0x4
	.value	0x100
	.long	0x9d
	.byte	0x48
	.uleb128 0xa
	.long	.LASF23
	.byte	0x4
	.value	0x101
	.long	0x9d
	.byte	0x50
	.uleb128 0xa
	.long	.LASF24
	.byte	0x4
	.value	0x102
	.long	0x9d
	.byte	0x58
	.uleb128 0xa
	.long	.LASF25
	.byte	0x4
	.value	0x104
	.long	0x25f
	.byte	0x60
	.uleb128 0xa
	.long	.LASF26
	.byte	0x4
	.value	0x106
	.long	0x265
	.byte	0x68
	.uleb128 0xa
	.long	.LASF27
	.byte	0x4
	.value	0x108
	.long	0x3f
	.byte	0x70
	.uleb128 0xa
	.long	.LASF28
	.byte	0x4
	.value	0x10c
	.long	0x3f
	.byte	0x74
	.uleb128 0xa
	.long	.LASF29
	.byte	0x4
	.value	0x10e
	.long	0x7e
	.byte	0x78
	.uleb128 0xa
	.long	.LASF30
	.byte	0x4
	.value	0x112
	.long	0x62
	.byte	0x80
	.uleb128 0xa
	.long	.LASF31
	.byte	0x4
	.value	0x113
	.long	0x70
	.byte	0x82
	.uleb128 0xa
	.long	.LASF32
	.byte	0x4
	.value	0x114
	.long	0x26b
	.byte	0x83
	.uleb128 0xa
	.long	.LASF33
	.byte	0x4
	.value	0x118
	.long	0x27b
	.byte	0x88
	.uleb128 0xa
	.long	.LASF34
	.byte	0x4
	.value	0x121
	.long	0x89
	.byte	0x90
	.uleb128 0xa
	.long	.LASF35
	.byte	0x4
	.value	0x129
	.long	0x9b
	.byte	0x98
	.uleb128 0xa
	.long	.LASF36
	.byte	0x4
	.value	0x12a
	.long	0x9b
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF37
	.byte	0x4
	.value	0x12b
	.long	0x9b
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF38
	.byte	0x4
	.value	0x12c
	.long	0x9b
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF39
	.byte	0x4
	.value	0x12e
	.long	0x2d
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF40
	.byte	0x4
	.value	0x12f
	.long	0x3f
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF41
	.byte	0x4
	.value	0x131
	.long	0x281
	.byte	0xc4
	.byte	0
	.uleb128 0xb
	.long	.LASF77
	.byte	0x4
	.byte	0x96
	.uleb128 0x8
	.long	.LASF43
	.byte	0x18
	.byte	0x4
	.byte	0x9c
	.long	0x25f
	.uleb128 0x9
	.long	.LASF44
	.byte	0x4
	.byte	0x9d
	.long	0x25f
	.byte	0
	.uleb128 0x9
	.long	.LASF45
	.byte	0x4
	.byte	0x9e
	.long	0x265
	.byte	0x8
	.uleb128 0x9
	.long	.LASF46
	.byte	0x4
	.byte	0xa2
	.long	0x3f
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x22e
	.uleb128 0x5
	.byte	0x8
	.long	0xaa
	.uleb128 0xc
	.long	0xa3
	.long	0x27b
	.uleb128 0xd
	.long	0x94
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x227
	.uleb128 0xc
	.long	0xa3
	.long	0x291
	.uleb128 0xd
	.long	0x94
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.long	.LASF78
	.uleb128 0xf
	.long	.LASF47
	.byte	0x4
	.value	0x13b
	.long	0x291
	.uleb128 0xf
	.long	.LASF48
	.byte	0x4
	.value	0x13c
	.long	0x291
	.uleb128 0xf
	.long	.LASF49
	.byte	0x4
	.value	0x13d
	.long	0x291
	.uleb128 0x10
	.long	.LASF50
	.byte	0x5
	.byte	0xaa
	.long	0x265
	.uleb128 0x10
	.long	.LASF51
	.byte	0x5
	.byte	0xab
	.long	0x265
	.uleb128 0x10
	.long	.LASF52
	.byte	0x5
	.byte	0xac
	.long	0x265
	.uleb128 0x2
	.long	.LASF53
	.byte	0x6
	.byte	0x24
	.long	0x70
	.uleb128 0x2
	.long	.LASF54
	.byte	0x6
	.byte	0x26
	.long	0x3f
	.uleb128 0x2
	.long	.LASF55
	.byte	0x6
	.byte	0x30
	.long	0x5b
	.uleb128 0x2
	.long	.LASF56
	.byte	0x2
	.byte	0x95
	.long	0x46
	.uleb128 0x11
	.long	0x9b
	.long	0x316
	.uleb128 0x12
	.long	0x2fc
	.byte	0
	.uleb128 0x10
	.long	.LASF57
	.byte	0x7
	.byte	0x47
	.long	0x321
	.uleb128 0x5
	.byte	0x8
	.long	0x307
	.uleb128 0x13
	.long	0x337
	.uleb128 0x12
	.long	0x9b
	.uleb128 0x12
	.long	0x54
	.byte	0
	.uleb128 0x10
	.long	.LASF58
	.byte	0x7
	.byte	0x91
	.long	0x348
	.uleb128 0x5
	.byte	0x8
	.long	0x327
	.uleb128 0x14
	.long	0x342
	.uleb128 0x11
	.long	0x9b
	.long	0x361
	.uleb128 0x12
	.long	0x2d
	.uleb128 0x12
	.long	0x54
	.byte	0
	.uleb128 0x10
	.long	.LASF59
	.byte	0x7
	.byte	0x94
	.long	0x372
	.uleb128 0x5
	.byte	0x8
	.long	0x34d
	.uleb128 0x14
	.long	0x36c
	.uleb128 0x11
	.long	0x9b
	.long	0x390
	.uleb128 0x12
	.long	0x9b
	.uleb128 0x12
	.long	0x2d
	.uleb128 0x12
	.long	0x54
	.byte	0
	.uleb128 0x10
	.long	.LASF60
	.byte	0x7
	.byte	0x97
	.long	0x3a1
	.uleb128 0x5
	.byte	0x8
	.long	0x377
	.uleb128 0x14
	.long	0x39b
	.uleb128 0x11
	.long	0x9b
	.long	0x3bf
	.uleb128 0x12
	.long	0x2d
	.uleb128 0x12
	.long	0x2d
	.uleb128 0x12
	.long	0x54
	.byte	0
	.uleb128 0x10
	.long	.LASF61
	.byte	0x7
	.byte	0x9b
	.long	0x3d0
	.uleb128 0x5
	.byte	0x8
	.long	0x3a6
	.uleb128 0x14
	.long	0x3ca
	.uleb128 0x15
	.uleb128 0x10
	.long	.LASF62
	.byte	0x7
	.byte	0x9f
	.long	0x3e7
	.uleb128 0x5
	.byte	0x8
	.long	0x3d5
	.uleb128 0x14
	.long	0x3e1
	.uleb128 0x16
	.long	.LASF72
	.byte	0x1
	.byte	0x5b
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x418
	.uleb128 0x17
	.string	"src"
	.byte	0x1
	.byte	0x5b
	.long	0x418
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x2e6
	.uleb128 0x18
	.long	.LASF64
	.byte	0x1
	.byte	0x54
	.long	0x418
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x45c
	.uleb128 0x19
	.long	.LASF63
	.byte	0x1
	.byte	0x54
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.string	"src"
	.byte	0x1
	.byte	0x56
	.long	0x418
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1b
	.long	.LASF65
	.byte	0x1
	.byte	0x43
	.long	0x4c0
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x4c0
	.uleb128 0x17
	.string	"src"
	.byte	0x1
	.byte	0x43
	.long	0x4c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.long	.LASF63
	.byte	0x1
	.byte	0x43
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x44
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1a
	.string	"l"
	.byte	0x1
	.byte	0x45
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.long	.LASF66
	.byte	0x1
	.byte	0x46
	.long	0x2f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x2f1
	.uleb128 0x1b
	.long	.LASF67
	.byte	0x1
	.byte	0x3b
	.long	0x4c0
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x510
	.uleb128 0x17
	.string	"src"
	.byte	0x1
	.byte	0x3b
	.long	0x4c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.long	.LASF63
	.byte	0x1
	.byte	0x3b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x3c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1b
	.long	.LASF68
	.byte	0x1
	.byte	0x2f
	.long	0x576
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x576
	.uleb128 0x17
	.string	"src"
	.byte	0x1
	.byte	0x2f
	.long	0x4c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.long	.LASF63
	.byte	0x1
	.byte	0x2f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.long	.LASF69
	.byte	0x1
	.byte	0x2f
	.long	0x2f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x31
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.long	.LASF70
	.byte	0x1
	.byte	0x32
	.long	0x576
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x2db
	.uleb128 0x18
	.long	.LASF71
	.byte	0x1
	.byte	0x1a
	.long	0x4c0
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x5e2
	.uleb128 0x17
	.string	"src"
	.byte	0x1
	.byte	0x1a
	.long	0x4c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"dst"
	.byte	0x1
	.byte	0x1a
	.long	0x4c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.long	.LASF63
	.byte	0x1
	.byte	0x1a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x1b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.long	.LASF66
	.byte	0x1
	.byte	0x1e
	.long	0x4c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.long	.LASF73
	.byte	0x1
	.byte	0x10
	.long	0x4c0
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x17
	.string	"src"
	.byte	0x1
	.byte	0x10
	.long	0x4c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"dst"
	.byte	0x1
	.byte	0x10
	.long	0x4c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.long	.LASF63
	.byte	0x1
	.byte	0x10
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x11
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF9:
	.string	"__off_t"
.LASF14:
	.string	"_IO_read_ptr"
.LASF26:
	.string	"_chain"
.LASF8:
	.string	"size_t"
.LASF32:
	.string	"_shortbuf"
.LASF64:
	.string	"reserve_words"
.LASF49:
	.string	"_IO_2_1_stderr_"
.LASF20:
	.string	"_IO_buf_base"
.LASF67:
	.string	"my_memzero"
.LASF76:
	.string	"/home/anay/repos/project1_anay_diptarshi/Project1"
.LASF2:
	.string	"long long int"
.LASF6:
	.string	"signed char"
.LASF27:
	.string	"_fileno"
.LASF15:
	.string	"_IO_read_end"
.LASF1:
	.string	"long int"
.LASF13:
	.string	"_flags"
.LASF71:
	.string	"my_memmove"
.LASF21:
	.string	"_IO_buf_end"
.LASF30:
	.string	"_cur_column"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF70:
	.string	"isrc"
.LASF66:
	.string	"temp"
.LASF57:
	.string	"__morecore"
.LASF43:
	.string	"_IO_marker"
.LASF50:
	.string	"stdin"
.LASF58:
	.string	"__free_hook"
.LASF5:
	.string	"unsigned int"
.LASF0:
	.string	"long unsigned int"
.LASF72:
	.string	"free_words"
.LASF78:
	.string	"_IO_FILE_plus"
.LASF18:
	.string	"_IO_write_ptr"
.LASF45:
	.string	"_sbuf"
.LASF65:
	.string	"my_reverse"
.LASF4:
	.string	"short unsigned int"
.LASF22:
	.string	"_IO_save_base"
.LASF33:
	.string	"_lock"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF51:
	.string	"stdout"
.LASF56:
	.string	"ptrdiff_t"
.LASF47:
	.string	"_IO_2_1_stdin_"
.LASF59:
	.string	"__malloc_hook"
.LASF53:
	.string	"int8_t"
.LASF11:
	.string	"sizetype"
.LASF19:
	.string	"_IO_write_end"
.LASF77:
	.string	"_IO_lock_t"
.LASF42:
	.string	"_IO_FILE"
.LASF68:
	.string	"my_memset"
.LASF46:
	.string	"_pos"
.LASF25:
	.string	"_markers"
.LASF54:
	.string	"int32_t"
.LASF3:
	.string	"unsigned char"
.LASF7:
	.string	"short int"
.LASF61:
	.string	"__memalign_hook"
.LASF31:
	.string	"_vtable_offset"
.LASF48:
	.string	"_IO_2_1_stdout_"
.LASF69:
	.string	"value"
.LASF63:
	.string	"length"
.LASF12:
	.string	"char"
.LASF44:
	.string	"_next"
.LASF10:
	.string	"__off64_t"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF35:
	.string	"__pad1"
.LASF36:
	.string	"__pad2"
.LASF37:
	.string	"__pad3"
.LASF38:
	.string	"__pad4"
.LASF39:
	.string	"__pad5"
.LASF74:
	.string	"GNU C99 6.3.0 20170406 -mtune=generic -march=x86-64 -g -O0 -std=c99 -fstack-protector-strong"
.LASF41:
	.string	"_unused2"
.LASF52:
	.string	"stderr"
.LASF55:
	.string	"uint8_t"
.LASF23:
	.string	"_IO_backup_base"
.LASF73:
	.string	"my_memcpy"
.LASF60:
	.string	"__realloc_hook"
.LASF62:
	.string	"__after_morecore_hook"
.LASF17:
	.string	"_IO_write_base"
.LASF75:
	.string	"memory.c"
	.ident	"GCC: (Ubuntu 6.3.0-12ubuntu2) 6.3.0 20170406"
	.section	.note.GNU-stack,"",@progbits
