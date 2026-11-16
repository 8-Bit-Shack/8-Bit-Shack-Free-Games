************************************************************
* pudding_xb - LASER (disassembly)
*
* Disassembled from the original binary (174 bytes, $1427-$14D4).
* Reconstructed source: labels are generated, comments are minimal.
* Bytes the disassembler could not prove to be code are emitted as HEX/ASC data.
* Original program by its authors; see ../README.txt for attribution and terms.
* Entry point(s): $1427 (NMOS 6502 opcodes only).
************************************************************

               ORG    $1427

SPKR           EQU    $C030

START          JSR    L1430
               JSR    L1430
               JSR    L1430
L1430          LDA    #$0A
               STA    $F9
               LDA    #$FF
               STA    $FA
               LDA    #$64
               STA    $FB
               LDA    #$C8
               STA    $FC
               LDA    #$FF
               STA    $FE
L1444          LDA    #$01
               STA    $FF
L1448          STA    SPKR
               INC    SPKR
               DEC    SPKR
               LDX    $F9
L1453          DEX
               BNE    L1453
               STA    SPKR
               INC    SPKR
               DEC    $FF
               BNE    L1448
               LDA    #$01
               STA    $07
L1464          STA    SPKR
               INC    SPKR
               DEC    SPKR
               LDY    $FA
L146F          DEY
               BNE    L146F
               STA    SPKR
               INC    SPKR
               DEC    $07
               BNE    L1464
               LDA    #$01
               STA    $08
L1480          STA    SPKR
               INC    SPKR
               DEC    SPKR
               LDX    $FB
L148B          DEX
               BNE    L148B
               STA    SPKR
               INC    SPKR
               DEC    $08
               BNE    L1480
               LDA    #$01
               STA    $07
L149C          STA    SPKR
               INC    SPKR
               DEC    SPKR
               LDY    $FC
L14A7          DEY
               BNE    L14A7
               STA    SPKR
               INC    SPKR
               DEC    $07
               BNE    L149C
               DEC    $FE
               BEQ    L14D3
               LDA    $F9
               SBC    #$32
               STA    $F9
               LDA    $FA
               SBC    #$32
               STA    $FA
               LDA    $FB
               SBC    #$32
               STA    $FB
               LDA    $FC
               SBC    #$32
               STA    $FC
               JMP    L1444
L14D3          RTS
               HEX    00
