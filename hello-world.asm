; This version works on Linux x86-64.
; If you want a Windows version, just ask me.

global _start

section .rodata
    msg db "Hello, world!", 10
    msglen equ $ - msg

section .text
_start:
    ; sys_write(stdout, msg, msglen)
    mov rax, 1        ; syscall number for write
    mov rdi, 1        ; file descriptor 1 (stdout)
    mov rsi, msg      ; pointer to message
    mov rdx, msglen   ; message length
    syscall

    ; sys_exit(0)
    mov rax, 60       ; syscall number for exit
    mov rdi, 0        ; exit code 0
    syscall
