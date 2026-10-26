************************************************************
* witch_trial - OUTRO (disassembly)
*
* Disassembled from the original binary (3693 bytes, $8000-$8E6C).
* Reconstructed source: labels are generated, comments are minimal.
* Bytes the disassembler could not prove to be code are emitted as HEX/ASC data.
* Original program by its authors; see ../README.txt for attribution and terms.
* Entry point(s): $8000 (65C02 code allowed: XC).
************************************************************

               XC
               ORG    $8000

KEYBD          EQU    $C000
RAMRDOFF       EQU    $C002
RAMRDON        EQU    $C003
RAMWRTOFF      EQU    $C004
RAMWRTON       EQU    $C005
ALTZPOFF       EQU    $C008
CLR80VID       EQU    $C00C
SET80VID       EQU    $C00D
STROBE         EQU    $C010
TXTCLR         EQU    $C050
TXTSET         EQU    $C051
MIXCLR         EQU    $C052
LOWSCR         EQU    $C054
AN3OFF         EQU    $C05E
AN3ON          EQU    $C05F
PB0            EQU    $C061
PB1            EQU    $C062
HOME           EQU    $FC58
WAIT           EQU    $FCA8

START          JSR    SUB8B38
               LDA    STROBE
               JSR    SUB8AF8
               JSR    SUB8DF9
               LDA    #$00
               STA    $3C
               LDA    #$68
               STA    $3D
               LDA    #$FF
               STA    $3E
               LDA    #$6F
               STA    $3F
               LDA    #$00
               STA    $42
               LDA    #$10
               STA    $43
               LDY    #$00
               JSR    $FE2C
               JSR    SUB8194
               LDX    #$28
L802E          LDA    #$FF
               JSR    WAIT
               DEX
               BNE    L802E
               LDA    #$00
               STA    $3C
               LDA    #$70
               STA    $3D
               LDA    #$FF
               STA    $3E
               LDA    #$77
               STA    $3F
               LDA    #$00
               STA    $42
               LDA    #$10
               STA    $43
               LDY    #$00
               JSR    $FE2C
               JSR    SUB8194
               LDX    #$28
L8058          LDA    #$FF
               JSR    WAIT
               DEX
               BNE    L8058
               LDA    #$00
               STA    $3C
               LDA    #$78
               STA    $3D
               LDA    #$FF
               STA    $3E
               LDA    #$7F
               STA    $3F
               LDA    #$00
               STA    $42
               LDA    #$10
               STA    $43
               LDY    #$00
               JSR    $FE2C
               JSR    SUB8194
               LDX    #$28
L8082          LDA    #$FF
               JSR    WAIT
               DEX
               BNE    L8082
               LDX    #$14
L808C          PHX
               JSR    SUB83D2
               LDA    #$C8
               JSR    WAIT
               JSR    SUB8503
               LDA    #$C8
               JSR    WAIT
               JSR    SUB8634
               LDA    #$C8
               JSR    WAIT
               JSR    SUB8765
               LDA    #$C8
               JSR    WAIT
               JSR    SUB8896
               LDA    #$C8
               JSR    WAIT
               JSR    SUB89C7
               LDA    #$C8
               JSR    WAIT
               PLX
               DEX
               BNE    L808C
               LDA    STROBE
L80C4          LDA    #$19
               STA    D8268+1
               LDA    #$8D
               STA    D8268+2
               LDA    #$39
               STA    D826D+1
               LDA    #$8D
               STA    D826D+2
               JSR    SUB825D
               LDA    #$59
               STA    D8268+1
               LDA    #$8D
               STA    D8268+2
               LDA    #$79
               STA    D826D+1
               LDA    #$8D
               STA    D826D+2
               JSR    SUB825D
               LDA    #$99
               STA    D8268+1
               LDA    #$8D
               STA    D8268+2
               LDA    #$B9
               STA    D826D+1
               LDA    #$8D
               STA    D826D+2
               JSR    SUB825D
               JMP    L80C4
L810C          JSR    SUB8B1F
               LDA    STROBE
               SEI
               LDA    $0340
               BEQ    L8147
               LDA    $0341
               ORA    #$C0
               STA    D8163+2
               STA    D8168+2
               STA    D816B+2
               STA    D8170+2
               STA    D8175+2
               STA    D817E+2
               STA    D8183+2
               STA    D8186+2
               STA    D818B+2
               STA    D8190+2
               STA    SUB815E+2
               STA    SUB8179+2
               JSR    SUB814A
               JSR    SUB8154
