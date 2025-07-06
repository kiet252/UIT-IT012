.data
       chuoi: .space 100
.text
       main:
       li $v0, 8
       la $a0, chuoi
       la $a1, 100
       syscall
       
       li $v0, 4
       la $a0, chuoi
       syscall
