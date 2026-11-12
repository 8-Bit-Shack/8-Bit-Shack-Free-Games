************************************************************
* oubliette_2021 - BOB6 (disassembly)
*
* Disassembled from the original binary (141 bytes, $64BE-$654A).
* Reconstructed source: labels are generated, comments are minimal.
* Bytes the disassembler could not prove to be code are emitted as HEX/ASC data.
* Original program by its authors; see ../README.txt for attribution and terms.
* Entry point(s): $64BE (NMOS 6502 opcodes only).
************************************************************

               ORG    $64BE

PLOT           EQU    $F800

START          JMP    L64D7
               HEX    00000000000000
L64C8          HEX    000000
L64CB          HEX    000000
L64CE          HEX    000000
L64D1          HEX    000000
L64D4          HEX    000000
L64D7          LDX    #$16
               LDA    #$00
L64DB          STA    $64C0,X
               DEX
               BNE    L64DB
               LDA    #$00
               STA    L64C8
L64E6          LDA    #$00
               STA    L64CB
L64EB          LDY    L64CB
               LDA    L64C8
               JSR    $F871
               STA    L64CE
               SEC
               LDA    #$27
               SBC    L64CB
               STA    L64D1
               LDY    L64D1
               LDA    L64C8
               JSR    $F871
               STA    L64D4
               LDA    L64D4
               JSR    $F864
               LDY    L64CB
               LDA    L64C8
               JSR    PLOT
               LDA    L64CE
               JSR    $F864
               LDY    L64D1
               LDA    L64C8
               JSR    PLOT
               LDA    L64CB
               CMP    #$13
               BCC    L6534
               JMP    L653A
L6534          INC    L64CB
               JMP    L64EB
L653A          LDA    L64C8
               CMP    #$27
               BCC    L6544
               JMP    L654A
L6544          INC    L64C8
               JMP    L64E6
L654A          RTS
