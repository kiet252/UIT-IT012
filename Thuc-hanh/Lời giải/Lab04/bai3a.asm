.data
   	thongBao: .asciiz "Nhap mot ky tu: "
   	inAscii: .asciiz "\nMa ASCII cua ky tu: "
    	kyTuTruoc: .asciiz "\nKy tu truoc: "
    	kyTuSau: .asciiz "\nKy tu sau: "
    	nhapVao: .space 1

.text
	#in dong "Nhap mot ky tu: " ra man hinh
    	li $v0, 4
    	la $a0, thongBao
    	syscall
	#doc ky tu
    	li $v0, 8
    	la $a0, nhapVao
    	li $a1, 2
    	syscall
	#luu ky tu vao thanh ghi $t0
    	lb $t0, nhapVao

   	 #in dong "\nMa ASCII cua ky tu: "
    	li $v0, 4
    	la $a0, inAscii
    	syscall
    	#in ma ASCII cua ky tu
    	li $v0, 1
    	add $a0, $t0, $0
    	syscall

    	#tinh ky tu truoc
    	addi $t1, $t0, -1
	#in dong "\nKy tu truoc: "
    	li $v0, 4
    	la $a0, kyTuTruoc
    	syscall
	#in ky tu truoc
    	li $v0, 11
    	add $a0, $t1, $zero
    	syscall
    	#tinh ky tu sau
    	addi $t2, $t0, 1
	#in dong "\nKy tu sau: "
    	li $v0, 4
    	la $a0, kyTuSau
    	syscall
	#in ky tu sau
    	li $v0, 11
    	add $a0, $t2, $zero
    	syscall
