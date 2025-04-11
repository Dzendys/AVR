.text
.global main
.include "printlib.inc"

main:
    ; Initialize the display
    call init_disp

    ; First line: 0x00 to 0x0F
    ; Second line: 0x40 to 0x4F

    ldi r16, 'A'        ; Load character 'A' into R16
    ldi r17, 0          ; Load posiiton 0 into register R17
    call show_char      ; Display the character from R16 at the position from R17
    
loop:
    nop                ; Do nothing
    jmp loop          ; Infinite loop

.end