L8147          PLA
               PLA
               RTS
SUB814A        LDY    #$0E
               LDX    #$00
L814E          JSR    SUB8179
               DEY
               BPL    L814E
SUB8154        LDY    #$0E
               LDX    #$00
L8158          JSR    SUB815E
               DEY
               BPL    L8158
SUB815E        STY    $C401
               LDA    #$07
D8163          STA    $C400
               LDA    #$04
D8168          STA    $C400
D816B          STX    $C401
               LDA    #$06
D8170          STA    $C400
               LDA    #$04
D8175          STA    $C400
               RTS
SUB8179        STY    $C481
               LDA    #$07
D817E          STA    $C480
               LDA    #$04
D8183          STA    $C480
D8186          STX    $C481
               LDA    #$06
D818B          STA    $C480
               LDA    #$04
D8190          STA    $C480
               RTS
SUB8194        LDA    #$0B
               STA    $0302
               LDA    #$13
               STA    $0300
               LDA    #$15
               STA    $0301
L81A3          LDA    #$96
               JSR    WAIT
               LDX    $0302
               JSR    SUB81E5
               LDA    #$17
               SEC
               SBC    $0302
               STA    $0303
               LDX    $0303
               JSR    SUB81E5
               JSR    SUB8217
               DEC    $0300
               INC    $0301
               DEC    $0302
               LDA    $0302
               BPL    L81A3
               INC    $0302
L81D1          JSR    SUB8217
               LDA    #$96
               JSR    WAIT
               DEC    $0300
               INC    $0301
               LDA    $0300
               BPL    L81D1
               RTS
SUB81E5        LDA    D8DD9,X
               STA    $00
               STA    $02
               STA    $EA
               LDA    D8CB9,X
               STA    $01
               LDA    D8CD9,X
               STA    $03
               LDA    D8CF9,X
               STA    $EB
               LDY    $0300
L8200          LDA    ($EA),Y
               STA    RAMWRTON
               STA    ($00),Y
               STA    RAMWRTOFF
               LDA    ($02),Y
               STA    ($00),Y
               INY
               CPY    $0301
               BCC    L8200
               BEQ    L8200
               RTS
SUB8217        LDX    $0302
L821A          LDA    D8DD9,X
               STA    $00
               STA    $02
               STA    $EA
               LDA    D8CB9,X
               STA    $01
               LDA    D8CD9,X
               STA    $03
               LDA    D8CF9,X
               STA    $EB
               LDY    $0300
               LDA    ($EA),Y
               STA    RAMWRTON
               STA    ($00),Y
               STA    RAMWRTOFF
               LDA    ($02),Y
               STA    ($00),Y
               LDY    $0301
               LDA    ($EA),Y
               STA    RAMWRTON
               STA    ($00),Y
               STA    RAMWRTOFF
               LDA    ($02),Y
               STA    ($00),Y
               INX
               CPX    $0303
               BCC    L821A
               BEQ    L821A
               RTS
SUB825D        LDY    #$00
L825F          LDX    #$00
               LDA    D8DD9,Y
               STA    $06
               STA    $08
D8268          LDA    D8D19,Y
               STA    $07
D826D          LDA    D8D39,Y
               STA    $09
               LDA    KEYBD
               BMI    L827F
               LDA    PB0
               ORA    PB1
               BPL    L8285
L827F          LDA    STROBE
               JMP    L810C
