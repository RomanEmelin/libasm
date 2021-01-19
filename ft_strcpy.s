section .data

section .text
        global _ft_strcpy
; ft_strcpy(dst = rdi, src = rsi)
_ft_strcpy:     mov rax, 0                     ; i = 0
                jmp copy

copy:           mov dl, byte[rsi + rax]        ; dl is 8-bit register of rdi(1 arg),
                mov byte[rdi +rax], dl
                cmp dl, 0
                je  return
                inc rax                        ;i++
                jmp copy

return:         mov   rax, rdi
                ret                