section .text
    global  ft_strdup
    extern  malloc
    extern  ft_strlen
    extern  ft_strcpy

ft_strdup:
    push    rdi
    call    ft_strlen WRT ..plt
    mov     rdi, rax
    inc     rdi
    call    malloc WRT ..plt
    pop     rsi
    cmp     rax, 0
    jz      _error
    mov     rdi, rax
    call    ft_strcpy WRT ..plt
    ret

_error:
    ret
