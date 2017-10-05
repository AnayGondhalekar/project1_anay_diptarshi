	.file	"project1.c"
	.text
.Ltext0:
	.section	.rodata
.LC0:
	.string	"\ntest_data1();"
	.text
	.globl	test_data1
	.type	test_data1, @function
test_data1:
.LFB0:
	.file 1 "project1.c"
	.loc 1 31 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 33 0
	movl	$-4096, -24(%ebp)
	.loc 1 37 0
	subl	$12, %esp
	pushl	$.LC0
	call	puts
	addl	$16, %esp
	.loc 1 38 0
	subl	$12, %esp
	pushl	$10
	call	reserve_words
	addl	$16, %esp
	movl	%eax, -20(%ebp)
	.loc 1 40 0
	cmpl	$0, -20(%ebp)
	jne	.L2
	.loc 1 42 0
	movl	$1, %eax
	jmp	.L3
.L2:
	.loc 1 45 0
	subl	$4, %esp
	pushl	$16
	pushl	-20(%ebp)
	pushl	-24(%ebp)
	call	my_itoa
	addl	$16, %esp
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	.loc 1 46 0
	movl	-16(%ebp), %eax
	movzbl	%al, %eax
	subl	$4, %esp
	pushl	$16
	pushl	%eax
	pushl	-20(%ebp)
	call	my_atoi
	addl	$16, %esp
	movl	%eax, -12(%ebp)
	.loc 1 51 0
	subl	$12, %esp
	pushl	-20(%ebp)
	call	free_words
	addl	$16, %esp
	.loc 1 53 0
	movl	-12(%ebp), %eax
	cmpl	-24(%ebp), %eax
	je	.L4
	.loc 1 55 0
	movl	$1, %eax
	jmp	.L3
.L4:
	.loc 1 57 0
	movl	$0, %eax
.L3:
	.loc 1 58 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	test_data1, .-test_data1
	.section	.rodata
.LC1:
	.string	"test_data2();"
	.text
	.globl	test_data2
	.type	test_data2, @function
test_data2:
.LFB1:
	.loc 1 60 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 62 0
	movl	$123456, -24(%ebp)
	.loc 1 66 0
	subl	$12, %esp
	pushl	$.LC1
	call	puts
	addl	$16, %esp
	.loc 1 67 0
	subl	$12, %esp
	pushl	$10
	call	reserve_words
	addl	$16, %esp
	movl	%eax, -20(%ebp)
	.loc 1 69 0
	cmpl	$0, -20(%ebp)
	jne	.L6
	.loc 1 71 0
	movl	$1, %eax
	jmp	.L7
.L6:
	.loc 1 74 0
	subl	$4, %esp
	pushl	$10
	pushl	-20(%ebp)
	pushl	-24(%ebp)
	call	my_itoa
	addl	$16, %esp
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	.loc 1 75 0
	movl	-16(%ebp), %eax
	movzbl	%al, %eax
	subl	$4, %esp
	pushl	$10
	pushl	%eax
	pushl	-20(%ebp)
	call	my_atoi
	addl	$16, %esp
	movl	%eax, -12(%ebp)
	.loc 1 80 0
	subl	$12, %esp
	pushl	-20(%ebp)
	call	free_words
	addl	$16, %esp
	.loc 1 82 0
	movl	-12(%ebp), %eax
	cmpl	-24(%ebp), %eax
	je	.L8
	.loc 1 84 0
	movl	$1, %eax
	jmp	.L7
.L8:
	.loc 1 86 0
	movl	$0, %eax
.L7:
	.loc 1 87 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	test_data2, .-test_data2
	.section	.rodata
.LC2:
	.string	"test_memmove1() - NO OVERLAP"
	.text
	.globl	test_memmove1
	.type	test_memmove1, @function
test_memmove1:
.LFB2:
	.loc 1 89 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 91 0
	movb	$0, -21(%ebp)
	.loc 1 96 0
	subl	$12, %esp
	pushl	$.LC2
	call	puts
	addl	$16, %esp
	.loc 1 97 0
	subl	$12, %esp
	pushl	$8
	call	reserve_words
	addl	$16, %esp
	movl	%eax, -20(%ebp)
	.loc 1 99 0
	cmpl	$0, -20(%ebp)
	jne	.L10
	.loc 1 101 0
	movl	$1, %eax
	jmp	.L11
