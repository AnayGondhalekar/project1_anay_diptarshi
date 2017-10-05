	.file	"conversion.c"
	.text
.Ltext0:
	.globl	math_pow
	.type	math_pow, @function
math_pow:
.LFB0:
	.file 1 "conversion.c"
	.loc 1 14 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	movl	12(%ebp), %eax
	movb	%al, -20(%ebp)
	.loc 1 15 0
	movb	$1, -5(%ebp)
	.loc 1 17 0
	movl	$1, -4(%ebp)
	.loc 1 18 0
	jmp	.L2
.L3:
	.loc 1 19 0
	movl	8(%ebp), %eax
	movl	-4(%ebp), %edx
	imull	%edx, %eax
	movl	%eax, -4(%ebp)
.L2:
	.loc 1 18 0
	movzbl	-5(%ebp), %eax
	cmpb	-20(%ebp), %al
	jle	.L3
	.loc 1 21 0
	movl	-4(%ebp), %eax
	.loc 1 22 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	math_pow, .-math_pow
	.globl	my_itoa
	.type	my_itoa, @function
my_itoa:
.LFB1:
	.loc 1 26 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 32 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 35 0
	movb	$0, -9(%ebp)
	.loc 1 37 0
	cmpl	$0, 8(%ebp)
	jns	.L6
	.loc 1 38 0
	negl	8(%ebp)
.L6:
	.loc 1 44 0
	cmpl	$2, 16(%ebp)
	jne	.L7
	.loc 1 45 0
	jmp	.L8
.L9:
	.loc 1 46 0
	movl	8(%ebp), %eax
	cltd
	shrl	$31, %edx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	movl	%eax, -4(%ebp)
	.loc 1 47 0
	movl	-4(%ebp), %eax
	leal	48(%eax), %edx
	movl	12(%ebp), %eax
	movb	%dl, (%eax)
	.loc 1 48 0
	addl	$1, 12(%ebp)
	.loc 1 49 0
	movzbl	-9(%ebp), %eax
	addl	$1, %eax
	movb	%al, -9(%ebp)
	.loc 1 50 0
	movl	8(%ebp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, 8(%ebp)
.L8:
	.loc 1 45 0
	cmpl	$0, 8(%ebp)
	jne	.L9
.L7:
	.loc 1 54 0
	cmpl	$8, 16(%ebp)
	jne	.L10
	.loc 1 55 0
	jmp	.L11
.L12:
	.loc 1 56 0
	movl	8(%ebp), %eax
	cltd
	shrl	$29, %edx
	addl	%edx, %eax
	andl	$7, %eax
	subl	%edx, %eax
	movl	%eax, -4(%ebp)
	.loc 1 57 0
	movl	-4(%ebp), %eax
	leal	48(%eax), %edx
	movl	12(%ebp), %eax
	movb	%dl, (%eax)
	.loc 1 58 0
	addl	$1, 12(%ebp)
	.loc 1 59 0
	movzbl	-9(%ebp), %eax
	addl	$1, %eax
	movb	%al, -9(%ebp)
	.loc 1 60 0
	movl	8(%ebp), %eax
	leal	7(%eax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, 8(%ebp)
.L11:
	.loc 1 55 0
	cmpl	$0, 8(%ebp)
	jne	.L12
.L10:
	.loc 1 64 0
	cmpl	$10, 16(%ebp)
	jne	.L13
	.loc 1 65 0
	jmp	.L14
.L15:
	.loc 1 66 0
	movl	8(%ebp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -4(%ebp)
	.loc 1 67 0
	movl	-4(%ebp), %eax
	leal	48(%eax), %edx
	movl	12(%ebp), %eax
	movb	%dl, (%eax)
	.loc 1 68 0
	addl	$1, 12(%ebp)
	.loc 1 69 0
	movzbl	-9(%ebp), %eax
	addl	$1, %eax
	movb	%al, -9(%ebp)
	.loc 1 70 0
	movl	8(%ebp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, 8(%ebp)
.L14:
	.loc 1 65 0
	cmpl	$0, 8(%ebp)
	jne	.L15
.L13:
	.loc 1 74 0
	cmpl	$16, 16(%ebp)
	jne	.L16
	.loc 1 75 0
	jmp	.L17
.L24:
	.loc 1 76 0
	movl	8(%ebp), %eax
	cltd
	shrl	$28, %edx
	addl	%edx, %eax
	andl	$15, %eax
	subl	%edx, %eax
	movl	%eax, -4(%ebp)
	.loc 1 77 0
	cmpl	$10, -4(%ebp)
	jne	.L18
	.loc 1 78 0
	movl	$65, -4(%ebp)
	jmp	.L19
.L18:
	.loc 1 79 0
	cmpl	$11, -4(%ebp)
	jne	.L20
	.loc 1 80 0
	movl	$66, -4(%ebp)
	jmp	.L19
.L20:
	.loc 1 81 0
	cmpl	$12, -4(%ebp)
	jne	.L21
	.loc 1 82 0
	movl	$67, -4(%ebp)
	jmp	.L19
.L21:
	.loc 1 83 0
	cmpl	$13, -4(%ebp)
	jne	.L22
	.loc 1 84 0
	movl	$68, -4(%ebp)
	jmp	.L19
.L22:
	.loc 1 85 0
	cmpl	$14, -4(%ebp)
	jne	.L23
	.loc 1 86 0
	movl	$69, -4(%ebp)
	jmp	.L19
.L23:
	.loc 1 87 0
	cmpl	$15, -4(%ebp)
	je	.L19
	.loc 1 92 0
	movl	-4(%ebp), %eax
	leal	48(%eax), %edx
	movl	12(%ebp), %eax
	movb	%dl, (%eax)
.L19:
	.loc 1 93 0
	addl	$1, 12(%ebp)
	.loc 1 94 0
	movzbl	-9(%ebp), %eax
	addl	$1, %eax
	movb	%al, -9(%ebp)
	.loc 1 95 0
	movl	8(%ebp), %eax
	leal	15(%eax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$4, %eax
	movl	%eax, 8(%ebp)
.L17:
	.loc 1 75 0
	cmpl	$0, 8(%ebp)
	jne	.L24
.L16:
	.loc 1 99 0
	cmpl	$0, -8(%ebp)
	jns	.L25
	.loc 1 100 0
	movl	12(%ebp), %eax
	movb	$45, (%eax)
	.loc 1 101 0
	addl	$1, 12(%ebp)
	.loc 1 102 0
	movzbl	-9(%ebp), %eax
	addl	$1, %eax
	movb	%al, -9(%ebp)
.L25:
	.loc 1 104 0
	movl	12(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 106 0
	movzbl	-9(%ebp), %eax
	.loc 1 107 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	my_itoa, .-my_itoa
	.globl	my_atoi
	.type	my_atoi, @function
my_atoi:
.LFB2:
	.loc 1 110 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	movl	12(%ebp), %eax
	movb	%al, -24(%ebp)
	.loc 1 113 0
	movl	$0, -8(%ebp)
	.loc 1 116 0
	cmpl	$2, 16(%ebp)
	je	.L28
	.loc 1 116 0 is_stmt 0 discriminator 1
	cmpl	$8, 16(%ebp)
	je	.L28
	.loc 1 116 0 discriminator 2
	cmpl	$10, 16(%ebp)
	jne	.L29
.L28:
	.loc 1 117 0 is_stmt 1
	movb	$0, -10(%ebp)
	jmp	.L30
.L33:
	.loc 1 118 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -9(%ebp)
	.loc 1 119 0
	cmpb	$45, -9(%ebp)
	jne	.L31
	.loc 1 120 0
	negl	-8(%ebp)
	jmp	.L32
.L31:
	.loc 1 122 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	subl	$48, %eax
	movb	%al, -9(%ebp)
.L32:
	.loc 1 123 0 discriminator 2
	movsbl	-9(%ebp), %ebx
	movsbl	-10(%ebp), %edx
	movl	16(%ebp), %eax
	pushl	%edx
	pushl	%eax
	call	math_pow
	addl	$8, %esp
	imull	%eax, %ebx
	movl	%ebx, %edx
	movl	-8(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -8(%ebp)
	.loc 1 124 0 discriminator 2
	addl	$1, 8(%ebp)
	.loc 1 117 0 discriminator 2
	movzbl	-10(%ebp), %eax
	addl	$1, %eax
	movb	%al, -10(%ebp)
.L30:
	.loc 1 117 0 is_stmt 0 discriminator 1
	movsbl	-10(%ebp), %edx
	movzbl	-24(%ebp), %eax
	cmpl	%eax, %edx
	jl	.L33
.L29:
	.loc 1 127 0 is_stmt 1
	cmpl	$16, 16(%ebp)
	jne	.L34
	.loc 1 128 0
	movb	$0, -10(%ebp)
	jmp	.L35
.L50:
	.loc 1 129 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -9(%ebp)
	.loc 1 130 0
	cmpb	$65, -9(%ebp)
	je	.L36
	.loc 1 130 0 is_stmt 0 discriminator 1
	cmpb	$97, -9(%ebp)
	jne	.L37
.L36:
	.loc 1 131 0 is_stmt 1
	movb	$10, -9(%ebp)
	jmp	.L38
.L37:
	.loc 1 132 0
	cmpb	$66, -9(%ebp)
	je	.L39
	.loc 1 132 0 is_stmt 0 discriminator 1
	cmpb	$98, -9(%ebp)
	jne	.L40
.L39:
	.loc 1 133 0 is_stmt 1
	movb	$11, -9(%ebp)
	jmp	.L38
.L40:
	.loc 1 134 0
	cmpb	$67, -9(%ebp)
	je	.L41
	.loc 1 134 0 is_stmt 0 discriminator 1
	cmpb	$99, -9(%ebp)
	jne	.L42
.L41:
	.loc 1 135 0 is_stmt 1
	movb	$12, -9(%ebp)
	jmp	.L38
.L42:
	.loc 1 136 0
	cmpb	$68, -9(%ebp)
	je	.L43
	.loc 1 136 0 is_stmt 0 discriminator 1
	cmpb	$100, -9(%ebp)
	jne	.L44
.L43:
	.loc 1 137 0 is_stmt 1
	movb	$13, -9(%ebp)
	jmp	.L38
.L44:
	.loc 1 138 0
	cmpb	$69, -9(%ebp)
	je	.L45
	.loc 1 138 0 is_stmt 0 discriminator 1
	cmpb	$101, -9(%ebp)
	jne	.L46
.L45:
	.loc 1 139 0 is_stmt 1
	movb	$14, -9(%ebp)
	jmp	.L38
.L46:
	.loc 1 140 0
	cmpb	$70, -9(%ebp)
	je	.L47
	.loc 1 140 0 is_stmt 0 discriminator 1
	cmpb	$101, -9(%ebp)
	jne	.L48
.L47:
	.loc 1 141 0 is_stmt 1
	movb	$15, -9(%ebp)
	jmp	.L38
.L48:
	.loc 1 142 0
	cmpb	$45, -9(%ebp)
	jne	.L49
	.loc 1 143 0
	negl	-8(%ebp)
	jmp	.L38
.L49:
	.loc 1 146 0
	movzbl	-9(%ebp), %eax
	subl	$48, %eax
	movb	%al, -9(%ebp)
.L38:
	.loc 1 147 0 discriminator 2
	movsbl	-9(%ebp), %ebx
	movsbl	-10(%ebp), %edx
	movl	16(%ebp), %eax
	pushl	%edx
	pushl	%eax
	call	math_pow
	addl	$8, %esp
	imull	%eax, %ebx
	movl	%ebx, %edx
	movl	-8(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -8(%ebp)
	.loc 1 128 0 discriminator 2
	movzbl	-10(%ebp), %eax
	addl	$1, %eax
	movb	%al, -10(%ebp)
.L35:
	.loc 1 128 0 is_stmt 0 discriminator 1
	movsbl	-10(%ebp), %edx
	movzbl	-24(%ebp), %eax
	cmpl	%eax, %edx
	jl	.L50
	.loc 1 148 0 is_stmt 1
	addl	$1, 8(%ebp)
.L34:
	.loc 1 151 0
	movl	-8(%ebp), %eax
	.loc 1 152 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2:
	.size	my_atoi, .-my_atoi
	.globl	big_to_little32
	.type	big_to_little32, @function
big_to_little32:
.LFB3:
	.loc 1 154 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 158 0
	movl	12(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L53
	.loc 1 159 0
	movl	12(%ebp), %eax
	shrl	%eax
	movl	%eax, -12(%ebp)
	jmp	.L54
.L53:
	.loc 1 162 0
	movl	12(%ebp), %eax
	subl	$1, %eax
	shrl	%eax
	movl	%eax, -12(%ebp)
.L54:
	.loc 1 164 0
	movb	$0, -13(%ebp)
	.loc 1 167 0
	movl	$0, -8(%ebp)
	jmp	.L55
.L56:
	.loc 1 168 0 discriminator 3
	movl	-8(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 169 0 discriminator 3
	movl	-8(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	addl	%eax, %edx
	movl	-8(%ebp), %ecx
	movl	12(%ebp), %eax
	addl	%ecx, %eax
	addl	$1073741823, %eax
	leal	0(,%eax,4), %ecx
	movl	8(%ebp), %eax
	addl	%ecx, %eax
	movl	(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 170 0 discriminator 3
	movl	-8(%ebp), %eax
	subl	12(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	addl	%eax, %edx
	movl	-4(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 167 0 discriminator 3
	addl	$1, -8(%ebp)
.L55:
	.loc 1 167 0 is_stmt 0 discriminator 1
	movl	-8(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jb	.L56
	.loc 1 172 0 is_stmt 1
	movl	$0, %eax
	.loc 1 173 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE3:
	.size	big_to_little32, .-big_to_little32
	.globl	little_to_big32
	.type	little_to_big32, @function
little_to_big32:
.LFB4:
	.loc 1 176 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 180 0
	movl	12(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L59
	.loc 1 181 0
	movl	12(%ebp), %eax
	shrl	%eax
	movl	%eax, -12(%ebp)
	jmp	.L60
.L59:
	.loc 1 184 0
	movl	12(%ebp), %eax
	subl	$1, %eax
	shrl	%eax
	movl	%eax, -12(%ebp)
.L60:
	.loc 1 186 0
	movb	$0, -13(%ebp)
	.loc 1 189 0
	movl	$0, -8(%ebp)
	jmp	.L61
.L62:
	.loc 1 190 0 discriminator 3
	movl	-8(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 191 0 discriminator 3
	movl	-8(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	addl	%eax, %edx
	movl	-8(%ebp), %ecx
	movl	12(%ebp), %eax
	addl	%ecx, %eax
	addl	$1073741823, %eax
	leal	0(,%eax,4), %ecx
	movl	8(%ebp), %eax
	addl	%ecx, %eax
	movl	(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 192 0 discriminator 3
	movl	-8(%ebp), %eax
	subl	12(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	addl	%eax, %edx
	movl	-4(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 189 0 discriminator 3
	addl	$1, -8(%ebp)
.L61:
	.loc 1 189 0 is_stmt 0 discriminator 1
	movl	-8(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jb	.L62
	.loc 1 194 0 is_stmt 1
	movl	$0, %eax
	.loc 1 195 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4:
	.size	little_to_big32, .-little_to_big32
.Letext0:
	.file 2 "/usr/include/stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2be
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF28
	.byte	0xc
	.long	.LASF29
	.long	.LASF30
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x4
	.long	.LASF11
	.byte	0x2
	.byte	0x24
	.long	0x41
	.uleb128 0x4
	.long	.LASF12
	.byte	0x2
	.byte	0x26
	.long	0x4f
	.uleb128 0x4
	.long	.LASF13
	.byte	0x2
	.byte	0x30
	.long	0x2c
	.uleb128 0x4
	.long	.LASF14
	.byte	0x2
	.byte	0x33
	.long	0x25
	.uleb128 0x5
	.long	.LASF18
	.byte	0x1
	.byte	0xe
	.long	0x9a
	.long	.LFB0
	.long	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0xf5
	.uleb128 0x6
	.long	.LASF15
	.byte	0x1
	.byte	0xe
	.long	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x6
	.long	.LASF16
	.byte	0x1
	.byte	0xe
	.long	0x72
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.string	"i"
	.byte	0x1
	.byte	0xf
	.long	0x72
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x8
	.long	.LASF17
	.byte	0x1
	.byte	0x10
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x5
	.long	.LASF19
	.byte	0x1
	.byte	0x19
	.long	0x8f
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x163
	.uleb128 0x6
	.long	.LASF20
	.byte	0x1
	.byte	0x19
	.long	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.string	"ptr"
	.byte	0x1
	.byte	0x19
	.long	0x163
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x6
	.long	.LASF21
	.byte	0x1
	.byte	0x19
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x7
	.string	"rem"
	.byte	0x1
	.byte	0x1c
	.long	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x8
	.long	.LASF22
	.byte	0x1
	.byte	0x1e
	.long	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x8
	.long	.LASF23
	.byte	0x1
	.byte	0x22
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x8f
	.uleb128 0xb
	.long	.LASF24
	.byte	0x1
	.byte	0x6e
	.long	0x84
	.long	.LFB2
	.long	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d3
	.uleb128 0x9
	.string	"ptr"
	.byte	0x1
	.byte	0x6e
	.long	0x163
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x6
	.long	.LASF25
	.byte	0x1
	.byte	0x6e
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.long	.LASF21
	.byte	0x1
	.byte	0x6e
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x8
	.long	.LASF26
	.byte	0x1
	.byte	0x70
	.long	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x7
	.string	"i"
	.byte	0x1
	.byte	0x72
	.long	0x72
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x7
	.string	"c"
	.byte	0x1
	.byte	0x73
	.long	0x72
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x5
	.long	.LASF27
	.byte	0x1
	.byte	0x9a
	.long	0x79
	.long	.LFB3
	.long	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x246
	.uleb128 0x6
	.long	.LASF20
	.byte	0x1
	.byte	0x9a
	.long	0x246
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x6
	.long	.LASF23
	.byte	0x1
	.byte	0x9a
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xc
	.string	"c"
	.byte	0x1
	.byte	0x9c
	.long	0x9a
	.uleb128 0x7
	.string	"l"
	.byte	0x1
	.byte	0x9d
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.long	.LASF26
	.byte	0x1
	.byte	0xa4
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x8
	.long	.LASF22
	.byte	0x1
	.byte	0xa5
	.long	0x24c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x7
	.string	"i"
	.byte	0x1
	.byte	0xa6
	.long	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x9a
	.uleb128 0xa
	.byte	0x4
	.long	0x84
	.uleb128 0xd
	.long	.LASF31
	.byte	0x1
	.byte	0xb0
	.long	0x79
	.long	.LFB4
	.long	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.long	.LASF20
	.byte	0x1
	.byte	0xb0
	.long	0x246
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x6
	.long	.LASF23
	.byte	0x1
	.byte	0xb0
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xc
	.string	"c"
	.byte	0x1
	.byte	0xb2
	.long	0x9a
	.uleb128 0x7
	.string	"l"
	.byte	0x1
	.byte	0xb3
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.long	.LASF26
	.byte	0x1
	.byte	0xba
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x8
	.long	.LASF22
	.byte	0x1
	.byte	0xbb
	.long	0x24c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x7
	.string	"i"
	.byte	0x1
	.byte	0xbc
	.long	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.byte	0
	.byte	0
	.uleb128 0xd
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
.LASF17:
	.string	"result"
.LASF11:
	.string	"int8_t"
.LASF27:
	.string	"big_to_little32"
.LASF22:
	.string	"temp"
.LASF5:
	.string	"short int"
.LASF9:
	.string	"sizetype"
.LASF20:
	.string	"data"
.LASF13:
	.string	"uint8_t"
.LASF26:
	.string	"ret_num"
.LASF6:
	.string	"long long int"
.LASF8:
	.string	"long int"
.LASF24:
	.string	"my_atoi"
.LASF25:
	.string	"digits"
.LASF19:
	.string	"my_itoa"
.LASF23:
	.string	"length"
.LASF1:
	.string	"unsigned char"
.LASF4:
	.string	"signed char"
.LASF7:
	.string	"long long unsigned int"
.LASF14:
	.string	"uint32_t"
.LASF0:
	.string	"unsigned int"
.LASF2:
	.string	"short unsigned int"
.LASF10:
	.string	"char"
.LASF12:
	.string	"int32_t"
.LASF29:
	.string	"conversion.c"
.LASF18:
	.string	"math_pow"
.LASF16:
	.string	"power"
.LASF3:
	.string	"long unsigned int"
.LASF28:
	.string	"GNU C99 5.4.0 20160609 -mtune=generic -march=i686 -g -O0 -std=c99 -fstack-protector-strong"
.LASF30:
	.string	"/home/diptarshi/Project1"
.LASF31:
	.string	"little_to_big32"
.LASF15:
	.string	"number"
.LASF21:
	.string	"base"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
