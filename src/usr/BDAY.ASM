; ========================================================================
; House-DOS HELP COMMAND
; 
; Written by Jacob Bates and Josiah Fu
; ========================================================================

    BITS 16

; ========================================================================
; Header
; ========================================================================

header:
    jmp main                            ; Don't execute the header

h_creator       dw creator              ; Creator string
h_desc          dw desc                 ; Description string
h_usage         dw usage                ; Usage string


; ========================================================================
; Main code
; ========================================================================

main:
    mov ax, 0x4000                      ; Output string
    mov si, msg                         ; Help lines
    int 0x7E

.done:
    mov ah, 0xFF                        ; Handback
    int 0x7E


data:

msg         db "==============================================================", 0x0A
            db "     _   _   _          _  ___  _  ___  _  ___      _   _", 0x0A
            db "|_| |_| |_| |_| |_|    |_\  |  |_|  |  |_|  |  |_| | \ |_| |_|", 0x0A
            db "| | | | |   |    |     |_/ _|_ |\  _|_ |\   |  | | |_/ | |  |", 0x0A
            db "           ___  _   __  _   _     _   _  ___  __  __", 0x0A
            db "            |  |_| |   | | |_\   |_\ |_|  |  |__ |_", 0x0A
            db "          |_|  | | |__ |_| |_/   |_/ | |  |  |__ __|", 0x0A, 0x0A
            db "===============================================================", 0x00

creator     db "House-DOS Developers", 0x00
desc        db "Prints a happy birthday message ASCII art.", 0x00
usage       db "BDAY", 0x0A
            db "OUT: Birthday message", 0x00
