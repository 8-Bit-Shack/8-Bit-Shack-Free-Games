************************************************************
* sliding_puzzle - GREASE (disassembly)
*
* Disassembled from the original binary (512 bytes, $8000-$81FF).
* Reconstructed source: labels are generated, comments are minimal.
* Bytes the disassembler could not prove to be code are emitted as HEX/ASC data.
* Original program by its authors; see ../README.txt for attribution and terms.
* Entry point(s): $8000 (NMOS 6502 opcodes only).
************************************************************

               ORG    $8000

BASCALC        EQU    $FBC1

START          LDA    $06
               BEQ    L8011
               CMP    #$01
               BEQ    L8020
               CMP    #$02
               BEQ    L8080
               CMP    #$03
               BEQ    L8019
               RTS
L8011          JSR    SUB81C0
               LDA    #$00
               STA    $0A
               RTS
L8019          JMP    L80C0
               HEX    004C9080
L8020          JSR    SUB8100
               LDA    $EF
L8025          JSR    SUB8180
               LDY    $ED
L802A          STY    $1E
               JSR    SUB8198
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
               JSR    SUB81A8
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
L8080          JSR    SUB8100
               LDA    $EF
L8085          JSR    SUB8180
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
               JSR    SUB81A8
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
L80C0          JSR    SUB8133
               LDA    $EF
L80C5          JSR    SUB8180
               LDX    $ED
L80CA          TXA
               TAY
               JSR    SUB8198
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
SUB8100        LDY    $07
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
               JSR    SUB8170
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
SUB8133        LDX    #$03
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
               JSR    SUB8170
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
SUB8170        LDA    $FC
               CLC
               ADC    #$02
               STA    $FC
               BCC    L817B
               INC    $FD
L817B          RTS
               HEX    00000000
SUB8180        LSR
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
SUB8198        LDA    ($EB),Y
               AND    $2E
               BIT    $2E
               BPL    L81A4
               LSR
               LSR
               LSR
               LSR
L81A4          RTS
               HEX    000000
SUB81A8        BIT    $2E
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
SUB81C0        LDY    #$00
               STY    $2E
               LDA    $28
               PHA
               LDA    $29
               PHA
L81CA          TYA
               JSR    BASCALC
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
