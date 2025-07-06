.data 
	a: .word 6 
	b: .word 5 
	c: .word 0 
	d: .word 0  
.text 
	lw $s0, a  
	lw $s1, b  
	sub $s2, $s0, $s1 
	add $s3, $s0, $s1 
	sw $s2, c  
	sw $s3, d 