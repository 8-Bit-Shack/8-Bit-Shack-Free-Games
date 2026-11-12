************************************************************
* apple_explosion - RECORDER2.DAT (disassembly)
*
* Disassembled from the original binary (135 bytes, $0300-$0386).
* Reconstructed source: labels are generated, comments are minimal.
* Bytes the disassembler could not prove to be code are emitted as HEX/ASC data.
* Original program by its authors; see ../README.txt for attribution and terms.
* Entry point(s): $0300, $0337 (NMOS 6502 opcodes only).
************************************************************

               ORG    $0300

SPKR           EQU    $C030
WAIT           EQU    $FCA8

START          LDY    #$08
               STY    $0328
               LDX    #$00
               STX    $0327
               STX    $FF
L030C          LDY    #$08
L030E          PHA
               LDA    #$04
               JSR    WAIT
               CLC
               LDA    $C060
               EOR    $FF
               BPL    L0321
               EOR    $FF
               STA    $FF
               SEC
L0321          PLA
               ROL
               DEY
               BNE    L030E
               STA    $0800,X
               INX
               BNE    L030C
               INC    $0328
               LDA    $0328
               CMP    #$96
               BNE    L030C
               RTS
L0337          LDX    #$00
               STX    $035C
               LDY    #$08
               STY    $035D
               BNE    L035B
L0343          LDY    #$08
L0345          PHA
               LDA    #$04
               JSR    WAIT
               PLA
               ASL
               NOP
               BCC    L0355
               STA    SPKR
               BCS    L0355
L0355          NOP
               NOP
               NOP
               DEY
               BNE    L0345
L035B          LDA    $0800,X
               INX
               BNE    L0343
               INC    $035D
               LDA    $035D
               CMP    #$96
               BNE    L0343
               RTS
               HEX    008D10C0AD30C0AD60C010FBAD30C0AD
               HEX    60C030FBAD00C010EB60FF
