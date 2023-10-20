extern _printf
extern _scanf

global _main

section .data
    INTOUT: db "%d", 10, 0
    INTIN: db "%d", 0
    RESULT: db "Iterations = %d", 0
    x: times 4 db 0
    i: times 4 db 0
section .text
_main:
    push x
    push INTIN
    call _scanf
    jmp _for
_for:
    cmp DWORD [x], 1
    je _result
    inc DWORD [i]
    test DWORD [x], 1
    jz _divide
    mov eax, DWORD [x]
    imul eax, 3
    mov DWORD [x], eax
    inc DWORD [x]
    push DWORD [x]
    push INTOUT
    call _printf
    jmp _for
_divide:
    shr DWORD [x], 1
    push DWORD [x]
    push INTOUT
    call _printf
    jmp _for
_result:
    push DWORD [i]
    push RESULT
    call _printf
    jmp _wait
_wait:
    jmp _wait