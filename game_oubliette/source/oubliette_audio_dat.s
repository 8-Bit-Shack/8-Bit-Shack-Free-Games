************************************************************
* oubliette - AUDIO.DAT (disassembly)
*
* Disassembled from the original binary (110 bytes, $0302-$036F).
* Reconstructed source: labels are generated, comments are minimal.
* Bytes the disassembler could not prove to be code are emitted as HEX/ASC data.
* Original program by its authors; see ../README.txt for attribution and terms.
* Entry point(s): $0302, $0337 (NMOS 6502 opcodes only).
************************************************************

               ORG    $0302

SPKR           EQU    $C030
WAIT           EQU    $FCA8

START          LDA    SPKR
L0305          DEY
               BNE    L030D
               DEC    $0301
               BEQ    L0316
L030D          DEX
               BNE    L0305
               LDX    $0300
               JMP    START
L0316          RTS
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
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
               HEX    00010000
