.data 
	i: .word 1
	j: .word 1
	f: .word 0 
	g: .word 0 
	h: .word 0 
.text 
	lw $s3, i   
	lw $s4, j  
	lw $s1, g 
	lw $s2, h
	bne $s3, $s4, else  
	add $s0, $s1, $s2  
	j end 
	else: 
	sub $s0, $s1, $s2   
	end: 
	sw $s0, f 
