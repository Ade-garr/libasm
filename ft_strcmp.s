section .text
    global  ft_strcmp

ft_strcmp:
    mov bl, [rdi]
    cmp bl, [rsi]
    jnz _finish
    cmp byte[rdi], 0
    jz  _finish
    inc rdi
    inc rsi
    jmp ft_strcmp

_finish:
    xor rax, rax
    mov al, [rdi]
    xor rbx, rbx
    mov bl, [rsi]
    sub rax, rbx
    ret