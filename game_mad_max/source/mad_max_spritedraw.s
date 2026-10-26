************************************************************
* mad_max - SPRITEDRAW (disassembly)
*
* Disassembled from the original binary (160 bytes, $8000-$809F).
* Reconstructed source: labels are generated, comments are minimal.
* Bytes the disassembler could not prove to be code are emitted as HEX/ASC data.
* Original program by its authors; see ../README.txt for attribution and terms.
* Entry point(s): $8000 (NMOS 6502 opcodes only).
************************************************************

               ORG    $8000

START          LDA    $06
               ASL
               ASL
               TAX
               LDY    #$00
L8007          LDA    $8102,X
               STA:   $FA,Y
               INX
               INY
               CPY    #$04
               BCC    L8007
               LDA    $07
               STA    $ED
               CLC
               ADC    $FA
               STA    $EE
               LDA    $08
               STA    $EF
               ADC    $FB
               STA    $FE
               LDA    #$00
               STA    $1E
L8028          JSR    SUB8050
L802B          LDY    $1E
               LDA    ($FC),Y
               LDY    $ED
               EOR    ($EB),Y
               STA    ($EB),Y
               INC    $1E
               INY
               STY    $ED
               CPY    $EE
               BNE    L802B
               LDA    $07
               STA    $ED
               INC    $EF
               LDA    $EF
               CMP    $FE
               BNE    L8028
               RTS
               HEX    0000000000
SUB8050        LDA    $EF
               LDY    #$00
               CMP    #$40
               BCC    L8060
               LDY    #$28
               CMP    #$80
               BCC    L8060
               LDY    #$50
L8060          AND    #$3F
               LSR
               LSR
               LSR
               TAX
               INX
               LDA    #$20
               STA    $EC
               TYA
L806C          DEX
               BEQ    L8078
               CLC
               ADC    #$80
               BCC    L806C
               INC    $EC
               BNE    L806C
L8078          STA    $EB
               LDA    $EF
               AND    #$07
               TAX
               INX
               LDA    $EC
               CLC
L8083          DEX
               BEQ    L808A
               ADC    #$04
               BNE    L8083
L808A          STA    $EC
               RTS
               HEX    00000000000000000000000000000000
               HEX    000000
