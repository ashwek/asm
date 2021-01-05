section .data ; initialised data
    Hello: db "Hello World", 10 ; 10 = \n

section .text ; code starts in this section

global _start ; code execution starts from _start

_start:
    mov eax, 4 ; specify sys_call, 4 = system write sys_call
    mov ebx, 1 ; specify output file location, 1 = stdout
    mov ecx, Hello ; specify the address from where to get data
    mov edx, 12 ; specify the number of bytes to print
    int 80h ; call the sys_call

    mov [Hello], WORD 'Aa' ; replace the 1st 2 bytes of "Hello" with "Aa"

    mov eax, 4 ; specify sys_call, 4 = system write sys_call
    mov ebx, 1 ; specify output file location, 1 = stdout
    mov ecx, Hello ; specify the address from where to get data
    mov edx, 12 ; specify the number of bytes to print
    int 80h ; call the sys_call

    mov eax, 1
    int 80h
