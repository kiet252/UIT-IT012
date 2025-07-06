.data
    	thongbao: .asciiz "Nhap 2 so nguyen:\n"
	tong: .asciiz "Tong: "
	hieu: .asciiz "\nHieu: "
	tich: .asciiz "\nTich: "
	thuong: .asciiz "\nThuong: "
	du:.asciiz "\nDu:"
.text
     	main:
     	li, $v0, 4
     	la, $a0, thongbao
     	syscall
     	#Nhap so thu nhat
     	li $v0,5
     	syscall
     	add $t0, $v0,$zero
     	#Nhap so thu hai  
     	li $v0, 5
     	syscall
     	add $t1, $v0,$zero
     	#Thuc hien phep tinh cong
      	li $v0, 4
      	la $a0, tong
      	syscall
      	add $t2, $t0, $t1
       	add $a0, $t2, $zero
       	li $v0, 1
       	syscall
    	#Thuc hien phep tinh tru
     	li $v0, 4
      	la $a0, hieu
      	syscall
      	sub $t3, $t0, $t1
      	add $a0, $t3, $zero 
      	li $v0, 1
      	syscall
   	#Thuc hien phep tinh nhan  
      	li $v0, 4
      	la $a0, tich
      	syscall
      	mult $t0, $t1
	mflo $t4
      	add $a0, $t4, $zero
      	li $v0, 1
      	syscall 
     	#Thuc hien phep tinh chia
     	li $v0,4
      	la $a0, thuong
      	syscall 
      	div $t0, $t1
      	mfhi $t6
      	mflo $t5
      	add $a0, $t5, $zero
      	li $v0, 1
      	syscall 
      	li $v0, 4
      	la $a0, du
      	syscall
      	add $a0, $t6, $zero
      	li $v0, 1
      	syscall
