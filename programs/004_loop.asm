section .text

global _start

_start:
    nop
    mov ebx, 5
loop: dec ebx
    jnz loop

    mov eax, 1
    int 80h
