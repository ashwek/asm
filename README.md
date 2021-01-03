# ASM

```bash
#Installing NASM (Netwide Assembler) on linux
$ sudo apt-get install nasm
```

Atom plugin : **language-nasmx86** Adds syntax highlighting to Assembly x86 (NASM) files in Atom [language-nasmx86 - atom.io](https://atom.io/packages/language-nasmx86)

----

## Executing

#### Compiling

```bash
# compiling - generating object file
$ nasm -f elf64 -g -F stabs code.asm -o code.o
```

 - ``-f elf64`` specifies the format of the output object file. Use ``nasm -hf`` to get list of possilbe output formats
 - ``-g`` to include debugging info
 - ``-F stabs`` specifies the format of the debug info. Use ``nasm -f <format> -y`` to get possible debug formats
 - ``-o code.o`` specify the output object filename

#### Linking

```bash
# generating executable file
$ ld -o code code.o
```
