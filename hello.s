.code32
.section .data
string1:
    .asciz "%sHello World!\n"
string2:
    .asciz "C Library, "
.section .text
.global _start
_start:
    pushl $string2
    pushl $string1
    call printf
    addl $8, %esp
    pushl $0
    call exit
