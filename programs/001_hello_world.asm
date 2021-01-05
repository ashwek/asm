section .data       ; initialised data
    Hello: db "Hello World", 10    ; 10 = \n

section .text ; text section contains code

global _start ; program starts execution from _start

_start:
    nop
    mov eax, 4  ; specify sys_write system call
    mov ebx, 1  ; specify output location, 1 : stdout
    mov ecx, Hello ; specify address from where to get data to print
    mov edx, 12 ; specify the number of byte to write
    int 80h ; make system call

    mov eax, 1 ; specity Exit system call
    int 80h ; make system call
