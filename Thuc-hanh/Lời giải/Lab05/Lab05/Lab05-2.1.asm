.data 
space:	.asciiz " "
enter:	.asciiz "\n"
array1:	.word 5, 6, 7, 8, 1, 2, 3, 9, 10, 4 
size1:	.word 10     

array2:	.byte 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16 
size2:	.word 16

array3: .space 8
size3: .word 8
	.text
	.globl main
main:
	la $s0, array1
	addi $s1,$s0,40 
loop1:	beq $s0,$s1, exit1 
	lw $a0,($s0) 
	addi $v0,$0,1 
	syscall 
	
	addi $v0,$0,4 
	la $a0,space
	syscall 
	
	addi $s0,$s0,4
	j loop1
exit1:
	addi $v0,$0,4 
	la $a0,enter 
	syscall
	
	la $s0, array2
	addi $s1,$s0,16
loop2:	beq $s0,$s1, exit2
	lb $a0,($s0)
	addi $v0,$0,1
	syscall
	
	addi $v0,$0,4
	la $a0,space
	syscall
	
	addi $s0,$s0,1
	j loop2
exit2:
