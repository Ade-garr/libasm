section .text
    global  ft_strdup
    extern  __errno_location
    extern  malloc
    extern  ft_strlen
    extern  ft_strcpy

ft_strdup:
    ;mov     rsi, rdi
    push    rdi
    call    ft_strlen
    mov     rdi, rax
    inc     rdi
    call    malloc
    pop     rsi
    cmp     rax, 0
    jz      _error
    mov     rdi, rax
    call    ft_strcpy
    ret

_error:
    push    rax
    call    __errno_location
    pop     QWORD[rax]
    mov     rax, 0
    ret
