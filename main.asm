global _start
global multi2

extern addxy
extern printf
extern exit

section .text
_start:
    
    mov eax, 9
    push eax
    mov eax, 4
    push eax
    call addxy
    add esp, 8
    push eax
    push msg
    call printf
    mov eax, 0
    push eax
    call exit

multi2:
    mov eax, [esp + 4]
    add eax, eax
    ret

section .data
msg : db "result = %d", 10, 0
