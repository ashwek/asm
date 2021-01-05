5_01_eatsyscall.out: 5_01_eatsyscall.o
	ld -o 5_01_eatsyscall.out 5_01_eatsyscall.o
5_01_eatsyscall.o: 5_01_eatsyscall.asm
	nasm -f elf64 -g -F stabs 5_01_eatsyscall.asm -o 5_01_eatsyscall.o
