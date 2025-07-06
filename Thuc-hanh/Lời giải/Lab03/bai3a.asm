.data
       chuoi1: .asciiz "Chao ban! Ban la sinh vien nam thu may?"
       chuoi2: .asciiz "Hihi, minh la sinh vien nam thu 1 ^-^"
.text
       main:
       li $v0, 4
       la $a0, chuoi1
       syscall
       la $a0, chuoi2
       syscall
