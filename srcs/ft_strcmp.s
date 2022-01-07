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
    jb ret_neg
	ja ret_pos
	jmp ret_eq

ret_eq:
	mov rax, 0
	ret

ret_neg:
	mov rax, -1
	ret

ret_pos:
	mov rax, 1
    ret