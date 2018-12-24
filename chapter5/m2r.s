.section .data
value:
    .int 23
.section .text
.global _start
_start:
    movl value, %eax
    movl $value, %ebx
    int $0x80
