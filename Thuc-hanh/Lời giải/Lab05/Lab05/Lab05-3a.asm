           .data
thongbao1:.asciiz "Nhap so luong phan tu cua mang: "
thongbao2:.asciiz "Nhap gia tri lan luot cho cac phan tu: \n"
lonnhat:  .asciiz "Gia tri lon nhat: "
nhonhat:  .asciiz "\nGia tri nho nhat: "
tong:	  .asciiz "\nTong tat ca cac phan tu: "
thongbao3:.asciiz "\nNhap vao chi so cua phan tu ban muon xuat: "
thongbao4:.asciiz "Gia tri cua phan tu: "

array:	.space 100
	.text
	.globl main
main:
	la $a0,thongbao1
	addi $v0,$0,4
	syscall
	
	addi $v0,$0,5
	syscall
	add $s1,$v0,$0	
	
	la $a0,thongbao2
	addi $v0,$0,4
	syscall
	
	addi $t0,$0,0
	la $s0,array

loop1:	beq $t0,$s1,exit1
	addi $v0,$0,5
	syscall
	addi $t1,$v0,0
	sb $t1,0($s0)
	addi $s0,$s0,1
	addi $t0,$t0,1
	j loop1

exit1:	

#phan tu lon nhat:
	la $s0,array
	lb $s2,($s0)
	addi $s3,$s0,1
	addi $t0,$0,1
	
loop2:	beq $s1,$t0,exit2 
	lb $s4,($s3)
	slt $s7,$s2,$s4
	beq $s7,$0,j2
	j e2

e2:	# $s2 < $s4
	add $s2,$0,$s4
	addi $t0,$t0,1
	addi $s3,$s3,1
	j loop2

j2:	# $s2 >= $s4
	addi $t0,$t0,1
	addi $s3,$s3,1
	j loop2
exit2:
	la $a0,lonnhat
	addi $v0,$0,4
	syscall
	
	addi $a0,$s2,0
	addi $v0,$0,1
	syscall


#phan tu nho nhat:
	la $s0,array
	lb $s2,($s0)	
	addi $s3,$s0,1
	addi $t0,$0,1
	
loop3:	beq $s1,$t0,exit3
	lb $s4,($s3)
	slt $s7,$s2,$s4
	beq $s7,$0,e3
	j j3

e3:	# $s2 < $s4
	add $s2,$0,$s4
	addi $t0,$t0,1
	addi $s3,$s3,1
	j loop2

j3:	# $s2 >= $s4
	addi $t0,$t0,1
	addi $s3,$s3,1
	j loop3
exit3:
	la $a0,nhonhat
	addi $v0,$0,4
	syscall
	
	addi $a0,$s2,0
	addi $v0,$0,1
	syscall

#tong cac phan tu:
	la $s0,array
	addi $t0,$0,0
	addi $s2,$0,0
loop4:	beq $s1,$t0,exit4
	
	lb $s3,($s0)
	add $s2,$s2,$s3
	
	addi $s0,$s0,1
	addi $t0,$t0,1
	j loop4
exit4:
	la $a0,tong
	addi $v0,$0,4
	syscall
	
	addi $a0,$s2,0
	addi $v0,$0,1
	syscall

#nhap xuat theo yeu cau:
	la $s0,array
	
	la $a0,thongbao3
	addi $v0,$0,4
	syscall
	
	addi $v0,$0,5
	syscall
	add $s7,$v0,$0
	
	add $s0,$s0,$s7
	
	la $a0,thongbao4
	addi $v0,$0,4
	syscall
	
	lb $a0,($s0)
	addi $v0,$0,1
	syscall