.L10:
	.loc 1 104 0
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 105 0
	movl	-20(%ebp), %eax
	addl	$16, %eax
	movl	%eax, -12(%ebp)
	.loc 1 108 0
	movb	$0, -22(%ebp)
	jmp	.L12
.L13:
	.loc 1 110 0 discriminator 3
	movzbl	-22(%ebp), %edx
	movl	-20(%ebp), %eax
	addl	%eax, %edx
	movzbl	-22(%ebp), %eax
	movb	%al, (%edx)
	.loc 1 108 0 discriminator 3
	movzbl	-22(%ebp), %eax
	addl	$1, %eax
	movb	%al, -22(%ebp)
.L12:
	.loc 1 108 0 is_stmt 0 discriminator 1
	cmpb	$31, -22(%ebp)
	jbe	.L13
	.loc 1 113 0 is_stmt 1
	subl	$8, %esp
	pushl	$32
	pushl	-20(%ebp)
	call	print_array
	addl	$16, %esp
	.loc 1 114 0
	subl	$4, %esp
	pushl	$16
	pushl	-12(%ebp)
	pushl	-16(%ebp)
	call	my_memmove
	addl	$16, %esp
	.loc 1 115 0
	subl	$8, %esp
	pushl	$32
	pushl	-20(%ebp)
	call	print_array
	addl	$16, %esp
	.loc 1 117 0
	movb	$0, -22(%ebp)
	jmp	.L14
.L16:
	.loc 1 119 0
	movzbl	-22(%ebp), %eax
	leal	16(%eax), %edx
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	-22(%ebp), %al
	je	.L15
	.loc 1 121 0
	movb	$1, -21(%ebp)
.L15:
	.loc 1 117 0 discriminator 2
	movzbl	-22(%ebp), %eax
	addl	$1, %eax
	movb	%al, -22(%ebp)
.L14:
	.loc 1 117 0 is_stmt 0 discriminator 1
	cmpb	$15, -22(%ebp)
	jbe	.L16
	.loc 1 125 0 is_stmt 1
	subl	$12, %esp
	pushl	-20(%ebp)
	call	free_words
	addl	$16, %esp
	.loc 1 126 0
	movzbl	-21(%ebp), %eax
.L11:
	.loc 1 127 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2:
	.size	test_memmove1, .-test_memmove1
	.section	.rodata
	.align 4
.LC3:
	.string	"test_memmove2() -OVERLAP END OF SRC BEGINNING OF DST"
	.text
	.globl	test_memmove2
	.type	test_memmove2, @function
test_memmove2:
.LFB3:
	.loc 1 129 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 131 0
	movb	$0, -21(%ebp)
	.loc 1 136 0
	subl	$12, %esp
	pushl	$.LC3
	call	puts
	addl	$16, %esp
	.loc 1 137 0
	subl	$12, %esp
	pushl	$8
	call	reserve_words
	addl	$16, %esp
	movl	%eax, -20(%ebp)
	.loc 1 139 0
	cmpl	$0, -20(%ebp)
	jne	.L18
	.loc 1 141 0
	movl	$1, %eax
	jmp	.L19
.L18:
	.loc 1 143 0
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 144 0
	movl	-20(%ebp), %eax
	addl	$8, %eax
	movl	%eax, -12(%ebp)
	.loc 1 147 0
	movb	$0, -22(%ebp)
	jmp	.L20
.L21:
	.loc 1 148 0 discriminator 3
	movzbl	-22(%ebp), %edx
	movl	-20(%ebp), %eax
	addl	%eax, %edx
	movzbl	-22(%ebp), %eax
	movb	%al, (%edx)
	.loc 1 147 0 discriminator 3
	movzbl	-22(%ebp), %eax
	addl	$1, %eax
	movb	%al, -22(%ebp)
