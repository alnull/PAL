str:
    .asciz "01234567891234"
.section .data
strings:
    .asciz "Hello world!\n"
bufferdata:
    .fill 1000
.section .bss
    .comm buffer 1000

.section .text
.global _start
_start:
    movl $4, %eax    
    movl $1, %ebx
    movl $str, %ecx
    movl $14, %edx
    int $0x80
    movl $1, %eax
    movl $0, %ebx
    int $0x80
