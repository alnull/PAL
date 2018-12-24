.section .data
output:
    .ascii "The Processor Vendor ID is 'xxxxxxxxxxxx'\n"
.section .text
.global _start
_start:
    movl $0, %eax
    cpuid
    movl $output, %edi
    movl %ebx, 28(%edi) #High 4 bytes
    movl %edx, 32(%edi) #Middle 4 bytes
    movl %ecx, 36(%edi) #Low 4 bytes
    movl $4, %eax #write
    movl $1, %ebx #write to fp=1(console)
    movl $output, %ecx #start point
    movl $42, %edx #string length
    int $0x80 #Linux system call 4(in result of eax=4)
    movl $1, %eax #call 1
    movl $0, %ebx #return value
    int $0x80
