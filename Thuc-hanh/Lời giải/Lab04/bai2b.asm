#int Sum = 0
#for (int i = 1; i <=N; ++i){
 #Sum = Sum + i;
#}
#(Voi i, N, Sum lan luot chua trong cac thanh ghi $s0, $s1, $s2)

.text
	li $s1, 10 # N = 10
	li $s0, 1 # i = 1
	li $s2, 0 # Sum = 0
loop:
	sle $t0, $s0, $s1
	beq $t0, $zero, exit_loop
	add $s2, $s2, $s0 #Sum = Sum + i
	addi $s0, $s0, 1
	j loop
exit_loop:
	