L8285          LDA    $0480,X
               STA    $0400,X
               LDA    $0500,X
               STA    $0480,X
               LDA    $0580,X
               STA    $0500,X
               LDA    $0600,X
               STA    $0580,X
               LDA    $0680,X
               STA    $0600,X
               LDA    $0700,X
               STA    $0680,X
               LDA    $0780,X
               STA    $0700,X
               LDA    $0428,X
               STA    $0780,X
               LDA    $04A8,X
               STA    $0428,X
               LDA    $0528,X
               STA    $04A8,X
               LDA    $05A8,X
               STA    $0528,X
               LDA    $0628,X
               STA    $05A8,X
               LDA    $06A8,X
               STA    $0628,X
               LDA    $0728,X
               STA    $06A8,X
               LDA    $07A8,X
               STA    $0728,X
               LDA    $0450,X
               STA    $07A8,X
               LDA    $04D0,X
               STA    $0450,X
               LDA    $0550,X
               STA    $04D0,X
               LDA    $05D0,X
               STA    $0550,X
               LDA    $0650,X
               STA    $05D0,X
               LDA    $06D0,X
               STA    $0650,X
               LDA    $0750,X
               STA    $06D0,X
               LDA    $07D0,X
               STA    $0750,X
               PHY
               TXA
               TAY
               LDA    ($06),Y
               STA    $07D0,X
               PLY
               STA    RAMWRTON
               STA    RAMRDON
               LDA    $0480,X
               STA    $0400,X
               LDA    $0500,X
               STA    $0480,X
               LDA    $0580,X
               STA    $0500,X
               LDA    $0600,X
               STA    $0580,X
               LDA    $0680,X
               STA    $0600,X
               LDA    $0700,X
               STA    $0680,X
               LDA    $0780,X
               STA    $0700,X
               LDA    $0428,X
               STA    $0780,X
               LDA    $04A8,X
               STA    $0428,X
               LDA    $0528,X
               STA    $04A8,X
               LDA    $05A8,X
               STA    $0528,X
               LDA    $0628,X
               STA    $05A8,X
               LDA    $06A8,X
               STA    $0628,X
               LDA    $0728,X
               STA    $06A8,X
               LDA    $07A8,X
               STA    $0728,X
               LDA    $0450,X
               STA    $07A8,X
               LDA    $04D0,X
               STA    $0450,X
               LDA    $0550,X
               STA    $04D0,X
               LDA    $05D0,X
               STA    $0550,X
               LDA    $0650,X
               STA    $05D0,X
               LDA    $06D0,X
               STA    $0650,X
               LDA    $0750,X
               STA    $06D0,X
               LDA    $07D0,X
               STA    $0750,X
               PHY
               TXA
               TAY
               STA    RAMRDOFF
               LDA    ($08),Y
               STA    $07D0,X
               PLY
               STA    RAMWRTOFF
               INX
               CPX    #$28
               BEQ    L83BF
               JMP    L8285
L83BF          LDA    #$C8
               JSR    WAIT
               LDA    #$C8
               JSR    WAIT
               INY
               CPY    #$18
               BEQ    L83D1
               JMP    L825F
L83D1          RTS
SUB83D2        LDX    #$00
L83D4          LDA    $2000,X
               STA    $0400,X
               LDA    $2080,X
               STA    $0480,X
               LDA    $2100,X
               STA    $0500,X
               LDA    $2180,X
               STA    $0580,X
               LDA    $2200,X
               STA    $0600,X
               LDA    $2280,X
               STA    $0680,X
               LDA    $2300,X
               STA    $0700,X
               LDA    $2380,X
               STA    $0780,X
               LDA    $2028,X
               STA    $0428,X
               LDA    $20A8,X
               STA    $04A8,X
               LDA    $2128,X
               STA    $0528,X
               LDA    $21A8,X
               STA    $05A8,X
               LDA    $2228,X
               STA    $0628,X
               LDA    $22A8,X
               STA    $06A8,X
               LDA    $2328,X
               STA    $0728,X
               LDA    $23A8,X
               STA    $07A8,X
               LDA    $2050,X
               STA    $0450,X
               LDA    $20D0,X
               STA    $04D0,X
               LDA    $2150,X
               STA    $0550,X
               LDA    $21D0,X
               STA    $05D0,X
               LDA    $2250,X
               STA    $0650,X
               LDA    $22D0,X
               STA    $06D0,X
               LDA    $2350,X
               STA    $0750,X
               LDA    $23D0,X
               STA    $07D0,X
               STA    RAMWRTON
               LDA    $2400,X
               STA    $0400,X
               LDA    $2480,X
               STA    $0480,X
               LDA    $2500,X
               STA    $0500,X
               LDA    $2580,X
               STA    $0580,X
               LDA    $2600,X
               STA    $0600,X
               LDA    $2680,X
               STA    $0680,X
               LDA    $2700,X
               STA    $0700,X
               LDA    $2780,X
               STA    $0780,X
               LDA    $2428,X
               STA    $0428,X
               LDA    $24A8,X
               STA    $04A8,X
               LDA    $2528,X
               STA    $0528,X
               LDA    $25A8,X
               STA    $05A8,X
               LDA    $2628,X
               STA    $0628,X
               LDA    $26A8,X
               STA    $06A8,X
               LDA    $2728,X
               STA    $0728,X
               LDA    $27A8,X
               STA    $07A8,X
               LDA    $2450,X
               STA    $0450,X
               LDA    $24D0,X
               STA    $04D0,X
               LDA    $2550,X
               STA    $0550,X
               LDA    $25D0,X
               STA    $05D0,X
               LDA    $2650,X
               STA    $0650,X
               LDA    $26D0,X
               STA    $06D0,X
               LDA    $2750,X
               STA    $0750,X
               LDA    $27D0,X
               STA    $07D0,X
               STA    RAMWRTOFF
               INX
               CPX    #$28
               BEQ    L8502
               JMP    L83D4
