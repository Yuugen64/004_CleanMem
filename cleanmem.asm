    processor 6502      ;tells assembler what the target is.

    seg code            ;tells assembler where the code begins.
    org $F000           ;define the code origin.

Start:                  ;'Labels' indented to the left. Its customary to start Atari cartridges with a label.

    sei                 ;disable interrupts.
    cld                 ;disable the bcd decimal math mode.
    ldx                 ;loads the x register with #$FF
    txs                 ;Transfer the x register value [#$FF -> literally 255] to the (S)tack Pointer. I.e go to the 'top' of the stack.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Clear the page zero region ($00 to $FF -> i.e 0 to 255)
;Meaning the entire RAM and also the entire TIA registers
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    lda #0              ; A = 0
    ldx #$FF            ; X = #$FF (255)

MemLoop:
    sta $0,x            ;store the value inside register A (0), inside of memory address 0 + register X's value (255) -> Store the value of
                        ; 0 inside memory address (0 + 255).
    dex                 ; X--
    bne MemLoop         ;branch if not equal to zero back to MemLoop (Loop until X==0 (P-flag is set)).

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;In 6502 Assembly, you are required to fill the 4kb of ROM. Even in the case of the Atari 2600 which doesn't have interrupts, it's still required.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    org $FFFC           ;jump to the address at the bottom of the cartridge, precisely 4 bytes from the bottom.
    .word start         ;system expects this 2 bytes for the RESET vector. ($FFFC - $FFFD)
    .word start         ;system expects this 2 bytes for the INTERRUPT vector. ($FFFE - $ FFFF)