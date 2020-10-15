section .text
    global  ft_strcmp

ft_strcmp:
    xor rcx, rcx
    mov rcx, 0

_loop:
    mov rbx, [rdi + rcx]
    cmp rbx, [rsi + rcx]
    jnz _finish
    cmp byte[rdi + rcx], 0
    jz  _equal
    inc rcx
    jmp _loop

_equal:
    mov rax, 0
    ret

_finish:
    xor rax, rax
    mov al, [rdi + rcx]
    xor rbx, rbx
    mov bl, [rsi + rcx]
    sub rax, rbx
    ret