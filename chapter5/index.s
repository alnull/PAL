.code32
.section .data
output:
    .asciz "The value is %d\n"
values:
    .int 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
.section .text
.global _start
_start:
    movl $0, %edi
    movl $4, %ebx
loop:
    movl values(%ebx, %edi, 4), %eax
    pushl %eax
    pushl $output
    call printf
    addl $8, %esp
    inc %edi
    cmpl $9, %edi
    jne loop
    movl $0, %ebx
    movl $1, %eax
    int $0x80
