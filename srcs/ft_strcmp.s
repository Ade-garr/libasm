section .text
    global  ft_strcmp

ft_strcmp:
    mov cl, [rdi]
    cmp cl, [rsi]
    jnz _finish
    cmp byte[rdi], 0
    jz  _finish
    inc rdi
    inc rsi
    jmp ft_strcmp

_finish:
    xor rax, rax
    mov al, [rdi]
    xor rcx, rcx
    mov cl, [rsi]
    sub rax, rcx
    ret