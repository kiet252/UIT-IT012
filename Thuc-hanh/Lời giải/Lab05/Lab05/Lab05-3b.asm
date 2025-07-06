.data
	
thongbao1:.asciiz "Nhap so luong phan tu cua mang: "
thongbao2:.asciiz "Nhap gia tri lan luot cho cac phan tu: \n"
thongbao3:.asciiz "Nhap i,j: \n"
Arr:	.space 100
	.text
	.globl main
main:
	la $a0,thongbao1
	addi $v0,$0,4
	syscall
	
	addi $v0,$0,5 
	syscall
	add $s2,$v0,$0	
	
	la $a0,thongbao2
	addi $v0,$0,4
	syscall
	
	addi $t0,$0,0
	la $s3,Arr

loop1:	beq $t0,$s2,exit1 
	addi $v0,$0,5  
	syscall
	addi $t1,$v0,0
	sb $t1,($s3) 
	addi $s3, $s3, 1
	addi $t0,$t0,1 
	j loop1

exit1:	
	la $s3,Arr
	la $a0,thongbao3
	addi $v0,$0,4
	syscall
	
	addi $v0,$0,5
	syscall
	add $s0,$v0,$0	
	
	addi $v0,$0,5
	syscall
	add $s1,$v0,$0	
	
	
	slt $t0,$s0,$s1 
	bne $t0,$0,true 
	add $s3,$s3,$s0
	sb $s1,($s3) 
	j e
true:	
	add $s3,$s3,$s0 
	sb $s0,($s3)
e:
	lb $a0,($s3)
	addi $v0,$0,1
	syscall
	
	addi $a0, $zero, 10 
	addi $v0, $zero, 11
	syscall 
#xuat mang
	la $s4,Arr
	addi $t0,$0,0 

 loop2:	beq $t0,$s2,exit2 
	
	lb $a0,($s4)
	addi $v0,$0,1
	
	addi $s4,$s4,1 
	addi $t0,$t0,1
	syscall
	
	addi $a0,$0,32	#ma ascii cua khoang trang " "
	addi $v0,$0,11 
	syscall
	j loop2
exit2:
