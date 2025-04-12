.text
.global main
.include "printlib.inc"

main:
    call init_disp
    ldi r17, 0x00

    ldi r16, 'H'
    call show_char
    inc R17

    ldi r16, 'e'
    call show_char
    inc R17

    ldi r16, 'l'
    call show_char
    inc R17

    ldi r16, 'l'
    call show_char
    inc R17

    ldi r16, 'o'
    call show_char

    ; New line
    ldi R17, 0x40

    ldi r16, 'W'
    call show_char
    inc R17

    ldi r16, 'o'
    call show_char
    inc R17

    ldi r16, 'r'
    call show_char
    inc R17

    ldi r16, 'l'
    call show_char
    inc R17

    ldi r16, 'd'
    call show_char
    inc R17

    ldi r16, '!'
    call show_char

loop:
        nop
    jmp loop

.end