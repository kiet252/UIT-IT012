.data
       a: .word 0
       b: .word 0
.text
       main:
       li $v0, 5
       syscall
       sw $v0, a
       
       li $v0, 5
       syscall
       sw $v0, b
       
       lw $t0, a
       lw $t1, b
       add $t2, $t0, $t1
       move $a0, $t2
       li $v0, 1
       syscall