L8502          RTS
SUB8503        LDX    #$00
L8505          LDA    $2800,X
               STA    $0400,X
               LDA    $2880,X
               STA    $0480,X
               LDA    $2900,X
               STA    $0500,X
               LDA    $2980,X
               STA    $0580,X
               LDA    $2A00,X
               STA    $0600,X
               LDA    $2A80,X
               STA    $0680,X
               LDA    $2B00,X
               STA    $0700,X
               LDA    $2B80,X
               STA    $0780,X
               LDA    $2828,X
               STA    $0428,X
               LDA    $28A8,X
               STA    $04A8,X
               LDA    $2928,X
               STA    $0528,X
               LDA    $29A8,X
               STA    $05A8,X
               LDA    $2A28,X
               STA    $0628,X
               LDA    $2AA8,X
               STA    $06A8,X
               LDA    $2B28,X
               STA    $0728,X
               LDA    $2BA8,X
               STA    $07A8,X
               LDA    $2850,X
               STA    $0450,X
               LDA    $28D0,X
               STA    $04D0,X
               LDA    $2950,X
               STA    $0550,X
               LDA    $29D0,X
               STA    $05D0,X
               LDA    $2A50,X
               STA    $0650,X
               LDA    $2AD0,X
               STA    $06D0,X
               LDA    $2B50,X
               STA    $0750,X
               LDA    $2BD0,X
               STA    $07D0,X
               STA    RAMWRTON
               LDA    $2C00,X
               STA    $0400,X
               LDA    $2C80,X
               STA    $0480,X
               LDA    $2D00,X
               STA    $0500,X
               LDA    $2D80,X
               STA    $0580,X
               LDA    $2E00,X
               STA    $0600,X
               LDA    $2E80,X
               STA    $0680,X
               LDA    $2F00,X
               STA    $0700,X
               LDA    $2F80,X
               STA    $0780,X
               LDA    $2C28,X
               STA    $0428,X
               LDA    $2CA8,X
               STA    $04A8,X
               LDA    $2D28,X
               STA    $0528,X
               LDA    $2DA8,X
               STA    $05A8,X
               LDA    $2E28,X
               STA    $0628,X
               LDA    $2EA8,X
               STA    $06A8,X
               LDA    $2F28,X
               STA    $0728,X
               LDA    $2FA8,X
               STA    $07A8,X
               LDA    $2C50,X
               STA    $0450,X
               LDA    $2CD0,X
               STA    $04D0,X
               LDA    $2D50,X
               STA    $0550,X
               LDA    $2DD0,X
               STA    $05D0,X
               LDA    $2E50,X
               STA    $0650,X
               LDA    $2ED0,X
               STA    $06D0,X
               LDA    $2F50,X
               STA    $0750,X
               LDA    $2FD0,X
               STA    $07D0,X
               STA    RAMWRTOFF
               INX
               CPX    #$28
               BEQ    L8633
               JMP    L8505
L8633          RTS
SUB8634        LDX    #$00
L8636          LDA    $3000,X
               STA    $0400,X
               LDA    $3080,X
               STA    $0480,X
               LDA    $3100,X
               STA    $0500,X
               LDA    $3180,X
               STA    $0580,X
               LDA    $3200,X
               STA    $0600,X
               LDA    $3280,X
               STA    $0680,X
               LDA    $3300,X
               STA    $0700,X
               LDA    $3380,X
               STA    $0780,X
               LDA    $3028,X
               STA    $0428,X
               LDA    $30A8,X
               STA    $04A8,X
               LDA    $3128,X
               STA    $0528,X
               LDA    $31A8,X
               STA    $05A8,X
               LDA    $3228,X
               STA    $0628,X
               LDA    $32A8,X
               STA    $06A8,X
               LDA    $3328,X
               STA    $0728,X
               LDA    $33A8,X
               STA    $07A8,X
               LDA    $3050,X
               STA    $0450,X
               LDA    $30D0,X
               STA    $04D0,X
               LDA    $3150,X
               STA    $0550,X
               LDA    $31D0,X
               STA    $05D0,X
               LDA    $3250,X
               STA    $0650,X
               LDA    $32D0,X
               STA    $06D0,X
               LDA    $3350,X
               STA    $0750,X
               LDA    $33D0,X
               STA    $07D0,X
               STA    RAMWRTON
               LDA    $3400,X
               STA    $0400,X
               LDA    $3480,X
               STA    $0480,X
               LDA    $3500,X
               STA    $0500,X
               LDA    $3580,X
               STA    $0580,X
               LDA    $3600,X
               STA    $0600,X
               LDA    $3680,X
               STA    $0680,X
               LDA    $3700,X
               STA    $0700,X
               LDA    $3780,X
               STA    $0780,X
               LDA    $3428,X
               STA    $0428,X
               LDA    $34A8,X
               STA    $04A8,X
               LDA    $3528,X
               STA    $0528,X
               LDA    $35A8,X
               STA    $05A8,X
               LDA    $3628,X
               STA    $0628,X
               LDA    $36A8,X
               STA    $06A8,X
               LDA    $3728,X
               STA    $0728,X
               LDA    $37A8,X
               STA    $07A8,X
               LDA    $3450,X
               STA    $0450,X
               LDA    $34D0,X
               STA    $04D0,X
               LDA    $3550,X
               STA    $0550,X
               LDA    $35D0,X
               STA    $05D0,X
               LDA    $3650,X
               STA    $0650,X
               LDA    $36D0,X
               STA    $06D0,X
               LDA    $3750,X
               STA    $0750,X
               LDA    $37D0,X
               STA    $07D0,X
               STA    RAMWRTOFF
               INX
               CPX    #$28
               BEQ    L8764
               JMP    L8636
L8764          RTS
SUB8765        LDX    #$00
L8767          LDA    $3800,X
               STA    $0400,X
               LDA    $3880,X
               STA    $0480,X
               LDA    $3900,X
               STA    $0500,X
               LDA    $3980,X
               STA    $0580,X
               LDA    $3A00,X
               STA    $0600,X
               LDA    $3A80,X
               STA    $0680,X
               LDA    $3B00,X
               STA    $0700,X
               LDA    $3B80,X
               STA    $0780,X
               LDA    $3828,X
               STA    $0428,X
               LDA    $38A8,X
               STA    $04A8,X
               LDA    $3928,X
               STA    $0528,X
               LDA    $39A8,X
               STA    $05A8,X
               LDA    $3A28,X
               STA    $0628,X
               LDA    $3AA8,X
               STA    $06A8,X
               LDA    $3B28,X
               STA    $0728,X
               LDA    $3BA8,X
               STA    $07A8,X
               LDA    $3850,X
               STA    $0450,X
               LDA    $38D0,X
               STA    $04D0,X
               LDA    $3950,X
               STA    $0550,X
               LDA    $39D0,X
               STA    $05D0,X
               LDA    $3A50,X
               STA    $0650,X
               LDA    $3AD0,X
               STA    $06D0,X
               LDA    $3B50,X
               STA    $0750,X
               LDA    $3BD0,X
               STA    $07D0,X
               STA    RAMWRTON
               LDA    $3C00,X
               STA    $0400,X
               LDA    $3C80,X
               STA    $0480,X
               LDA    $3D00,X
               STA    $0500,X
               LDA    $3D80,X
               STA    $0580,X
               LDA    $3E00,X
               STA    $0600,X
               LDA    $3E80,X
               STA    $0680,X
               LDA    $3F00,X
               STA    $0700,X
               LDA    $3F80,X
               STA    $0780,X
               LDA    $3C28,X
               STA    $0428,X
               LDA    $3CA8,X
               STA    $04A8,X
               LDA    $3D28,X
               STA    $0528,X
               LDA    $3DA8,X
               STA    $05A8,X
               LDA    $3E28,X
               STA    $0628,X
               LDA    $3EA8,X
               STA    $06A8,X
               LDA    $3F28,X
               STA    $0728,X
               LDA    $3FA8,X
               STA    $07A8,X
               LDA    $3C50,X
               STA    $0450,X
               LDA    $3CD0,X
               STA    $04D0,X
               LDA    $3D50,X
               STA    $0550,X
               LDA    $3DD0,X
               STA    $05D0,X
               LDA    $3E50,X
               STA    $0650,X
               LDA    $3ED0,X
               STA    $06D0,X
               LDA    $3F50,X
               STA    $0750,X
               LDA    $3FD0,X
               STA    $07D0,X
               STA    RAMWRTOFF
               INX
               CPX    #$28
               BEQ    L8895
               JMP    L8767
L8895          RTS
SUB8896        LDX    #$00
L8898          LDA    $4000,X
               STA    $0400,X
               LDA    $4080,X
               STA    $0480,X
               LDA    $4100,X
               STA    $0500,X
               LDA    $4180,X
               STA    $0580,X
               LDA    $4200,X
               STA    $0600,X
               LDA    $4280,X
               STA    $0680,X
               LDA    $4300,X
               STA    $0700,X
               LDA    $4380,X
               STA    $0780,X
               LDA    $4028,X
               STA    $0428,X
               LDA    $40A8,X
               STA    $04A8,X
               LDA    $4128,X
               STA    $0528,X
               LDA    $41A8,X
               STA    $05A8,X
               LDA    $4228,X
               STA    $0628,X
               LDA    $42A8,X
               STA    $06A8,X
               LDA    $4328,X
               STA    $0728,X
               LDA    $43A8,X
               STA    $07A8,X
               LDA    $4050,X
               STA    $0450,X
               LDA    $40D0,X
               STA    $04D0,X
               LDA    $4150,X
               STA    $0550,X
               LDA    $41D0,X
               STA    $05D0,X
               LDA    $4250,X
               STA    $0650,X
               LDA    $42D0,X
               STA    $06D0,X
               LDA    $4350,X
               STA    $0750,X
               LDA    $43D0,X
               STA    $07D0,X
               STA    RAMWRTON
               LDA    $4400,X
               STA    $0400,X
               LDA    $4480,X
               STA    $0480,X
               LDA    $4500,X
               STA    $0500,X
               LDA    $4580,X
               STA    $0580,X
               LDA    $4600,X
               STA    $0600,X
               LDA    $4680,X
               STA    $0680,X
               LDA    $4700,X
               STA    $0700,X
               LDA    $4780,X
               STA    $0780,X
               LDA    $4428,X
               STA    $0428,X
               LDA    $44A8,X
               STA    $04A8,X
               LDA    $4528,X
               STA    $0528,X
               LDA    $45A8,X
               STA    $05A8,X
               LDA    $4628,X
               STA    $0628,X
               LDA    $46A8,X
               STA    $06A8,X
               LDA    $4728,X
               STA    $0728,X
               LDA    $47A8,X
               STA    $07A8,X
               LDA    $4450,X
               STA    $0450,X
               LDA    $44D0,X
               STA    $04D0,X
               LDA    $4550,X
               STA    $0550,X
               LDA    $45D0,X
               STA    $05D0,X
               LDA    $4650,X
               STA    $0650,X
               LDA    $46D0,X
               STA    $06D0,X
               LDA    $4750,X
               STA    $0750,X
               LDA    $47D0,X
               STA    $07D0,X
               STA    RAMWRTOFF
               INX
               CPX    #$28
               BEQ    L89C6
               JMP    L8898
L89C6          RTS
SUB89C7        LDX    #$00
L89C9          LDA    $4800,X
               STA    $0400,X
               LDA    $4880,X
               STA    $0480,X
               LDA    $4900,X
               STA    $0500,X
               LDA    $4980,X
               STA    $0580,X
               LDA    $4A00,X
               STA    $0600,X
               LDA    $4A80,X
               STA    $0680,X
               LDA    $4B00,X
               STA    $0700,X
               LDA    $4B80,X
               STA    $0780,X
               LDA    $4828,X
               STA    $0428,X
               LDA    $48A8,X
               STA    $04A8,X
               LDA    $4928,X
               STA    $0528,X
               LDA    $49A8,X
               STA    $05A8,X
               LDA    $4A28,X
               STA    $0628,X
               LDA    $4AA8,X
               STA    $06A8,X
               LDA    $4B28,X
               STA    $0728,X
               LDA    $4BA8,X
               STA    $07A8,X
               LDA    $4850,X
               STA    $0450,X
               LDA    $48D0,X
               STA    $04D0,X
               LDA    $4950,X
               STA    $0550,X
               LDA    $49D0,X
               STA    $05D0,X
               LDA    $4A50,X
               STA    $0650,X
               LDA    $4AD0,X
               STA    $06D0,X
               LDA    $4B50,X
               STA    $0750,X
               LDA    $4BD0,X
               STA    $07D0,X
               STA    RAMWRTON
               LDA    $4C00,X
               STA    $0400,X
               LDA    $4C80,X
               STA    $0480,X
               LDA    $4D00,X
               STA    $0500,X
               LDA    $4D80,X
               STA    $0580,X
               LDA    $4E00,X
               STA    $0600,X
               LDA    $4E80,X
               STA    $0680,X
               LDA    $4F00,X
               STA    $0700,X
               LDA    $4F80,X
               STA    $0780,X
               LDA    $4C28,X
               STA    $0428,X
               LDA    $4CA8,X
               STA    $04A8,X
               LDA    $4D28,X
               STA    $0528,X
               LDA    $4DA8,X
               STA    $05A8,X
               LDA    $4E28,X
               STA    $0628,X
               LDA    $4EA8,X
               STA    $06A8,X
               LDA    $4F28,X
               STA    $0728,X
               LDA    $4FA8,X
               STA    $07A8,X
               LDA    $4C50,X
               STA    $0450,X
               LDA    $4CD0,X
               STA    $04D0,X
               LDA    $4D50,X
               STA    $0550,X
               LDA    $4DD0,X
               STA    $05D0,X
               LDA    $4E50,X
               STA    $0650,X
               LDA    $4ED0,X
               STA    $06D0,X
               LDA    $4F50,X
               STA    $0750,X
               LDA    $4FD0,X
               STA    $07D0,X
               STA    RAMWRTOFF
               INX
               CPX    #$28
               BEQ    L8AF7
               JMP    L89C9
L8AF7          RTS
SUB8AF8        LDA    STROBE
               LDA    TXTCLR
               STA    SET80VID
               LDA    AN3OFF
               STA    MIXCLR
               STA    KEYBD
               LDA    LOWSCR
               LDA    #$00
               JSR    SUB8B55
               JSR    SUB8C67
               JSR    SUB8BDE
               JSR    SUB8C90
               STA    ALTZPOFF
               RTS
SUB8B1F        LDA    STROBE
               STA    KEYBD
               STA    CLR80VID
               LDA    AN3ON
               LDA    TXTSET
               LDA    LOWSCR
               JSR    $F399
               JSR    HOME
               RTS
SUB8B38        LDA    #$00
               STA    $3C
               LDA    #$80
               STA    $3D
               LDA    #$FF
               STA    $3E
               LDA    #$8F
               STA    $3F
               LDA    #$00
               STA    $42
               LDA    #$80
               STA    $43
               SEC
               JMP    $C311
               HEX    60
SUB8B55        LDX    #$28
L8B57          DEX
               STA    $0400,X
               STA    $0480,X
               STA    $0500,X
               STA    $0580,X
               STA    $0600,X
               STA    $0680,X
               STA    $0700,X
               STA    $0780,X
               STA    $0428,X
               STA    $04A8,X
               STA    $0528,X
               STA    $05A8,X
               STA    $0628,X
               STA    $06A8,X
               STA    $0728,X
               STA    $07A8,X
               STA    $0450,X
               STA    $04D0,X
               STA    $0550,X
               STA    $05D0,X
               BNE    L8B57
               LDX    #$28
L8B98          DEX
               STA    RAMWRTON
               STA    $0400,X
               STA    $0480,X
               STA    $0500,X
               STA    $0580,X
               STA    $0600,X
               STA    $0680,X
               STA    $0700,X
               STA    $0780,X
               STA    $0428,X
               STA    $04A8,X
               STA    $0528,X
               STA    $05A8,X
               STA    $0628,X
               STA    $06A8,X
               STA    $0728,X
               STA    $07A8,X
               STA    $0450,X
               STA    $04D0,X
               STA    $0550,X
               STA    $05D0,X
               STA    RAMWRTOFF
               BNE    L8B98
               RTS
SUB8BDE        LDX    #$28
L8BE0          DEX
               STA    $0800,X
               STA    $0880,X
               STA    $0900,X
               STA    $0980,X
               STA    $0A00,X
               STA    $0A80,X
               STA    $0B00,X
               STA    $0B80,X
               STA    $0828,X
               STA    $08A8,X
               STA    $0928,X
               STA    $09A8,X
               STA    $0A28,X
               STA    $0AA8,X
               STA    $0B28,X
               STA    $0BA8,X
               STA    $0850,X
               STA    $08D0,X
               STA    $0950,X
               STA    $09D0,X
               BNE    L8BE0
               LDX    #$28
L8C21          DEX
               STA    RAMWRTON
               STA    $0800,X
               STA    $0880,X
               STA    $0900,X
               STA    $0980,X
               STA    $0A00,X
               STA    $0A80,X
               STA    $0B00,X
               STA    $0B80,X
               STA    $0828,X
               STA    $08A8,X
               STA    $0928,X
               STA    $09A8,X
               STA    $0A28,X
               STA    $0AA8,X
               STA    $0B28,X
               STA    $0BA8,X
               STA    $0850,X
               STA    $08D0,X
               STA    $0950,X
               STA    $09D0,X
               STA    RAMWRTOFF
               BNE    L8C21
               RTS
SUB8C67        LDX    #$28
L8C69          DEX
               STA    $0650,X
               STA    $06D0,X
               STA    $0750,X
               STA    $07D0,X
               BNE    L8C69
               LDX    #$28
L8C7A          DEX
               STA    RAMWRTON
               STA    $0650,X
               STA    $06D0,X
               STA    $0750,X
               STA    $07D0,X
               STA    RAMWRTOFF
               BNE    L8C7A
               RTS
SUB8C90        LDX    #$28
L8C92          DEX
               STA    $0A50,X
               STA    $0AD0,X
               STA    $0B50,X
               STA    $0BD0,X
               BNE    L8C92
               LDX    #$28
L8CA3          DEX
               STA    RAMWRTON
               STA    $0A50,X
               STA    $0AD0,X
               STA    $0B50,X
               STA    $0BD0,X
               STA    RAMWRTOFF
               BNE    L8CA3
               RTS
D8CB9          HEX    04040505060607070404050506060707
               HEX    04040505060607070404050506060707
D8CD9          HEX    10101111121213131010111112121313
               HEX    10101111121213131010111112121313
D8CF9          HEX    14141515161617171414151516161717
               HEX    14141515161617171414151516161717
D8D19          ASC    'PPQQRRSSPPQQRRSSPPQQRRSSPPQQRRSS'
D8D39          ASC    'TTUUVVWWTTUUVVWWTTUUVVWWTTUUVVWWXXYYZZ[['
               HEX    585859595A5A5B5B585859595A5A5B5B
               HEX    585859595A5A5B5B5C5C5D5D5E5E5F5F
               HEX    5C5C5D5D5E5E5F5F5C5C5D5D5E5E5F5F
               HEX    5C5C5D5D5E5E5F5F6060616162626363
               ASC    '``aabbcc``aabbcc``aabbccddeeffggddeeffgg'
               ASC    'ddeeffggddeeffgg'
D8DD9          HEX    008000800080008028A828A828A828A8
               HEX    50D050D050D050D078F878F878F878F8
SUB8DF9        LDA    #$20
               STA    D8E58
               LDA    #$31
               STA    D8E6C
               LDA    #$30
               STA    D8E6B
L8E08          JSR    SUB8E30
               BCS    L8E2F
               CLC
               LDA    D8E58
               ADC    #$08
               STA    D8E58
               INC    D8E6C
               LDA    D8E6C
               CMP    #$3A
               BNE    L8E28
               LDA    #$30
               STA    D8E6C
               INC    D8E6B
L8E28          LDA    D8E58
               CMP    #$80
               BNE    L8E08
L8E2F          RTS
SUB8E30        JSR    $BF00
               INY
               HEX    4F8EB016AD548E8D568E8D5E8E2000BF
               HEX    CA558E2000BFCC5D8E1860035F8E0018
               HEX    00040000
D8E58          HEX    200008000001000D4F5554522F444C52
               HEX    2E4F55
D8E6B          HEX    30
D8E6C          HEX    31