.L20:
	.loc 1 147 0 is_stmt 0 discriminator 1
	cmpb	$31, -22(%ebp)
	jbe	.L21
	.loc 1 151 0 is_stmt 1
	subl	$8, %esp
	pushl	$32
	pushl	-20(%ebp)
	call	print_array
	addl	$16, %esp
	.loc 1 152 0
	subl	$4, %esp
	pushl	$16
	pushl	-12(%ebp)
	pushl	-16(%ebp)
	call	my_memmove
	addl	$16, %esp
	.loc 1 153 0
	subl	$8, %esp
	pushl	$32
	pushl	-20(%ebp)
	call	print_array
	addl	$16, %esp
	.loc 1 155 0
	movb	$0, -22(%ebp)
	jmp	.L22
.L24:
	.loc 1 157 0
	movzbl	-22(%ebp), %eax
	leal	8(%eax), %edx
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	-22(%ebp), %al
	je	.L23
	.loc 1 159 0
	movb	$1, -21(%ebp)
.L23:
	.loc 1 155 0 discriminator 2
	movzbl	-22(%ebp), %eax
	addl	$1, %eax
	movb	%al, -22(%ebp)
.L22:
	.loc 1 155 0 is_stmt 0 discriminator 1
	cmpb	$15, -22(%ebp)
	jbe	.L24
	.loc 1 163 0 is_stmt 1
	subl	$12, %esp
	pushl	-20(%ebp)
	call	free_words
	addl	$16, %esp
	.loc 1 164 0
	movzbl	-21(%ebp), %eax
.L19:
	.loc 1 165 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE3:
	.size	test_memmove2, .-test_memmove2
	.section	.rodata
	.align 4
.LC4:
	.string	"test_memove3() - OVERLAP END OF DEST BEGINNING OF SRC"
	.text
	.globl	test_memmove3
	.type	test_memmove3, @function
test_memmove3:
.LFB4:
	.loc 1 167 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 169 0
	movb	$0, -21(%ebp)
	.loc 1 174 0
	subl	$12, %esp
	pushl	$.LC4
	call	puts
	addl	$16, %esp
	.loc 1 175 0
	subl	$12, %esp
	pushl	$8
	call	reserve_words
	addl	$16, %esp
	movl	%eax, -20(%ebp)
	.loc 1 177 0
	cmpl	$0, -20(%ebp)
	jne	.L26
	.loc 1 179 0
	movl	$1, %eax
	jmp	.L27
