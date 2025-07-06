	add $t1,$t2,$t3
	addi $t1,$t1,5
	sub $t1,$t2,$3
	lw $t1, 4($t2) 
	sw $t1, 8($t2) 
	j label
	label:
	slt $t1,$t2,$t3
