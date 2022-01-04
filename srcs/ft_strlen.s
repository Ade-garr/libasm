section .text
    global  ft_strlen

ft_strlen:
    mov rax, rdi

_start:
    cmp byte[rax], 0
    jz _finished
    inc rax
    jmp _start

_finished:
    sub rax, rdi
    ret