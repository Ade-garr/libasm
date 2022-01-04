section .text
    global  ft_strcpy

ft_strcpy:
    mov     rax, rdi

_loop:
    cmp     byte[rsi], 0
    jz      _finish
    mov     dl, [rsi]
    mov     [rdi],  dl
    inc     rdi
    inc     rsi
    jmp      _loop

_finish:
    mov     dl, 0
    mov     [rdi], dl
    ret
