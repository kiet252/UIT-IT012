.data 
array1:  .word 5,6,7,8,1,2,3,9,10,4   
size1:   .word 10

array2:  .byte 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16 
size2:   .word 16

array3:  .space 8
size3:   .word 8 
thongbao1:.asciiz "Nhap mang can chon: "
thongbao2:.asciiz "Nhap phan tu can xuat: "
     	.text
     	.globl main
main:
	la $a0,thongbao1
	addi $v0,$0,4
	syscall
	
	addi $v0,$0,5
	syscall
	add $s0,$0,$v0
	
	la $a0,thongbao2
	addi $v0,$0,4
	syscall
	
	addi $v0,$0,5
	syscall
	add $s1,$0,$v0
	
	addi $s1,$s1,-1
	addi $t1,$0,1
	addi $t2,$0,2
	addi $t3,$0,3
	
	beq $s0,$t1,ar1
	beq $s0,$t2,ar2
	beq $s0,$t3,ar3
	j exitall
ar1:	la $s3,array1
	sll $s1,$s1,2
	add $s3,$s3,$s1
	lw $a0,($s3)
	addi $v0,$0,1
	syscall
	j exitall
	
ar2:	la $s3,array2
	add $s3,$s3,$s1
	lb $a0,($s3)
	addi $v0,$0,1
	syscall
	j exitall

ar3:	la $s3,array3
	add $s3,$s3,$s1
	lb $a0,($s3)
	addi $v0,$0,1
	syscall
	j exitall

exitall:
