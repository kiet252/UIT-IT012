# if (i == j) {
#f = g + h;
#} else {
# f = g - h;
# }

# voi i, j, f, g, h lan luot chua trong cac thanh ghi $s0, $s1, $s2, $t0, $t1
	addi $s0, $0, 3
     	addi $s1, $0, 3
    	addi $t0, $0, 4
    	addi $t1, $0, 5
	bne $s0, $s1, if #i != j thi j den else
if:
	add $s2, $t0, $t1 # f = g + h
	j exit
else:
	sub $s2, $t0, $t1 # f = g - h
exit:
