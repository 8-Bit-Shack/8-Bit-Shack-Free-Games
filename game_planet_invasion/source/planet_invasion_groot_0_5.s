************************************************************
* planet_invasion - GROOT.0.5 (disassembly)
*
* Disassembled from the original binary (512 bytes, $8200-$83FF).
* Reconstructed source: labels are generated, comments are minimal.
* Bytes the disassembler could not prove to be code are emitted as HEX/ASC data.
* Original program by its authors; see ../README.txt for attribution and terms.
* Entry point(s): $8200 (NMOS 6502 opcodes only).
************************************************************

               ORG    $8200

START          LDX    $06
               BEQ    L8219
               DEX
               BEQ    L8250
               DEX
               BNE    L820D
               JMP    L82B0
L820D          DEX
               BNE    L8213
               JMP    L8340
L8213          DEX
               BNE    L824F
               JMP    L83A5
L8219          LDY    #$00
               STY    $D7
               LDX    $09
               CPX    #$21
               BCC    L8225
               LDX    #$20
L8225          LDA    $07
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
               BNE    L8225
               LDA    $07
               STA    $847E
               ADC    #$20
               STA    $07
               LDA    $08
               STA    $847F
               ADC    #$03
               STA    $08
L824F          RTS
L8250          LDA    $08
               CMP    $07
               BEQ    L829F
               LDX    #$01
               JSR    L8300
               LDA    $07
               DEX
               JSR    L8300
L8261          INX
               STX    $1E
               LDY    #$27
L8266          LDA    ($EB),Y
               STA    ($ED),Y
               DEY
               BPL    L8266
               LDX    #$01
L826F          LDA    $07,X
               BEQ    L828E
               LDA    #$28
               CPX    #$01
               CLC
               BEQ    L8284
               ADC    $EB
               STA    $EB
               BCC    L8296
               INC    $EC
               BNE    L8296
L8284          ADC    $ED
               STA    $ED
               BCC    L8296
               INC    $EE
               BNE    L8296
L828E          LDA    $1E
               JSR    L8333
               JSR    L8325
L8296          DEX
               BPL    L826F
               LDX    $1E
               CPX    #$14
               BNE    L8261
L829F          RTS
               HEX    00000000000000000000000000000000
L82B0          LDA    $07
               LDX    #$00
               JSR    L8300
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
               JSR    L8333
               STY    $EB
               STA    $EC
L82DA          CPX    #$14
               BNE    L82B7
               RTS
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00
L8300          CMP    #$00
               BNE    L830C
               LDY    #$00
               LDA    #$04
               EOR    $D7
               BNE    L8325
L830C          CMP    #$FF
               BNE    L8318
               LDY    $847E
               LDA    $847F
               BNE    L8325
L8318          ADC    #$FF
               ASL
               TAY
               LDA    $8431,Y
               PHA
               LDA    $8430,Y
               TAY
               PLA
L8325          CPX    #$01
               BEQ    L832E
               STY    $EB
               STA    $EC
               RTS
L832E          STY    $ED
               STA    $EE
               RTS
L8333          TAY
               LDA    $8418,Y
               EOR    $D7
               PHA
               LDA    $8400,Y
               TAY
               PLA
               RTS
L8340          LDA    $07
               JSR    L8300
               TYA
               CLC
               ADC    $08
               STA    $EB
               BCC    L834F
               INC    $EC
L834F          INX
               LDA    $09
               JSR    L8300
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
               JSR    L8333
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
               JSR    L8300
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
               JSR    L8333
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
               JSR    L8300
               PLA
               TAX
               BNE    L83C9
L83FF          RTS
