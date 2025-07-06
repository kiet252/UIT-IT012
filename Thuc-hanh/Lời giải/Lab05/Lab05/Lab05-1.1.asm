	.data 
array1: .word 5,6,7,8,1,2,3,9,10,4   
size1:  .word 10

array2: .byte 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16 
size2:  .word 16

array3: .space 8
size3:  .word 8 
	.text
main:
    	lw $t1, size1   
	sll $t1, $t1, 2 
	add $s0, $zero, $zero
	
LOOP1:	slt $t3, $s0, $t1
      	beq $t3, $zero, EXIT1
      
      	lw $a0, array1($s0)        
      	addi $v0, $zero, 1
      	syscall 
      	
      	addi $a0, $zero, 32
      	addi $v0, $zero, 11
      	syscall
      
      	addi $s0, $s0, 4
      	j LOOP1 
EXIT1: 
     	addi $a0, $zero, 10 
     	addi $v0, $zero, 11
     	syscall 
     
     	lw $t1, size2 
     	add $s0,$zero, $zero
LOOP2: 	slt $t3, $s0, $t1
	beq $t3, $zero, EXIT2
       	lb $a0, array2($s0)
       	addi $v0, $zero, 1
       	syscall
       
       	addi $a0, $zero, 32 
        addi $v0, $zero, 11
       	syscall 
       
       	addi $s0, $s0, 1 
       	j LOOP2
EXIT2: 	addi $a0, $zero, 10 
       	addi $v0, $zero, 11
       	
       	syscall
     	addi $v0, $zero, 10 
     	syscall 
     
