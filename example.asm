.text
.global main

main:
    ldi r16, 12        ; Load 12 into register r16
    ldi r17, 3         ; Load 3 into register r17
    add r16, r17       ; r16 + r17 → r16 = 15
    cpi r16, 15        ; Compare r16 with 15
    breq equal_label   ; If equal, jump to equal_label

loop:
    nop                ; Do nothing
    rjmp loop          ; Infinite loop

equal_label:
    ldi r18, 0xFF      ; Load 0xFF into r18 as indicator
    rjmp loop          ; Jump back to loop

.end
