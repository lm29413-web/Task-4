.section .bss
.global ram
.lcomm ram, 256

.section .text
.global fill_ram

fill_ram:

    movb $0x00, %al
    movb $0x01, %bl

loop:

    addb %bl, %al
    incb %bl

    cmpb $11, %bl
    jne loop
    movb %al, ram+0x50

    ret

.section .note.GNU-stack,"",@progbits