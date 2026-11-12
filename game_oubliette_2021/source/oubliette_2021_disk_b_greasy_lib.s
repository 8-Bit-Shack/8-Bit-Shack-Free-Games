************************************************************
* oubliette_2021 - GREASY.LIB (disassembly)
*
* Disassembled from the original binary (1024 bytes, $8000-$83FF).
* Reconstructed source: labels are generated, comments are minimal.
* Bytes the disassembler could not prove to be code are emitted as HEX/ASC data.
* Original program by its authors; see ../README.txt for attribution and terms.
* Entry point(s): $8000, $8200 (NMOS 6502 opcodes only).
************************************************************

               ORG    $8000

START          LDA    $06
               BEQ    L8011
               CMP    #$01
               BEQ    L8020
               CMP    #$02
               BEQ    L8080
               CMP    #$03
               BEQ    L8019
               RTS
L8011          JSR    L81C0
               LDA    #$00
               STA    $0A
               RTS
L8019          JMP    L80C0
               HEX    004C9080
L8020          JSR    L8100
               LDA    $EF
L8025          JSR    L8180
               LDY    $ED
L802A          STY    $1E
               JSR    L8198
               LDY    $07
               BEQ    L8049
               BIT    $1F
               BPL    L803B
               ASL
               ASL
               ASL
               ASL
L803B          STA    $FA
               LDA    $1F
               EOR    #$FF
               LDY    #$00
               AND    ($CE),Y
               ORA    $FA
               STA    ($CE),Y
L8049          LDA    ($FC),Y
               AND    $1F
               BIT    $1F
               BPL    L8055
               LSR
               LSR
               LSR
               LSR
L8055          LDY    $1E
               CMP    $0A
               BEQ    L805E
               JSR    L81A8
L805E          LDA    $1F
               EOR    #$FF
               STA    $1F
               BMI    L8072
               INC    $FC
               BNE    L806C
               INC    $FD
L806C          INC    $CE
               BNE    L8072
               INC    $CF
L8072          INY
               CPY    $EE
               BNE    L802A
               INC    $EF
               LDA    $EF
               CMP    $FE
               BNE    L8025
               RTS
L8080          JSR    L8100
               LDA    $EF
L8085          JSR    L8180
               LDY    $ED
L808A          STY    $1E
               LDY    #$00
               LDA    ($CE),Y
               AND    $1F
               BIT    $1F
               BPL    L809A
               LSR
               LSR
               LSR
               LSR
L809A          LDY    $1E
               JSR    L81A8
               LDA    $1F
               EOR    #$FF
               STA    $1F
               BMI    L80AD
               INC    $CE
               BNE    L80AD
               INC    $CF
L80AD          INY
               CPY    $EE
               BNE    L808A
               INC    $EF
               LDA    $EF
               CMP    $FE
               BNE    L8085
               RTS
               HEX    0000000000
L80C0          JSR    L8133
               LDA    $EF
L80C5          JSR    L8180
               LDX    $ED
L80CA          TXA
               TAY
               JSR    L8198
               BIT    $1F
               BPL    L80D7
               ASL
               ASL
               ASL
               ASL
L80D7          STA    $FA
               LDA    $1F
               EOR    #$FF
               STA    $1F
               LDY    #$00
               AND    ($FC),Y
               ORA    $FA
               STA    ($FC),Y
               LDA    $1F
               BMI    L80F1
               INC    $FC
               BNE    L80F1
               INC    $FD
L80F1          INX
               CPX    $EE
               BNE    L80CA
               INC    $EF
               LDA    $EF
               CMP    $FE
               BNE    L80C5
               RTS
               HEX    00
L8100          LDY    $07
               BNE    L811B
               LDA    $0B
               STA    $FC
               LDA    $0C
               STA    $FD
               LDA    ($FC),Y
               STA    $FA
               INY
               LDA    ($FC),Y
               STA    $FB
               JSR    L8170
               JMP    L812C
L811B          INY
               TYA
               ASL
               ASL
               TAY
               DEY
               LDX    #$03
L8123          LDA    $8480,Y
               STA    $FA,X
               DEY
               DEX
               BPL    L8123
L812C          LDY    $08
               LDA    $09
               JMP    L814E
L8133          LDX    #$03
L8135          LDA    $09,X
               STA    $FA,X
               DEX
               BPL    L8135
               LDY    #$00
               LDA    $FA
               STA    ($FC),Y
               INY
               LDA    $FB
               STA    ($FC),Y
               JSR    L8170
               LDY    $07
               LDA    $08
L814E          CLC
               STA    $EF
               ADC    $FB
               STA    $FE
               TYA
               STA    $ED
               ADC    $FA
               STA    $EE
               LDA    $FC
               STA    $CE
               LDA    $FD
               ADC    #$06
               STA    $CF
               LDA    #$0F
               STA    $1F
               RTS
               HEX    0000000000
L8170          LDA    $FC
               CLC
               ADC    #$02
               STA    $FC
               BCC    L817B
               INC    $FD
L817B          RTS
               HEX    00000000
L8180          LSR
               TAY
               LDA    #$0F
               BCC    L8188
               LDA    #$F0
L8188          STA    $2E
               LDA    $8400,Y
               STA    $EB
               LDA    $8418,Y
               EOR    $D7
               STA    $EC
               RTS
               HEX    00
L8198          LDA    ($EB),Y
               AND    $2E
               BIT    $2E
               BPL    L81A4
               LSR
               LSR
               LSR
               LSR
L81A4          RTS
               HEX    000000
L81A8          BIT    $2E
               BPL    L81B0
               ASL
               ASL
               ASL
               ASL
L81B0          STA    $FA
               LDA    $2E
               EOR    #$FF
               AND    ($EB),Y
               ORA    $FA
               STA    ($EB),Y
               RTS
               HEX    000000
L81C0          LDY    #$00
               STY    $2E
               LDA    $28
               PHA
               LDA    $29
               PHA
L81CA          TYA
               JSR    $FBC1
               LDA    $28
               STA    $8400,Y
               LDA    $29
               STA    $8418,Y
               INY
               CPY    #$18
               BNE    L81CA
               PLA
               STA    $29
               PLA
               STA    $28
               RTS
               HEX    00000000000000000000000000000000
               HEX    000000000000000000000000
L8200          LDA    $06
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
               JSR    L8300
               LDA    $07
               DEX
               JSR    L8300
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
               JSR    L8333
               JSR    L8325
L82A6          DEX
               BPL    L827F
               LDX    $1E
               CPX    #$14
               BNE    L8271
L82AF          RTS
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
