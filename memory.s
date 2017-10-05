	.file	"memory.c"
	.text
.Ltext0:
	.globl	main
	.type	main, @function
main:
.LFB0:
	.file 1 "memory.c"
	.loc 1 12 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 13 0
	nop
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.globl	my_memcpy
	.type	my_memcpy, @function
my_memcpy:
.LFB1:
	.loc 1 15 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 17 0
	movl	$0, -4(%ebp)
	jmp	.L3
.L4:
	.loc 1 18 0 discriminator 3
	movl	12(%ebp), %edx
	movl	-4(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %ecx
	movl	-4(%ebp), %eax
	addl	%ecx, %eax
	movzbl	(%eax), %eax
	movb	%al, (%edx)
	.loc 1 17 0 discriminator 3
	addl	$1, -4(%ebp)
.L3:
	.loc 1 17 0 is_stmt 0 discriminator 1
	movl	-4(%ebp), %eax
	cmpl	16(%ebp), %eax
	jb	.L4
	.loc 1 20 0 is_stmt 1
	movl	12(%ebp), %eax
	.loc 1 21 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	my_memcpy, .-my_memcpy
	.globl	my_memmove
	.type	my_memmove, @function
my_memmove:
.LFB2:
	.loc 1 23 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 24 0
	movl	$0, -4(%ebp)
	.loc 1 25 0
	jmp	.L7
.L8:
	.loc 1 26 0
	addl	$1, 8(%ebp)
	.loc 1 27 0
	addl	$1, 12(%ebp)
	.loc 1 28 0
	addl	$1, -4(%ebp)
.L7:
	.loc 1 25 0
	movl	-4(%ebp), %eax
	cmpl	16(%ebp), %eax
	jb	.L8
.L9:
	.loc 1 31 0 discriminator 1
	movl	8(%ebp), %eax
	movzbl	(%eax), %edx
	movl	12(%ebp), %eax
	movb	%dl, (%eax)
	.loc 1 32 0 discriminator 1
	subl	$1, 8(%ebp)
	.loc 1 33 0 discriminator 1
	subl	$1, 12(%ebp)
	.loc 1 34 0 discriminator 1
	subl	$1, -4(%ebp)
	.loc 1 35 0 discriminator 1
	jmp	.L9
	.cfi_endproc
.LFE2:
	.size	my_memmove, .-my_memmove
	.globl	my_memset
	.type	my_memset, @function
my_memset:
.LFB3:
	.loc 1 38 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	movl	16(%ebp), %eax
	movb	%al, -20(%ebp)
	.loc 1 40 0
	movl	$0, -4(%ebp)
	jmp	.L11
.L12:
	.loc 1 41 0 discriminator 3
	movl	8(%ebp), %edx
	movl	-4(%ebp), %eax
	addl	%eax, %edx
	movzbl	-20(%ebp), %eax
	movb	%al, (%edx)
	.loc 1 40 0 discriminator 3
	addl	$1, -4(%ebp)
.L11:
	.loc 1 40 0 is_stmt 0 discriminator 1
	movl	-4(%ebp), %eax
	cmpl	12(%ebp), %eax
	jb	.L12
	.loc 1 43 0 is_stmt 1
	movl	8(%ebp), %eax
	.loc 1 44 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE3:
	.size	my_memset, .-my_memset
	.globl	my_memzero
	.type	my_memzero, @function
my_memzero:
.LFB4:
	.loc 1 46 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 48 0
	movl	$0, -4(%ebp)
	jmp	.L15
.L16:
	.loc 1 49 0 discriminator 3
	movl	8(%ebp), %edx
	movl	-4(%ebp), %eax
	addl	%edx, %eax
	movb	$0, (%eax)
	.loc 1 48 0 discriminator 3
	addl	$1, -4(%ebp)
.L15:
	.loc 1 48 0 is_stmt 0 discriminator 1
	movl	-4(%ebp), %eax
	cmpl	12(%ebp), %eax
	jb	.L16
	.loc 1 51 0 is_stmt 1
	movl	8(%ebp), %eax
	.loc 1 52 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4:
	.size	my_memzero, .-my_memzero
	.globl	my_reverse
	.type	my_reverse, @function
my_reverse:
.LFB5:
	.loc 1 54 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 58 0
	movl	12(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L19
	.loc 1 59 0
	movl	12(%ebp), %eax
	shrl	%eax
	movl	%eax, -8(%ebp)
	jmp	.L20
.L19:
	.loc 1 62 0
	movl	12(%ebp), %eax
	subl	$1, %eax
	shrl	%eax
	movl	%eax, -8(%ebp)
.L20:
	.loc 1 64 0
	movl	$0, -12(%ebp)
	jmp	.L21
.L22:
	.loc 1 65 0 discriminator 3
	movl	8(%ebp), %edx
	movl	-12(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -4(%ebp)
	.loc 1 66 0 discriminator 3
	movl	8(%ebp), %edx
	movl	-12(%ebp), %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	subl	-12(%ebp), %eax
	leal	-1(%eax), %ecx
	movl	8(%ebp), %eax
	addl	%ecx, %eax
	movzbl	(%eax), %eax
	movb	%al, (%edx)
	.loc 1 67 0 discriminator 3
	movl	12(%ebp), %eax
	subl	-12(%ebp), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	-4(%ebp), %edx
	movb	%dl, (%eax)
	.loc 1 64 0 discriminator 3
	addl	$1, -12(%ebp)
.L21:
	.loc 1 64 0 is_stmt 0 discriminator 1
	movl	-12(%ebp), %eax
	cmpl	-8(%ebp), %eax
	jb	.L22
	.loc 1 69 0 is_stmt 1
	movl	8(%ebp), %eax
	.loc 1 70 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE5:
	.size	my_reverse, .-my_reverse
	.globl	reserve_words
	.type	reserve_words, @function
reserve_words:
.LFB6:
	.loc 1 71 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 74 0
	movl	$0, -8(%ebp)
	jmp	.L25
.L26:
	.loc 1 75 0 discriminator 3
	addl	$4, -4(%ebp)
	.loc 1 74 0 discriminator 3
	addl	$1, -8(%ebp)
.L25:
	.loc 1 74 0 is_stmt 0 discriminator 1
	movl	-8(%ebp), %eax
	cmpl	8(%ebp), %eax
	jb	.L26
	.loc 1 77 0 is_stmt 1
	movl	-4(%ebp), %eax
	.loc 1 78 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE6:
	.size	reserve_words, .-reserve_words
	.globl	free_words
	.type	free_words, @function
free_words:
.LFB7:
	.loc 1 80 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 81 0
	jmp	.L29
.L30:
	.loc 1 82 0
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 83 0
	addl	$4, 8(%ebp)
.L29:
	.loc 1 81 0
	cmpl	$0, 8(%ebp)
	jne	.L30
	.loc 1 85 0
	nop
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE7:
	.size	free_words, .-free_words
.Letext0:
	.file 2 "/usr/lib/gcc/i686-linux-gnu/5/include/stddef.h"
	.file 3 "/usr/include/stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2b5
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF24
	.byte	0xc
	.long	.LASF25
	.long	.LASF26
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF11
	.byte	0x2
	.byte	0xd8
	.long	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF9
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x2
	.long	.LASF12
	.byte	0x3
	.byte	0x24
	.long	0x4c
	.uleb128 0x2
	.long	.LASF13
	.byte	0x3
	.byte	0x26
	.long	0x5a
	.uleb128 0x2
	.long	.LASF14
	.byte	0x3
	.byte	0x30
	.long	0x37
	.uleb128 0x5
	.long	.LASF27
	.byte	0x1
	.byte	0xc
	.long	.LFB0
	.long	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.long	.LASF16
	.byte	0x1
	.byte	0xf
	.long	0x106
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x106
	.uleb128 0x7
	.string	"src"
	.byte	0x1
	.byte	0xf
	.long	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x7
	.string	"dst"
	.byte	0x1
	.byte	0xf
	.long	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x8
	.long	.LASF15
	.byte	0x1
	.byte	0xf
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0x10
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x9a
	.uleb128 0x6
	.long	.LASF17
	.byte	0x1
	.byte	0x17
	.long	0x106
	.long	.LFB2
	.long	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x15c
	.uleb128 0x7
	.string	"src"
	.byte	0x1
	.byte	0x17
	.long	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x7
	.string	"dst"
	.byte	0x1
	.byte	0x17
	.long	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x8
	.long	.LASF15
	.byte	0x1
	.byte	0x17
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0x18
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x6
	.long	.LASF18
	.byte	0x1
	.byte	0x26
	.long	0x1ac
	.long	.LFB3
	.long	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ac
	.uleb128 0x7
	.string	"src"
	.byte	0x1
	.byte	0x26
	.long	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x8
	.long	.LASF15
	.byte	0x1
	.byte	0x26
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x8
	.long	.LASF19
	.byte	0x1
	.byte	0x26
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0x27
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x84
	.uleb128 0x6
	.long	.LASF20
	.byte	0x1
	.byte	0x2e
	.long	0x106
	.long	.LFB4
	.long	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f4
	.uleb128 0x7
	.string	"src"
	.byte	0x1
	.byte	0x2e
	.long	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x8
	.long	.LASF15
	.byte	0x1
	.byte	0x2e
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0x2f
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x6
	.long	.LASF21
	.byte	0x1
	.byte	0x36
	.long	0x106
	.long	.LFB5
	.long	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x250
	.uleb128 0x7
	.string	"src"
	.byte	0x1
	.byte	0x36
	.long	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x8
	.long	.LASF15
	.byte	0x1
	.byte	0x36
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0x37
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.string	"l"
	.byte	0x1
	.byte	0x38
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xb
	.long	.LASF22
	.byte	0x1
	.byte	0x39
	.long	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x6
	.long	.LASF23
	.byte	0x1
	.byte	0x47
	.long	0x292
	.long	.LFB6
	.long	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x292
	.uleb128 0x8
	.long	.LASF15
	.byte	0x1
	.byte	0x47
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0x48
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x9
	.string	"src"
	.byte	0x1
	.byte	0x49
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x8f
	.uleb128 0xc
	.long	.LASF28
	.byte	0x1
	.byte	0x50
	.long	.LFB7
	.long	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.string	"src"
	.byte	0x1
	.byte	0x50
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
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
	.uleb128 0x6
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
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF16:
	.string	"my_memcpy"
.LASF12:
	.string	"int8_t"
.LASF22:
	.string	"temp"
.LASF5:
	.string	"short int"
.LASF11:
	.string	"size_t"
.LASF9:
	.string	"sizetype"
.LASF21:
	.string	"my_reverse"
.LASF6:
	.string	"long long int"
.LASF18:
	.string	"my_memset"
.LASF19:
	.string	"value"
.LASF23:
	.string	"reserve_words"
.LASF14:
	.string	"uint8_t"
.LASF25:
	.string	"memory.c"
.LASF8:
	.string	"long int"
.LASF15:
	.string	"length"
.LASF17:
	.string	"my_memmove"
.LASF1:
	.string	"unsigned char"
.LASF4:
	.string	"signed char"
.LASF7:
	.string	"long long unsigned int"
.LASF0:
	.string	"unsigned int"
.LASF2:
	.string	"short unsigned int"
.LASF28:
	.string	"free_words"
.LASF10:
	.string	"char"
.LASF27:
	.string	"main"
.LASF13:
	.string	"int32_t"
.LASF3:
	.string	"long unsigned int"
.LASF24:
	.string	"GNU C99 5.4.0 20160609 -mtune=generic -march=i686 -g -O0 -std=c99 -fstack-protector-strong"
.LASF26:
	.string	"/home/diptarshi/Project1"
.LASF20:
	.string	"my_memzero"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
