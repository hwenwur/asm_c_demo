global _start

section .text
_start:
    extern foo
    extern printf
    extern exit
    mov eax, 3
    push eax
    mov eax, 4
    push eax
    call foo
    push eax
    push msg
    call printf
    mov eax, 0
    push eax
    call exit

section .data
msg : db "result = %d", 10, 0
