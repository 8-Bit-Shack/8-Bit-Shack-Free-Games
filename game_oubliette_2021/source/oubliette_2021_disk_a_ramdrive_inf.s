************************************************************
* oubliette_2021 - RAMDRIVE.INF (disassembly)
*
* Disassembled from the original binary (1375 bytes, $5F23-$6481).
* Reconstructed source: labels are generated, comments are minimal.
* Bytes the disassembler could not prove to be code are emitted as HEX/ASC data.
* Original program by its authors; see ../README.txt for attribution and terms.
* Entry point(s): $5F23, $6092, $611B, $61A4, $632B (NMOS 6502 opcodes only).
************************************************************

               ORG    $5F23

KEY            EQU    $C000
STORE80ON      EQU    $C001
ALTZPOFF       EQU    $C008
ALTZPON        EQU    $C009
LCRAMIN        EQU    $C080
ROMIN          EQU    $C081
LCBANK2        EQU    $C083
LCBANK1        EQU    $C088

START          JSR    L5F32
               LDA    $06
               CMP    #$80
               BEQ    L5F2D
               RTS
L5F2D          JMP    L6000
               HEX    FFFF
L5F32          PHP
               SEI
               LDA    $E000
               STA    $1A
               LDA    $D000
               STA    $1B
               LDA    $D400
               STA    $1C
               LDA    $D800
               STA    $1D
               LDA    ROMIN
               LDA    ROMIN
               LDA    $FBB3
               CMP    #$06
               HEX    D03A ; BNE $5F8F
               LDA    $C017
               HEX    3032 ; BMI $5F8C
               LDA    $C013
               BMI    L5F86
               LDA    $C016
               BMI    L5F86
               LDY    #$28
L5F66          LDX    L5FD5,Y
               LDA    $0100,Y
               STA    L5FD5,Y
               TXA
               STA    $0100,Y
               DEY
               BPL    L5F66
               JMP    $0100
               HEX    A028B9D55F9900018810F7B003
L5F86          LDA    #$80
               BIT    $40A9
               BIT    $20A9
               BIT    |$00A9
               STA    $06
               LDA    $E000
               CMP    $1A
               BNE    L5FAF
               LDA    $D000
               CMP    $1B
               BNE    L5FAF
               LDA    $D400
               CMP    $1C
               BNE    L5FAF
               LDA    $D800
               CMP    $1D
               BEQ    L5FD1
L5FAF          LDA    LCBANK1
               LDA    $E000
               CMP    $1A
               BNE    L5FCE
               LDA    $D000
               CMP    $1B
               BNE    L5FCE
               LDA    $D400
               CMP    $1C
               BNE    L5FCE
               LDA    $D800
               CMP    $1D
               BEQ    L5FD1
L5FCE          LDA    LCRAMIN
L5FD1          PLP
               LDA    $06
               RTS
L5FD5          HEX    A9EE8D05C08D03C08D0008AD000CC9EE
               HEX    D00D0E000CAD0008CD000CD002389018
               HEX    8D04C08D02C04C795F0000
L6000          JMP    L6073
               HEX    8D09C0EAA90085068D08C0EAA9952007
               HEX    C32036FB20EA03A221ADB3FBC906D012
               HEX    8D09C0A9AA8500460045008D08C0C9FF
               HEX    F00EBDF662F00620F0FDE8D0F54CD003
               HEX    A200AD4DBEC94CF0E92058FCBDB162F0
               HEX    1FC98DF00D48A92020F0FDC6240A20A8
               HEX    FC6820F0FD8D30C0A94020A8FCE8D0DC
L6073          LDA    #$4C
               STA    $BD0B
               LDA    #$AF
               STA    $BD0C
               LDA    #$BE
               STA    $BD0D
               LDX    #$E3
L6084          LDA    L6146,X
               STA    $BEAE,X
               DEX
               BNE    L6084
               STA    ALTZPON
               LDX    #$87
L6092          LDA    $6229,X
               STA    $0F,X
               DEX
               BNE    L6092
               LDA    $06
               CMP    #$A5
               BNE    L60CB
               EOR    $07
               CMP    #$78
               BNE    L60CB
               JMP    |$007B
               HEX    D020AD00C08D10C0C9A0F016AD00640D
               HEX    0164F068A5088D08C02C81C08D00E04C
               HEX    2561
L60CB          STA    ALTZPON
               JSR    L612C
               LDA    #$A5
               STA    $06
               EOR    #$78
               STA    $07
               STA    ALTZPOFF
               LDA    L6400
               ORA    L6401
               BEQ    L60E7
               JSR    L612C
L60E7          STA    $C005
               LDA    #$00
               STA    $3C
               TAY
               LDX    #$08
L60F1          STX    $3D
L60F3          STA    ($3C),Y
               INY
               BNE    L60F3
               INX
               CPX    #$C0
               BNE    L60F1
               LDA    #$11
               STA    $0F01
               STA    $0E01
               STA    $0D01
               LDX    #$0E
               STX    $0F02
               DEX
               STX    $0E02
               DEX
               STX    $0D02
L6115          LDA    L6380,Y
               STA    $0200,Y
L611B          INY
               BNE    L6115
               TYA
L611F          STA    $0300,Y
               INY
               BNE    L611F
               STA    $C004
               STA    ALTZPOFF
               RTS
L612C          BIT    $C089
               JSR    L6135
               BIT    ROMIN
L6135          LDA    #$00
               STA    $FE
               TAY
               LDX    #$D0
L613C          STX    $FF
L613E          STA    ($FE),Y
               INY
               BNE    L613E
               INX
               BNE    L613C
L6146          RTS
               HEX    8CF804A00CB148853CC904F01CA001A9
               HEX    30D148F02B4C0EBD
L615F          SEC
L6160          BIT    ROMIN
               PLA
               BEQ    L6170
               BIT    LCRAMIN
               EOR    #$02
               BEQ    L6170
               BIT    LCBANK1
L6170          LDY    #$0E
               LDA    #$FE
               STA    ($48),Y
               LDY    #$02
               LDA    ($48),Y
               LDY    #$10
               STA    ($48),Y
               BCC    L6186
               LDY    #$0D
               LDA    #$40
               STA    ($48),Y
L6186          RTS
               HEX    AD40D4C9DDF009C82C80C0CD40D4F001
               HEX    8898482C8BC02C8BC0A004B148
L61A4          CMP    #$16
               BCS    L615F
               SBC    #$01
               BMI    L615F
               TAY
               SBC    #$10
               BCS    L61DD
               TYA
               CMP    #$0F
               BNE    L61C1
               LDY    #$05
               LDA    ($48),Y
               TAY
               LDA    $BF35,Y
               BEQ    L615F
               SEC
L61C1          LDY    $48
               LDX    $49
               STA    ALTZPON
               JMP    |$0010
L61CB          BCC    L6160
               HEX    020308090A0B0000000000000C0D0E0F
L61DD          BEQ    L61E7
               SBC    #$01
               BIT    LCBANK2
               BIT    LCBANK2
L61E7          ASL
               ASL
               ASL
               ASL
               ADC    #$D0
               LDY    #$05
               ADC    ($48),Y
               STA    $3D
               LDA    $3C
               BEQ    L6219
               LSR
               LDY    #$08
               LDA    ($48),Y
               STA    $3E
               INY
               LDA    ($48),Y
               STA    $3F
               LDY    #$00
               STY    $3C
               BCC    L6212
L6209          LDA    ($3C),Y
               STA    ($3E),Y
               INY
               BNE    L6209
               BEQ    L6219
L6212          LDA    ($3E),Y
               STA    ($3C),Y
               INY
               BNE    L6212
L6219          STA    ALTZPOFF
               LDA    $E000
               STA    ALTZPON
               STA    $08
               STA    ALTZPOFF
               CLC
               BCC    L61CB
               STY    $00
               STX    $01
               BCS    L6249
               ADC    #$01
               ASL
               ASL
               ASL
               ASL
               CMP    #$C0
               BNE    L623E
               ADC    #$0F
               BCC    L6244
L623E          BIT    LCBANK2
               BIT    LCBANK2
L6244          CLC
               LDY    #$05
               ADC    ($00),Y
L6249          STA    $03
               LDY    #$08
               LDA    ($00),Y
               STA    $04
               INY
               LDA    ($00),Y
               STA    $05
               LDA    $C018
               TAX
               STA    KEY
               LDY    #$0C
               LDA    ($00),Y
               BEQ    L6286
               LSR
               LDY    #$00
               STY    $02
               BCC    L6279
               STA    $C003
               STA    $C004
L6270          LDA    ($02),Y
               STA    ($04),Y
               INY
               BNE    L6270
               BEQ    L6286
L6279          STA    $C002
               STA    $C005
L627F          LDA    ($04),Y
               STA    ($02),Y
               INY
               BNE    L627F
L6286          STA    $C002
               STA    $C004
               TXA
               BPL    L6292
               STA    STORE80ON
L6292          JMP    $BF81
               HEX    8D03C0AD0102AE0202AC03028D02C0C9
               HEX    11D006E00FD002C0034CA96042495444
               HEX    49534B8DD7F2E9F4F4E5EEA0E2F98DD3
               HEX    F4E5E6E1EEEFA0C3E8E9F4E9ADC2E1F4 ; tefano Chiti-Bat
               HEX    E5ECECE98DC9D4C1CCD9ACA0A0D2EFED
               HEX    E58DD6AEB0B4ADC4C5C3ADB8B48D8D8D
               HEX    008DD3CFCCCFA0C4C9D6C5D2D3C9ADC4
               HEX    CFD3A0A0D6A0B4AEB3C3A0A1A1A18D8D
               HEX    87008DD3CFCCCFA0C1D0D0CCC5A0AFAF
               HEX    C5A0A8B1B2B8CBA9A0CFA0AFAFC3A0A0 ; E (128K) O //C  
               HEX    A1A1A18D8D8700000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    0000000000000000000000
L6380          HEX    04110F030000FE000000000000000000
               HEX    00000000000000000000000000000000
               HEX    000000000000007A0000000000000000
               HEX    11010000231000010000000000000000
               HEX    FFFF0000FFFF0000FFFF0000FFFF0000
               HEX    FFFF0000FFFF0000FFFF0000FFFF0000
               HEX    FFFF0000FFFF0000FFFF0000FFFF0000
               HEX    FFFF0000FFFF0000FFFF0000003E0000
L6400          HEX    FF
L6401          HEX    FF0000FFFF0000FFFF0000FFFF000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    000000000000000000000000000000FF
               HEX    FF
