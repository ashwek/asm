section .text

global _start

_start:
    ; view results in a debugger
    nop
    mov eax, 4
    mov ebx, 4

    inc eax
    dec ebx

    mov eax, 1 ; exit system call
    int 80h
