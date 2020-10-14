section .text
    global  _ft_strlen

_ft_strlen:
    mov rax, rdi

_start:
    cmp byte[rax], 0
    jz _finished
    inc rax
    jmp _start

_finished:
    sub rax, rdi
    ret