************************************************************
* piecesof8 - SFXJOY (disassembly)
*
* Disassembled from the original binary (128 bytes, $0300-$037F).
* Reconstructed source: labels are generated, comments are minimal.
* Bytes the disassembler could not prove to be code are emitted as HEX/ASC data.
* Original program by its authors; see ../README.txt for attribution and terms.
* Entry point(s): $0300 (NMOS 6502 opcodes only).
************************************************************

               ORG    $0300

SPKR           EQU    $C030

START          LDA    $01
               STA    $00
               LDA    $03
               STA    $02
               LDA    $05
               STA    $04
               LDX    $06
L030E          LDA    #$FF
               STA    $08
L0312          LDA    #$00
               LDY    $01
               BEQ    L0328
               DEC    $00
               BNE    L0324
               LDY    $01
               STY    $00
               ORA    #$80
               BNE    L0328
L0324          PHA
               PLA
               NOP
               NOP
L0328          LDY    $03
               BEQ    L033C
               DEC    $02
               BNE    L0338
               LDY    $03
               STY    $02
               ORA    #$80
               BNE    L033C
L0338          PHA
               PLA
               NOP
               NOP
L033C          LDY    $05
               BEQ    L0350
               DEC    $04
               BNE    L034C
               LDY    $05
               STY    $04
               ORA    #$80
               BNE    L0350
L034C          PHA
               PLA
               NOP
               NOP
L0350          EOR    #$00
               BPL    L0359
               STA    SPKR
               BMI    L035C
L0359          NOP
               NOP
               NOP
L035C          LDY    $07
L035E          NOP
               DEY
               BNE    L035E
               DEC    $08
               BNE    L0312
               DEX
               BNE    L030E
               RTS
               HEX    A606201EFB840760200078E049D00320
               HEX    C3786000D3C1
