    	.data 
array1: .word 5,6,7,8,1,2,3,9,10,4   
size1:  .word 10

array2: .byte 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16 
size2:  .word 16

array3: .space 8
size3:  .word 8 
      	.text
main:
	lw $t2,size2
	addi $t2,$t2,-1
	lw $t3,size3 
	add $s3, $zero, $zero 
loop:	beq $s3,$t3,exit  
	lb $s1, array2($s0)
	lb $s2, array2($t2)
	add $s6,$s1,$s2
	sb $s6, array3($s3) 
	
	addi $s3,$s3,1 
	addi $s0,$s0,1 
	addi $t2,$t2,-1
	
	j loop
exit:
	addi $s0,$0,0 
	
loop2:	beq $s0,$t3,exit2 
	lb $a0, array3($s0)
	addi $v0,$0,1
	syscall 
	addi $s0,$s0,1
	
	#in khoang trang
	addi $a0,$0,32
	addi $v0,$0,11
	syscall		
	
	j loop2
exit2: 
     
