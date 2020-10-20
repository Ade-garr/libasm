section .text
    global  ft_read
    extern  __errno_location

ft_read:
    mov     rax, 0
    syscall
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