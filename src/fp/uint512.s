.intel_syntax noprefix

.section .rodata

.global uintbig_1
uintbig_1:
    .quad 1, 0, 0, 0
    .quad 0, 0, 0, 0


.section .text

.global uintbig_add
uintbig_add:
    mov rax, [rsi +  0]
    add rax, [rdx +  0]
    mov [rdi +  0], rax
    .set k, 1
    .rept 7
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
    setc al
    movzx rax, al
    ret

.global uintbig_sub
uintbig_sub:
    mov rax, [rsi +  0]
    sub rax, [rdx +  0]
    mov [rdi +  0], rax
    .set k, 1
    .rept 7
        mov rax, [rsi + 8*k]
        sbb rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
    setc al
    movzx rax, al
    ret

