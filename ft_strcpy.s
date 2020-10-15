section .text
    global  ft_strcpy

ft_strcpy:
    mov     rax, rdi

_loop:
    cmp     byte[rsi], 0
    jz      _finish
    mov     rcx, [rsi]
    mov     [rdi], rcx
    inc     rcx
    inc     rsi
    jmp      _loop

_finish:
    mov     rcx, 0
    mov     [rdi], rcx
    ret
