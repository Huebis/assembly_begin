extern printf ; nasm -f elf64 hello.asm -o hello.obj
global main   ;   gcc -no-pie hello.obj -o hello



section .data
    fmt db "Hallo %d!", 10, 0
    name db "Lisa", 0

section .text
    

main:
    mov rdi, fmt
    mov r15D, 0 ;begin der for schlaufe
    mov r14D, 1 ; kommt immer dazu
    mov r13D, 100 ; bis ende ohne

    vonneu:

    cmp r15D, r13D
    je fertig

    xor eax, eax
    mov rdi, fmt
    mov esi, r15D
    call printf

    add r15D, r14D



    jmp vonneu








    fertig:

    mov rax, 60         ; syscall exit begin vom Ende
    xor rdi, rdi
    syscall


