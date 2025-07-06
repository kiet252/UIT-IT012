.text
     	#nhap so a vao thanh ghi $t0
     	li $v0, 5
     	syscall
     	add $t0, $v0, $zero
     	#nhap so b vao thanh ghi $t1
     	li $v0, 5
     	syscall
     	add $t1, $v0,$zero
     	#xet so lon hon giua a va b
     	slt $t2, $t1, $t0
     	bne $t2, $zero, else #neu a > b
if:
	#in b
     	add $a0, $t1, $zero
     	li $v0, 1
     	syscall
     	j exitall
else: 	
	#in a
    	add $a0, $t0, $zero
    	li $v0, 1
    	syscall 
exitall:
