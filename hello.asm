extern printf
global main


section .data
    fmt db "Hallo %d!", 10, 0
    name db "Lisa", 0

section .text
    

main:
    mov rdi, fmt
    mov esi, 67
    xor eax, eax     ; rax=0 wegen variadic function
    call printf


    mov rax, 60         ; syscall exit begin vom Ende
    xor rdi, rdi
    syscall