.L26:
	.loc 1 181 0
	movl	-20(%ebp), %eax
	addl	$8, %eax
	movl	%eax, -16(%ebp)
	.loc 1 182 0
	movl	-20(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 185 0
	movb	$0, -22(%ebp)
	jmp	.L28
.L29:
	.loc 1 187 0 discriminator 3
	movzbl	-22(%ebp), %edx
	movl	-20(%ebp), %eax
	addl	%eax, %edx
	movzbl	-22(%ebp), %eax
	movb	%al, (%edx)
	.loc 1 185 0 discriminator 3
	movzbl	-22(%ebp), %eax
	addl	$1, %eax
	movb	%al, -22(%ebp)
.L28:
	.loc 1 185 0 is_stmt 0 discriminator 1
	cmpb	$31, -22(%ebp)
	jbe	.L29
	.loc 1 190 0 is_stmt 1
	subl	$8, %esp
	pushl	$32
	pushl	-20(%ebp)
	call	print_array
	addl	$16, %esp
	.loc 1 191 0
	subl	$4, %esp
	pushl	$16
	pushl	-12(%ebp)
	pushl	-16(%ebp)
	call	my_memmove
	addl	$16, %esp
	.loc 1 192 0
	subl	$8, %esp
	pushl	$32
	pushl	-20(%ebp)
	call	print_array
	addl	$16, %esp
	.loc 1 194 0
	movb	$0, -22(%ebp)
	jmp	.L30
.L32:
	.loc 1 196 0
	movzbl	-22(%ebp), %edx
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movzbl	-22(%ebp), %edx
	addl	$8, %edx
	cmpl	%edx, %eax
	je	.L31
	.loc 1 198 0
	movb	$1, -21(%ebp)
.L31:
	.loc 1 194 0 discriminator 2
	movzbl	-22(%ebp), %eax
	addl	$1, %eax
	movb	%al, -22(%ebp)
.L30:
	.loc 1 194 0 is_stmt 0 discriminator 1
	cmpb	$15, -22(%ebp)
	jbe	.L32
	.loc 1 203 0 is_stmt 1
	subl	$12, %esp
	pushl	-20(%ebp)
	call	free_words
	addl	$16, %esp
	.loc 1 204 0
	movzbl	-21(%ebp), %eax
.L27:
	.loc 1 206 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4:
	.size	test_memmove3, .-test_memmove3
	.section	.rodata
.LC5:
	.string	"test_memcpy()"
	.text
	.globl	test_memcpy
	.type	test_memcpy, @function
test_memcpy:
.LFB5:
	.loc 1 208 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 210 0
	movb	$0, -21(%ebp)
	.loc 1 215 0
	subl	$12, %esp
	pushl	$.LC5
	call	puts
	addl	$16, %esp
	.loc 1 216 0
	subl	$12, %esp
	pushl	$8
	call	reserve_words
	addl	$16, %esp
	movl	%eax, -20(%ebp)
	.loc 1 218 0
	cmpl	$0, -20(%ebp)
	jne	.L34
	.loc 1 220 0
	movl	$1, %eax
	jmp	.L35
.L34:
	.loc 1 222 0
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 223 0
	movl	-20(%ebp), %eax
	addl	$16, %eax
	movl	%eax, -12(%ebp)
	.loc 1 226 0
	movb	$0, -22(%ebp)
	jmp	.L36
.L37:
	.loc 1 227 0 discriminator 3
	movzbl	-22(%ebp), %edx
	movl	-20(%ebp), %eax
	addl	%eax, %edx
	movzbl	-22(%ebp), %eax
	movb	%al, (%edx)
	.loc 1 226 0 discriminator 3
	movzbl	-22(%ebp), %eax
	addl	$1, %eax
	movb	%al, -22(%ebp)
.L36:
	.loc 1 226 0 is_stmt 0 discriminator 1
	cmpb	$31, -22(%ebp)
	jbe	.L37
	.loc 1 230 0 is_stmt 1
	subl	$8, %esp
	pushl	$32
	pushl	-20(%ebp)
	call	print_array
	addl	$16, %esp
	.loc 1 231 0
	subl	$4, %esp
	pushl	$16
	pushl	-12(%ebp)
	pushl	-16(%ebp)
	call	my_memcpy
	addl	$16, %esp
	.loc 1 232 0
	subl	$8, %esp
	pushl	$32
	pushl	-20(%ebp)
	call	print_array
	addl	$16, %esp
	.loc 1 234 0
	movb	$0, -22(%ebp)
	jmp	.L38
.L40:
	.loc 1 236 0
	movzbl	-22(%ebp), %eax
	leal	16(%eax), %edx
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	-22(%ebp), %al
	je	.L39
	.loc 1 238 0
	movb	$1, -21(%ebp)
.L39:
	.loc 1 234 0 discriminator 2
	movzbl	-22(%ebp), %eax
	addl	$1, %eax
	movb	%al, -22(%ebp)
.L38:
	.loc 1 234 0 is_stmt 0 discriminator 1
	cmpb	$15, -22(%ebp)
	jbe	.L40
	.loc 1 242 0 is_stmt 1
	subl	$12, %esp
	pushl	-20(%ebp)
	call	free_words
	addl	$16, %esp
	.loc 1 243 0
	movzbl	-21(%ebp), %eax
.L35:
	.loc 1 244 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE5:
	.size	test_memcpy, .-test_memcpy
	.section	.rodata
.LC6:
	.string	"test_memset()"
	.text
	.globl	test_memset
	.type	test_memset, @function
test_memset:
.LFB6:
	.loc 1 247 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 249 0
	movb	$0, -21(%ebp)
	.loc 1 254 0
	subl	$12, %esp
	pushl	$.LC6
	call	puts
	addl	$16, %esp
	.loc 1 255 0
	subl	$12, %esp
	pushl	$8
	call	reserve_words
	addl	$16, %esp
	movl	%eax, -20(%ebp)
	.loc 1 256 0
	cmpl	$0, -20(%ebp)
	jne	.L42
	.loc 1 258 0
	movl	$1, %eax
	jmp	.L43
.L42:
	.loc 1 260 0
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 261 0
	movl	-20(%ebp), %eax
	addl	$16, %eax
	movl	%eax, -12(%ebp)
	.loc 1 264 0
	movb	$0, -22(%ebp)
	jmp	.L44
.L45:
	.loc 1 266 0 discriminator 3
	movzbl	-22(%ebp), %edx
	movl	-20(%ebp), %eax
	addl	%eax, %edx
	movzbl	-22(%ebp), %eax
	movb	%al, (%edx)
	.loc 1 264 0 discriminator 3
	movzbl	-22(%ebp), %eax
	addl	$1, %eax
	movb	%al, -22(%ebp)
.L44:
	.loc 1 264 0 is_stmt 0 discriminator 1
	cmpb	$31, -22(%ebp)
	jbe	.L45
	.loc 1 269 0 is_stmt 1
	subl	$8, %esp
	pushl	$32
	pushl	-20(%ebp)
	call	print_array
	addl	$16, %esp
	.loc 1 270 0
	subl	$4, %esp
	pushl	$255
	pushl	$32
	pushl	-16(%ebp)
	call	my_memset
	addl	$16, %esp
	.loc 1 271 0
	subl	$8, %esp
	pushl	$32
	pushl	-20(%ebp)
	call	print_array
	addl	$16, %esp
	.loc 1 272 0
	subl	$8, %esp
	pushl	$16
	pushl	-12(%ebp)
	call	my_memzero
	addl	$16, %esp
	.loc 1 273 0
	subl	$8, %esp
	pushl	$32
	pushl	-20(%ebp)
	call	print_array
	addl	$16, %esp
	.loc 1 276 0
	movb	$0, -22(%ebp)
	jmp	.L46
.L49:
	.loc 1 278 0
	movzbl	-22(%ebp), %edx
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$-1, %al
	je	.L47
	.loc 1 280 0
	movb	$1, -21(%ebp)
.L47:
	.loc 1 282 0
	movzbl	-22(%ebp), %eax
	addl	$16, %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L48
	.loc 1 284 0
	movb	$1, -21(%ebp)
.L48:
	.loc 1 276 0 discriminator 2
	movzbl	-22(%ebp), %eax
	addl	$1, %eax
	movb	%al, -22(%ebp)
.L46:
	.loc 1 276 0 is_stmt 0 discriminator 1
	cmpb	$15, -22(%ebp)
	jbe	.L49
	.loc 1 288 0 is_stmt 1
	subl	$12, %esp
	pushl	-20(%ebp)
	call	free_words
	addl	$16, %esp
	.loc 1 289 0
	movzbl	-21(%ebp), %eax
.L43:
	.loc 1 290 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE6:
	.size	test_memset, .-test_memset
	.section	.rodata
.LC7:
	.string	"test_reverse()"
	.text
	.globl	test_reverse
	.type	test_reverse, @function
test_reverse:
.LFB7:
	.loc 1 293 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	.loc 1 293 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 295 0
	movb	$0, -49(%ebp)
	.loc 1 297 0
	movb	$63, -44(%ebp)
	movb	$115, -43(%ebp)
	movb	$114, -42(%ebp)
	movb	$51, -41(%ebp)
	movb	$84, -40(%ebp)
	movb	$67, -39(%ebp)
	movb	$114, -38(%ebp)
	movb	$38, -37(%ebp)
	movb	$72, -36(%ebp)
	movb	$99, -35(%ebp)
	movb	$32, -34(%ebp)
	movb	$102, -33(%ebp)
	movb	$111, -32(%ebp)
	movb	$0, -31(%ebp)
	movb	$32, -30(%ebp)
	movb	$51, -29(%ebp)
	movb	$114, -28(%ebp)
	movb	$117, -27(%ebp)
	movb	$116, -26(%ebp)
	movb	$120, -25(%ebp)
	movb	$33, -24(%ebp)
	movb	$77, -23(%ebp)
	movb	$32, -22(%ebp)
	movb	$64, -21(%ebp)
	movb	$32, -20(%ebp)
	movb	$36, -19(%ebp)
	movb	$124, -18(%ebp)
	movb	$32, -17(%ebp)
	movb	$36, -16(%ebp)
	movb	$105, -15(%ebp)
	movb	$104, -14(%ebp)
	movb	$84, -13(%ebp)
	.loc 1 303 0
	subl	$12, %esp
	pushl	$.LC7
	call	puts
	addl	$16, %esp
	.loc 1 304 0
	subl	$12, %esp
	pushl	$8
	call	reserve_words
	addl	$16, %esp
	movl	%eax, -48(%ebp)
	.loc 1 305 0
	cmpl	$0, -48(%ebp)
	jne	.L51
	.loc 1 307 0
	movl	$1, %eax
	jmp	.L56
.L51:
	.loc 1 310 0
	subl	$4, %esp
	pushl	$32
	pushl	-48(%ebp)
	leal	-44(%ebp), %eax
	pushl	%eax
	call	my_memcpy
	addl	$16, %esp
	.loc 1 312 0
	subl	$8, %esp
	pushl	$32
	leal	-44(%ebp), %eax
	pushl	%eax
	call	print_array
	addl	$16, %esp
	.loc 1 313 0
	subl	$8, %esp
	pushl	$32
	leal	-44(%ebp), %eax
	pushl	%eax
	call	my_reverse
	addl	$16, %esp
	.loc 1 314 0
	subl	$8, %esp
	pushl	$32
	leal	-44(%ebp), %eax
	pushl	%eax
	call	print_array
	addl	$16, %esp
	.loc 1 316 0
	movb	$0, -50(%ebp)
	jmp	.L53
.L55:
	.loc 1 318 0
	movzbl	-50(%ebp), %eax
	movzbl	-44(%ebp,%eax), %edx
	movzbl	-50(%ebp), %eax
	movl	$31, %ecx
	subl	%eax, %ecx
	movl	-48(%ebp), %eax
	addl	%ecx, %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	je	.L54
	.loc 1 320 0
	movb	$1, -49(%ebp)
.L54:
	.loc 1 316 0 discriminator 2
	movzbl	-50(%ebp), %eax
	addl	$1, %eax
	movb	%al, -50(%ebp)
.L53:
	.loc 1 316 0 is_stmt 0 discriminator 1
	cmpb	$31, -50(%ebp)
	jbe	.L55
	.loc 1 324 0 is_stmt 1
	subl	$12, %esp
	pushl	-48(%ebp)
	call	free_words
	addl	$16, %esp
	.loc 1 325 0
	movzbl	-49(%ebp), %eax
.L56:
	.loc 1 326 0 discriminator 1
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L57
	.loc 1 326 0 is_stmt 0
	call	__stack_chk_fail
.L57:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE7:
	.size	test_reverse, .-test_reverse
	.section	.rodata
	.align 4
.LC8:
	.string	"--------------------------------"
.LC9:
	.string	"Test Results:"
.LC10:
	.string	"  PASSED: %d / %d\n"
.LC11:
	.string	"  FAILED: %d / %d\n"
	.text
	.globl	course1
	.type	course1, @function
course1:
.LFB8:
	.loc 1 329 0 is_stmt 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 329 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 331 0
	movb	$0, -21(%ebp)
	.loc 1 334 0
	call	test_data1
	movb	%al, -20(%ebp)
	.loc 1 335 0
	call	test_data2
	movb	%al, -19(%ebp)
	.loc 1 336 0
	call	test_memmove1
	movb	%al, -18(%ebp)
	.loc 1 337 0
	call	test_memmove2
	movb	%al, -17(%ebp)
	.loc 1 338 0
	call	test_memmove3
	movb	%al, -16(%ebp)
	.loc 1 339 0
	call	test_memcpy
	movb	%al, -15(%ebp)
	.loc 1 340 0
	call	test_memset
	movb	%al, -14(%ebp)
	.loc 1 341 0
	call	test_reverse
	movb	%al, -13(%ebp)
	.loc 1 343 0
	movb	$0, -22(%ebp)
	jmp	.L59
.L60:
	.loc 1 345 0 discriminator 3
	movzbl	-22(%ebp), %eax
	movzbl	-20(%ebp,%eax), %eax
	movl	%eax, %edx
	movzbl	-21(%ebp), %eax
	addl	%edx, %eax
	movb	%al, -21(%ebp)
	.loc 1 343 0 discriminator 3
	movzbl	-22(%ebp), %eax
	addl	$1, %eax
	movb	%al, -22(%ebp)
.L59:
	.loc 1 343 0 is_stmt 0 discriminator 1
	cmpb	$7, -22(%ebp)
	jbe	.L60
	.loc 1 348 0 is_stmt 1
	subl	$12, %esp
	pushl	$.LC8
	call	puts
	addl	$16, %esp
	.loc 1 349 0
	subl	$12, %esp
	pushl	$.LC9
	call	puts
	addl	$16, %esp
	.loc 1 350 0
	movsbl	-21(%ebp), %eax
	movl	$8, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	subl	$4, %esp
	pushl	$8
	pushl	%eax
	pushl	$.LC10
	call	printf
	addl	$16, %esp
	.loc 1 351 0
	movsbl	-21(%ebp), %eax
	subl	$4, %esp
	pushl	$8
	pushl	%eax
	pushl	$.LC11
	call	printf
	addl	$16, %esp
	.loc 1 352 0
	subl	$12, %esp
	pushl	$.LC8
	call	puts
	addl	$16, %esp
	.loc 1 353 0
	nop
	movl	-12(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L61
	call	__stack_chk_fail
.L61:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE8:
	.size	course1, .-course1
.Letext0:
	.file 2 "/usr/include/stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x423
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF32
	.byte	0xc
	.long	.LASF33
	.long	.LASF34
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
	.long	.LASF17
	.byte	0x1
	.byte	0x1f
	.long	0x79
	.long	.LFB0
	.long	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0xf7
	.uleb128 0x6
	.string	"ptr"
	.byte	0x1
	.byte	0x20
	.long	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.string	"num"
	.byte	0x1
	.byte	0x21
	.long	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x7
	.long	.LASF15
	.byte	0x1
	.byte	0x22
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.long	.LASF16
	.byte	0x1
	.byte	0x23
	.long	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x8f
	.uleb128 0x5
	.long	.LASF18
	.byte	0x1
	.byte	0x3c
	.long	0x79
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x14f
	.uleb128 0x6
	.string	"ptr"
	.byte	0x1
	.byte	0x3d
	.long	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.string	"num"
	.byte	0x1
	.byte	0x3e
	.long	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x7
	.long	.LASF15
	.byte	0x1
	.byte	0x3f
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.long	.LASF16
	.byte	0x1
	.byte	0x40
	.long	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.long	.LASF19
	.byte	0x1
	.byte	0x59
	.long	0x79
	.long	.LFB2
	.long	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ba
	.uleb128 0x6
	.string	"i"
	.byte	0x1
	.byte	0x5a
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x6
	.string	"ret"
	.byte	0x1
	.byte	0x5b
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x6
	.string	"set"
	.byte	0x1
	.byte	0x5c
	.long	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.long	.LASF20
	.byte	0x1
	.byte	0x5d
	.long	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.long	.LASF21
	.byte	0x1
	.byte	0x5e
	.long	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.long	.LASF23
	.byte	0x1
	.byte	0x71
	.long	0x4f
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF22
	.byte	0x1
	.byte	0x81
	.long	0x79
	.long	.LFB3
	.long	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x225
	.uleb128 0x6
	.string	"i"
	.byte	0x1
	.byte	0x82
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x6
	.string	"ret"
	.byte	0x1
	.byte	0x83
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x6
	.string	"set"
	.byte	0x1
	.byte	0x84
	.long	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.long	.LASF20
	.byte	0x1
	.byte	0x85
	.long	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.long	.LASF21
	.byte	0x1
	.byte	0x86
	.long	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.long	.LASF23
	.byte	0x1
	.byte	0x71
	.long	0x4f
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF24
	.byte	0x1
	.byte	0xa7
	.long	0x79
	.long	.LFB4
	.long	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x290
	.uleb128 0x6
	.string	"i"
	.byte	0x1
	.byte	0xa8
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x6
	.string	"ret"
	.byte	0x1
	.byte	0xa9
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x6
	.string	"set"
	.byte	0x1
	.byte	0xaa
	.long	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.long	.LASF20
	.byte	0x1
	.byte	0xab
	.long	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.long	.LASF21
	.byte	0x1
	.byte	0xac
	.long	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.long	.LASF23
	.byte	0x1
	.byte	0x71
	.long	0x4f
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF25
	.byte	0x1
	.byte	0xd0
	.long	0x79
	.long	.LFB5
	.long	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x2fb
	.uleb128 0x6
	.string	"i"
	.byte	0x1
	.byte	0xd1
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x6
	.string	"ret"
	.byte	0x1
	.byte	0xd2
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x6
	.string	"set"
	.byte	0x1
	.byte	0xd3
	.long	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.long	.LASF20
	.byte	0x1
	.byte	0xd4
	.long	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.long	.LASF21
	.byte	0x1
	.byte	0xd5
	.long	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.long	.LASF23
	.byte	0x1
	.byte	0x71
	.long	0x4f
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF26
	.byte	0x1
	.byte	0xf6
	.long	0x79
	.long	.LFB6
	.long	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x366
	.uleb128 0x6
	.string	"i"
	.byte	0x1
	.byte	0xf8
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x6
	.string	"ret"
	.byte	0x1
	.byte	0xf9
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x6
	.string	"set"
	.byte	0x1
	.byte	0xfa
	.long	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.long	.LASF20
	.byte	0x1
	.byte	0xfb
	.long	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.long	.LASF21
	.byte	0x1
	.byte	0xfc
	.long	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.long	.LASF23
	.byte	0x1
	.byte	0x71
	.long	0x4f
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	.LASF27
	.byte	0x1
	.value	0x124
	.long	0x79
	.long	.LFB7
	.long	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c8
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.value	0x126
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -58
	.uleb128 0xc
	.string	"ret"
	.byte	0x1
	.value	0x127
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -57
	.uleb128 0xd
	.long	.LASF28
	.byte	0x1
	.value	0x128
	.long	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xc
	.string	"set"
	.byte	0x1
	.value	0x129
	.long	0x3c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x9
	.long	.LASF23
	.byte	0x1
	.byte	0x71
	.long	0x4f
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x8f
	.long	0x3d8
	.uleb128 0xf
	.long	0x6b
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.long	.LASF29
	.byte	0x1
	.value	0x148
	.long	.LFB8
	.long	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x41a
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.value	0x14a
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0xd
	.long	.LASF30
	.byte	0x1
	.value	0x14b
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0xd
	.long	.LASF31
	.byte	0x1
	.value	0x14c
	.long	0x41a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x11
	.long	0x79
	.uleb128 0xf
	.long	0x6b
	.byte	0x7
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
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
.LASF33:
	.string	"project1.c"
.LASF11:
	.string	"int8_t"
.LASF26:
	.string	"test_memset"
.LASF20:
	.string	"ptra"
.LASF21:
	.string	"ptrb"
.LASF5:
	.string	"short int"
.LASF9:
	.string	"sizetype"
.LASF27:
	.string	"test_reverse"
.LASF16:
	.string	"value"
.LASF30:
	.string	"failed"
.LASF13:
	.string	"uint8_t"
.LASF6:
	.string	"long long int"
.LASF8:
	.string	"long int"
.LASF29:
	.string	"course1"
.LASF25:
	.string	"test_memcpy"
.LASF15:
	.string	"digits"
.LASF19:
	.string	"test_memmove1"
.LASF22:
	.string	"test_memmove2"
.LASF24:
	.string	"test_memmove3"
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
.LASF17:
	.string	"test_data1"
.LASF10:
	.string	"char"
.LASF12:
	.string	"int32_t"
.LASF23:
	.string	"print_array"
.LASF31:
	.string	"results"
.LASF3:
	.string	"long unsigned int"
.LASF32:
	.string	"GNU C99 5.4.0 20160609 -mtune=generic -march=i686 -g -O0 -std=c99 -fstack-protector-strong"
.LASF18:
	.string	"test_data2"
.LASF28:
	.string	"copy"
.LASF34:
	.string	"/home/diptarshi/Project1"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
