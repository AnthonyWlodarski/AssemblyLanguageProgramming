section .text
    global _start       ; label for where execution starts

_start:
    mov eax,4           ; system call id: sys_write
    mov ebx,1           ; file descriptor for standard output
    mov ecx,string      ; string address
    mov edx,length      ; string length
    int 80h             ; system call
    mov eax,1           ; system call id: sys_exit
    mov ebx,0           ; exit code 0: no error
    int 80h             ; system call

section .data
string: db 'Hello, world',0Ah   ; output string
length: equ 13                  ; length of string
