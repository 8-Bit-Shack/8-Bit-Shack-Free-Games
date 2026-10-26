************************************************************
* sliding_puzzle - GRIDDLE (disassembly)
*
* Disassembled from the original binary (512 bytes, $8200-$83FF).
* Reconstructed source: labels are generated, comments are minimal.
* Bytes the disassembler could not prove to be code are emitted as HEX/ASC data.
* Original program by its authors; see ../README.txt for attribution and terms.
* Entry point(s): $8200 (NMOS 6502 opcodes only).
************************************************************

               ORG    $8200

START          LDA    $06
               AND    #$0F
               TAX
               BEQ    L8220
               DEX
               BEQ    L8260
               DEX
               BNE    L8210
               JMP    L82B0
L8210          DEX
               BNE    L821D
               BIT    $06
               BMI    L821A
               JMP    L8340
L821A          JMP    L83A5
L821D          RTS
               HEX    0000
L8220          LDY    #$00
               STY    $D7
               LDX    $09
               CPX    #$21
               BCC    L822C
               LDX    #$20
L822C          LDA    $07
               STA    $8430,Y
               INY
               CLC
               ADC    #$20
               STA    $07
               LDA    $08
               STA    $8430,Y
               INY
               ADC    #$03
               STA    $08
               DEX
               BNE    L822C
               LDA    $07
               STA    $847E
               ADC    #$20
               STA    $07
               LDA    $08
               STA    $847F
               ADC    #$03
               STA    $08
               RTS
               HEX    000000000000000000
L8260          LDA    $08
               CMP    $07
               BEQ    L82AF
               LDX    #$01
               JSR    SUB8300
               LDA    $07
               DEX
               JSR    SUB8300
L8271          INX
               STX    $1E
               LDY    #$27
L8276          LDA    ($EB),Y
               STA    ($ED),Y
               DEY
               BPL    L8276
               LDX    #$01
L827F          LDA    $07,X
               BEQ    L829E
               LDA    #$28
               CPX    #$01
               CLC
               BEQ    L8294
               ADC    $EB
               STA    $EB
               BCC    L82A6
               INC    $EC
               BNE    L82A6
L8294          ADC    $ED
               STA    $ED
               BCC    L82A6
               INC    $EE
               BNE    L82A6
L829E          LDA    $1E
               JSR    SUB8333
               JSR    SUB8325
L82A6          DEX
               BPL    L827F
               LDX    $1E
               CPX    #$14
               BNE    L8271
L82AF          RTS
L82B0          LDA    $07
               LDX    #$00
               JSR    SUB8300
L82B7          LDA    $08
               LDY    #$27
L82BB          STA    ($EB),Y
               DEY
               BPL    L82BB
               INX
               LDA    $07
               BEQ    L82D2
               LDA    $EB
               CLC
               ADC    #$28
               STA    $EB
               BCC    L82DA
               INC    $EC
               BNE    L82DA
L82D2          TXA
               JSR    SUB8333
               STY    $EB
               STA    $EC
L82DA          CPX    #$14
               BNE    L82B7
               RTS
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00
SUB8300        CMP    #$00
               BNE    L830C
               LDY    #$00
               LDA    #$04
               EOR    $D7
               BNE    SUB8325
L830C          CMP    #$FF
               BNE    L8318
               LDY    $847E
               LDA    $847F
               BNE    SUB8325
L8318          ADC    #$FF
               ASL
               TAY
               LDA    $8431,Y
               PHA
               LDA    $8430,Y
               TAY
               PLA
SUB8325        CPX    #$01
               BEQ    L832E
               STY    $EB
               STA    $EC
               RTS
L832E          STY    $ED
               STA    $EE
               RTS
SUB8333        TAY
               LDA    $8418,Y
               EOR    $D7
               PHA
               LDA    $8400,Y
               TAY
               PLA
               RTS
L8340          LDA    $07
               JSR    SUB8300
               TYA
               CLC
               ADC    $08
               STA    $EB
               BCC    L834F
               INC    $EC
L834F          INX
               LDA    $09
               JSR    SUB8300
               LDA    #$28
               SEC
               SBC    $08
               EOR    #$FF
               ADC    #$00
               ADC    $ED
               STA    $ED
               BCS    L8366
               DEC    $EE
L8366          DEX
L8367          TXA
               JSR    SUB8333
               STY    $CE
               STA    $CF
               LDA    $08
               STA    $1E
               LDY    #$27
L8375          DEC    $1E
               BMI    L8382
               LDA    ($ED),Y
               STA    ($CE),Y
               DEY
               BPL    L8375
               BMI    L8389
L8382          LDA    ($EB),Y
               STA    ($CE),Y
               DEY
               BPL    L8382
L8389          LDA    $EB
               CLC
               ADC    #$28
               STA    $EB
               BCC    L8394
               INC    $EC
L8394          LDA    $ED
               CLC
               ADC    #$28
               STA    $ED
               BCC    L839F
               INC    $EE
L839F          INX
               CPX    #$14
               BNE    L8367
               RTS
L83A5          STX    $CF
               LDA    $07
               JSR    SUB8300
               LDA    $08
               ASL
               ASL
               ADC    $08
               ASL
               ASL
               ROL    $CF
               ASL
               ROL    $CF
               ADC    $EB
               STA    $EB
               LDA    $CF
               ADC    $EC
               STA    $EC
               LDA    #$15
               SBC    $08
               STA    $1E
L83C9          TXA
               JSR    SUB8333
               STY    $ED
               STA    $EE
               LDY    #$27
L83D3          LDA    ($EB),Y
               STA    ($ED),Y
               DEY
               BPL    L83D3
               LDA    $EB
               CLC
               ADC    #$28
               STA    $EB
               BCC    L83E5
               INC    $EC
L83E5          INX
               DEC    $1E
               BNE    L83C9
               CPX    #$14
               BEQ    L83FF
               LDA    $08
               STA    $1E
               TXA
               PHA
               LDX    #$00
               LDA    $09
               JSR    SUB8300
               PLA
               TAX
               BNE    L83C9
L83FF          RTS
