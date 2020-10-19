section .text
    global      ft_write
    extern      __errno_location

ft_write:
    mov     rcx, rsi
    mov     rbx, rdi
    mov     rax, 4
    int     80h
    cmp     rax, 0
    jl      _error
    ret

_error:
    neg     rax
    push    rax
    call    __errno_location
    pop     QWORD[rax]
    mov     rax, -1
    ret