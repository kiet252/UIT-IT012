.data
	thongBao: .asciiz "Nhap ky tu: "
	so: .asciiz "\nLoai so"
	chuThuong: .asciiz "\nLoai chu thuong"
	chuHoa: .asciiz "\nLoai chu hoa"
	error: .asciiz "\nInvalid type"
	nhapVao: .space 1
.text
	#in dong "Nhap ky tu: "
	li $v0, 4
    	la $a0, thongBao
    	syscall
    	#Doc ky tu nhap vao
	li $v0, 8
	la $a0, nhapVao
	li $a1, 2
    	syscall
    	#luu gia tri vao $s1
    	la $s0, nhapVao
    	lb $s1, ($s0)
 	#Neu khong roi vao 1 trong ba loai
 	li $t1, 48
    	slt $t0, $s1, $t1
	bne $t0, $zero, exitError 
	#Neu khong roi vao 1 trong ba loai
	li $t1, 124
    	slt $t0, $s1, $t1
	beq $t0, $zero, exitError  
	#Neu la so nguyen
	li $t1, 48
	slt $t0, $s1, $t1
	beq $t0, $zero, soNguyen
	khongNguyen:
	#Neu la chu in hoa
	li $t1, 91
    	slt $t0, $s1, $t1
	bne $t0, $zero, chuInHoa
	khongHoa:
	#Neu la chu in thuong
	li $t1, 97
    	slt $t0, $s1, $t1     
	beq $t0, $zero, chuInThuong

chuInHoa:
	#neu khong la chu in hoa
	li $t1, 65
	slt $t0, $s1, $t1
	bne $t0, $zero, khongHoa
	#neu la chu In hoa thi in
    	li $v0, 4
    	la $a0, chuHoa
    	syscall
    	j exitall
chuInThuong:
	#neu khong la chu in thuong
	li $t1, 123
	slt $t0, $s1, $t1
	beq $t0, $zero, exitError
	#neu la chu thuong thi in
	li $v0, 4
    	la $a0, chuThuong
    	syscall
    	j exitall
soNguyen:
	#Neu khong la so nguyen
	li $t1, 58
    	slt $t0, $s1, $t1
	beq $t0, $zero, khongNguyen 
	#neu la so nguyen thi in
    	li $v0, 4
    	la $a0, so
    	syscall
    	j exitall
    	
exitError:
	li $v0, 4
    	la $a0, error
    	syscall
    	j exitall
exitall:
