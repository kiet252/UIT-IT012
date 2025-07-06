.data 
space: .asciiz " "
array1:	.word 5, 6, 7, 8, 1, 2, 3, 9, 10, 4 
size1:	.word 10     

array2:	.byte 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16 
size2:	.word 16

array3: .space 8
size3: .word 8
	.text
	.globl main
main:
	la $s1,array2
      	la $s2,array2
	la $s3,array3
	
	addi $s2,$s2,15
	addi $t3,$s3,8 
	
loop:	beq $s3,$t3,exit 
	lb $s5,($s1)
	lb $s6,($s2)
      	add $s7,$s5,$s6
	sb $s7, ($s3)
	addi $s3,$s3,1 
	addi $s1,$s1,1 
	addi $s2,$s2,-1
	j loop
	
exit:
	la $s0, array3
	addi $s1,$s0,8
loop1:	beq $s0,$s1, exit1 
	lb $a0,($s0)
	addi $v0,$0,1
	syscall
	
	addi $v0,$0,4  
	la $a0,space 
	syscall
	
	addi $s0,$s0,1 
	j loop1
exit1:
