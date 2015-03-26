.section .bss

stack_bottom:
	.skip 16384
stack_top:

.section .text
	
	.globl _start
	
_start:
	jmp real_start
	
	.align 4
	.long 0x1BADB002
	.long 0x00000003
	
	.long 0xE4524FFB
	
real_start:
	movl $stack_top, %esp
	pushl %ebx
	call init
	
1:	
	jmp 1b
	
