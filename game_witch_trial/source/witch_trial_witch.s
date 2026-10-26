************************************************************
* witch_trial - WITCH (disassembly)
*
* Disassembled from the original binary (29767 bytes, $2000-$9446).
* Reconstructed source: labels are generated, comments are minimal.
* Bytes the disassembler could not prove to be code are emitted as HEX/ASC data.
* Original program by its authors; see ../README.txt for attribution and terms.
* Entry point(s): $2000 (65C02 code allowed: XC).
************************************************************

               XC
               ORG    $2000

KEYBD          EQU    $C000
RAMRDOFF       EQU    $C002
RAMRDON        EQU    $C003
RAMWRTOFF      EQU    $C004
RAMWRTON       EQU    $C005
ALTZPOFF       EQU    $C008
CLR80VID       EQU    $C00C
SET80VID       EQU    $C00D
STROBE         EQU    $C010
SPKR           EQU    $C030
TXTCLR         EQU    $C050
TXTSET         EQU    $C051
MIXCLR         EQU    $C052
LOWSCR         EQU    $C054
LORES          EQU    $C056
AN1OFF         EQU    $C05A
AN2OFF         EQU    $C05C
AN3OFF         EQU    $C05E
AN3ON          EQU    $C05F
PB0            EQU    $C061
PB1            EQU    $C062
PREAD          EQU    $FB1E
BELL           EQU    $FBDD
HOME           EQU    $FC58
WAIT           EQU    $FCA8
COUT           EQU    $FDED
SETNORM        EQU    $FE84

START          JMP    L2024
               HEX    574954434820545249414C2056322E30
               HEX    20382D4249542D534841434B20323032
               HEX    36
L2024          SEI
               CLD
               LDX    #$FF
               TXS
               JSR    SUB6722
               JSR    SUB6776
               JSR    SUB6785
               JSR    SUB67C8
               JSR    SUB6831
               LDA    $0342
               BNE    L2045
               LDA    #$FF
               STA    $C403
               STA    $C404
L2045          JSR    SUB5B5B
               LDA    #$00
               STA    $FE
               STA    $0340
               STA    $02FF
               LDA    #$95
               STA    $FF
               LDA    $02FD
               BNE    L206C
               JSR    SUB65C7
               LDA    $0340
               STA    D36EB
               BEQ    L206C
               JSR    SUB6718
               JSR    SUB65FE
L206C          JSR    SUB65B1
               JSR    SUB272F
               JSR    SUB618C
               LDA    LORES
               JSR    SUB27BC
               JSR    SUB25EB
               JSR    SUB2643
               JSR    SUB26C3
               LDA    #$27
               STA    D36FD
               LDA    #$17
               STA    D36FE
               LDA    $0342
               BNE    L2098
               LDA    $02FE
               BNE    L209B
L2098          JSR    SUB2F2E
L209B          CLI
               LDA    #$0F
               STA    $E3
               STZ    D346F
               STZ    D3470
               STZ    D2F2B
               LDA    #$01
               STA    D34C6
               LDX    #$48
               LDY    #$33
               JSR    SUB2799
               JSR    SUB2473
               JSR    SUB26BE
               JSR    SUB23F9
               JSR    SUB2714
L20C1          LDX    #$56
               LDY    #$33
               JSR    SUB2799
               JSR    SUB2473
L20CB          JSR    SUB23F9
               LDA    D36E9
               BEQ    L20EC
               STZ    D346F
               STZ    D3470
               STZ    D2F2B
               STZ    D347A
               LDA    #$FF
               STA    D347B
               LDA    #$01
               STA    D34C6
               JMP    L20C1
L20EC          LDA    D347A
               BEQ    L2101
               LDA    D347B
               CMP    #$FF
               BEQ    L2101
               JSR    SUB2714
               INC    D347B
               JMP    L21E7
L2101          LDA    D346F
               ORA    D3470
               BNE    L2133
               JSR    SUB2714
               LDX    #$8D
               LDY    #$27
               JSR    SUB2761
               BCC    L2118
               JMP    L21CF
L2118          LDX    #$91
               LDY    #$27
               JSR    SUB2761
               BCC    L2124
               JMP    L21DA
L2124          LDX    #$95
               LDY    #$27
               JSR    SUB2761
               BCC    L2130
               JMP    L23A5
L2130          JMP    L20CB
L2133          JSR    SUB2D59
               BCC    L2182
               CMP    #$01
               BEQ    L2147
               CMP    #$02
               BEQ    L2169
               CMP    #$03
               BEQ    L2172
               JMP    L20CB
L2147          LDA    D2F29
               ASL
               TAX
               LDA    D3471,X
               ORA    D3472,X
               BEQ    L2166
               LDA    D3471,X
               STA    D346F
               LDA    D3472,X
               STA    D3470
               JSR    SUB2714
               JSR    SUB28FC
L2166          JMP    L20CB
L2169          JSR    SUB2714
               JSR    SUB2360
               JMP    L20CB
L2172          JSR    SUB2714
               LDA    #$02
               STA    D347A
               LDA    #$01
               STA    D347B
               JMP    L21E7
L2182          STZ    D3481
               LDX    #$01
L2187          CPX    D3480
               BEQ    L218E
               BCS    L21C4
L218E          LDA    D34B9,X
               BEQ    L21C1
               LDA    D34C7
               CMP    D3482,X
               BCC    L21C1
               LDA    D3498,X
               CMP    D34C7
               BCC    L21C1
               LDA    D34C8
               CMP    D348D,X
               BCC    L21C1
               LDA    D34A3,X
               CMP    D34C8
               BCC    L21C1
               LDA    D34AE,X
               STA    D347A
               STX    D3481
               LDA    #$01
               STA    D347B
L21C1          INX
               BNE    L2187
L21C4          LDA    D3481
               BNE    L21CC
               JMP    L20CB
L21CC          JMP    L21E7
L21CF          LDA    #$01
               STA    D347A
               STA    D347B
               JMP    L21E7
L21DA          LDA    #$04
               STA    D347A
               LDA    #$01
               STA    D347B
               JMP    L21E7
L21E7          LDA    D347A
               BEQ    L21EF
               STZ    D2F2B
L21EF          CMP    #$02
               BNE    L21F6
               JMP    L2256
L21F6          CMP    #$03
               BNE    L21FD
               JMP    L22A0
L21FD          CMP    #$04
               BNE    L2204
               JMP    L22B8
L2204          CMP    #$05
               BNE    L220B
               JMP    L22FD
L220B          LDA    D347B
               LDX    #$64
               LDY    #$33
               CMP    #$01
               BEQ    L2243
               LDX    #$72
               LDY    #$33
               CMP    #$02
               BEQ    L2243
               LDX    #$80
               LDY    #$33
               CMP    #$03
               BEQ    L2243
               CMP    #$04
               BNE    L2246
               STZ    D347A
               LDA    #$FF
               STA    D347B
               LDA    #$64
               STA    D346F
               STZ    D3470
               STZ    D2F29
               JSR    SUB28FC
               JMP    L20CB
L2243          JSR    SUB2799
L2246          LDA    D347B
               CMP    #$FF
               BEQ    L2253
               JSR    SUB2473
               JMP    L20CB
L2253          JMP    L2256
L2256          LDA    D347B
               CMP    #$01
               BNE    L227D
               LDA    #$01
               STA    D34C4
               JSR    SUB2351
               LDX    #$E9
               LDY    #$34
               JSR    SUB2799
               LDA    #$03
               STA    D34C6
               JSR    SUB2473
               JSR    SUB23F9
               JSR    SUB2714
               JSR    SUB28FC
L227D          LDX    #$01
L227F          TXA
               JSR    SUB2D47
               BNE    L2293
               INX
               CPX    #$06
               BNE    L227F
               LDA    #$06
               LDX    #$1A
               LDY    #$34
               JSR    SUB2D25
L2293          LDA    #$07
               JSR    SUB2D47
               BNE    L229D
               JMP    L23DD
L229D          JMP    L232D
L22A0          JSR    SUB2351
               LDX    #$C6
               LDY    #$33
               JSR    SUB2799
               LDA    #$03
               STA    D34C6
               JSR    SUB2473
               JSR    SUB23F9
               JMP    L232D
L22B8          LDA    D347B
               LDX    #$8E
               LDY    #$33
               CMP    #$01
               BEQ    L22EA
               LDX    #$9C
               LDY    #$33
               CMP    #$02
               BEQ    L22EA
               LDX    #$AA
               LDY    #$33
               CMP    #$03
               BEQ    L22EA
               LDX    #$B8
               LDY    #$33
               CMP    #$04
               BEQ    L22EA
               CMP    #$05
               BNE    L22ED
               STZ    D347A
               LDA    #$FF
               STA    D347B
               JMP    L20C1
L22EA          JSR    SUB2799
L22ED          LDA    D347B
               CMP    #$FF
               BEQ    L22FA
               JSR    SUB2473
               JMP    L20CB
L22FA          JMP    L233C
L22FD          LDA    D347C
               BNE    L2309
               LDA    D347D
               CMP    #$FF
               BNE    L230F
L2309          JSR    SUB271A
               JMP    L233C
L230F          LDX    D3481
               STZ    D3482,X
               STZ    D348D,X
               STZ    D3498,X
               STZ    D34A3,X
               STZ    D34B9,X
               STA    D347C
               JSR    SUB2714
               JSR    SUB2473
               JMP    L233C
L232D          LDA    #$02
               STA    D34C6
               LDX    #$D9
               LDY    #$34
               JSR    SUB2799
               JSR    SUB2473
L233C          STZ    D347A
               LDA    #$FF
               STA    D347B
               LDA    #$02
               STA    D34C6
               LDA    #$01
               STA    D2F2B
               JMP    L20CB
SUB2351        LDX    #$C9
               LDY    #$34
               LDA    #$D9
               STA    $52
               LDA    #$34
               STA    $53
               JMP    L27A1
SUB2360        JSR    SUB2351
               STZ    D2F2B
               LDX    #$D4
               LDY    #$33
               JSR    SUB2799
               JSR    SUB2473
               LDA    D347C
               BEQ    L239C
               JSR    SUB255E
               LDA    D36E1
               INC
               LSR
               STA    $50
               LDA    #$28
               SEC
               SBC    $50
               STA    D36E3
               LDA    D36E2
               INC
               LSR
               STA    $50
               LDA    #$1A
               SEC
               SBC    $50
               STA    D36E4
               LDA    D347C
               JSR    SUB2597
L239C          JSR    SUB23F9
               JSR    SUB2714
               JMP    SUB28FC
L23A5          JSR    SUB245F
               JSR    SUB2FDA
               JSR    SUB26F6
               JSR    SUB65BC
               JSR    SUB61BD
               JSR    SETNORM
               LDX    #$00
L23B9          LDA    D23CA,X
               BEQ    L23C4
               JSR    COUT
               INX
               BNE    L23B9
L23C4          JSR    $D64B
               JMP    $03D0
D23CA          ASC    "FAREWELL, WITCH!"
               HEX    8D8D00
L23DD          JSR    SUB245F
               JSR    SUB2FDA
               LDA    D6867
               STA    D943A
               LDY    #$00
L23EB          LDA    D93C1,Y
               STA    $9500,Y
               INY
               CPY    #$86
               BNE    L23EB
               JMP    $9500
SUB23F9        JSR    SUB2451
               STZ    D36E9
               LDA    #$00
               STA    D36F5
               JSR    SUB3066
               LDA    D36F3
               STA    D34C7
               LDA    D36F4
               STA    D34C8
               LDA    #$00
               STA    D36FC
               STA    D36F5
               LDA    D36E9
               BNE    L242E
               JSR    SUB316C
               LDA    #$C8
               JSR    WAIT
               JSR    SUB3181
               JSR    SUB242F
L242E          RTS
SUB242F        LDA    PB0
               ORA    PB1
               BMI    SUB242F
               LDA    $02FF
               BEQ    L2450
               LDA    D36EE
               BEQ    L2450
               PHP
               SEI
               LDX    #$14
               JSR    SUB2FF7
               PLP
               JSR    SUB3010
               AND    #$80
               BNE    SUB242F
L2450          RTS
SUB2451        LDA    D36E8
               BNE    L245E
               JSR    SUB3129
               LDA    #$01
               STA    D36E8
L245E          RTS
SUB245F        LDA    D36E8
               BEQ    L246A
               JSR    SUB3116
               STZ    D36E8
L246A          LDA    D2F2A
               BEQ    L2472
               JMP    SUB2EDF
L2472          RTS
SUB2473        JSR    SUB245F
               LDX    #$C9
               LDY    #$34
               JSR    SUB27F2
               LDA    #$00
               LDX    #$18
               LDY    #$08
               JSR    SUB2878
               BCC    L2489
               RTS
L2489          STA    KEYBD
               LDA    D34C6
               CMP    #$01
               BNE    L2498
               JSR    SUB24BD
               BRA    L249F
L2498          CMP    #$03
               BNE    L24A6
               JSR    SUB633E
L249F          LDA    #$01
               LDX    #$03
               JMP    SUB24B4
L24A6          JSR    SUB6492
               LDA    #$03
               LDX    #$01
               JSR    SUB24B4
               LDA    #$01
               LDX    #$03
SUB24B4        STA    D5B44
               STX    D5B45
               JMP    L5CCE
SUB24BD        JSR    SUB64E9
               LDX    #$00
L24C2          STA    RAMWRTON
               LDY    #$00
L24C7          LDA    D252E,Y
               STA    $50
               LDA    D252F,Y
               CLC
               ADC    #$1C
               STA    $51
               LDA    D252E,Y
               STA    $52
               LDA    D252F,Y
               CLC
               ADC    #$04
               STA    $53
               PHY
               TXA
               TAY
               LDA    ($50),Y
               STA    ($52),Y
               PLY
               INY
               INY
               CPY    #$30
               BNE    L24C7
               STA    RAMWRTOFF
               LDA    #$32
               JSR    WAIT
               LDY    #$00
L24F9          LDA    D252E,Y
               STA    $50
               LDA    D252F,Y
               CLC
               ADC    #$18
               STA    $51
               LDA    D252E,Y
               STA    $52
               LDA    D252F,Y
               CLC
               ADC    #$04
               STA    $53
               PHY
               TXA
               TAY
               LDA    ($50),Y
               STA    ($52),Y
               PLY
               INY
               INY
               CPY    #$30
               BNE    L24F9
               LDA    #$32
               JSR    WAIT
               INX
               CPX    #$28
               BNE    L24C2
               JMP    SUB651F
D252E          HEX    00
D252F          HEX    00800000018001000280020003800328
               HEX    00A8002801A8012802A8022803A80350
               HEX    00D0005001D0015002D0025003D003
SUB255E        LDA    D347C
SUB2561        DEC
               TAX
               LDA    D3F03,X
               SEC
               SBC    #$00
               STA    $50
               LDA    D3F83,X
               SBC    #$55
               STA    $51
               CLC
               LDA    $50
               ADC    #$03
               STA    $50
               LDA    $51
               ADC    #$3F
               STA    $51
               LDA    ($50)
               STA    D36E1
               LDY    #$01
               LDA    ($50),Y
               STA    D36E2
               CLC
               LDA    $50
               ADC    #$02
               STA    $50
               BCC    L2596
               INC    $51
L2596          RTS
SUB2597        CMP    #$00
               BNE    L259C
               RTS
L259C          JSR    SUB2561
               STZ    D36E6
L25A2          LDA    D36E6
               CMP    D36E2
               BCS    L25EA
               STZ    D36E5
L25AD          LDA    D36E5
               CMP    D36E1
               BCS    L25E5
               LDA    ($50)
               INC    $50
               BNE    L25BD
               INC    $51
L25BD          CMP    #$0A
               BEQ    L25E0
               STA    $E3
               CLC
               LDA    D36E3
               ADC    D36E5
               CMP    #$50
               BCS    L25E0
               STA    $E0
               CLC
               LDA    D36E4
               ADC    D36E6
               CMP    #$30
               BCS    L25E0
               STA    $E1
               JSR    SUB62BE
L25E0          INC    D36E5
               BRA    L25AD
L25E5          INC    D36E6
               BRA    L25A2
L25EA          RTS
SUB25EB        LDA    #$01
               STA    D36E7
L25F0          LDX    #$E2
               LDY    #$33
               JSR    SUB27F2
               LDA    D36E7
               JSR    SUB281A
               LDA    #$FD
               LDX    #$94
               LDY    #$02
               JSR    SUB2878
               LDA    D36E7
               STA    D5B54
               LDA    $94FD
               STA    D5B49
               LDA    $94FE
               STA    D5B4A
               LDA    $94FF
               STA    D5B4C
               LDA    #$00
               STA    $FE
               LDA    #$95
               STA    $FF
               JSR    SUB52A5
               INC    D36E7
               LDA    D36E7
               CMP    #$0A
               BNE    L25F0
               LDX    #$EE
               LDY    #$33
               JSR    SUB27F2
               LDA    #$03
               LDX    #$3F
               LDY    #$0A
               JMP    SUB2878
SUB2643        STZ    D26BD
               LDA    $0340
               BEQ    L26BB
               LDA    #$28
               STA    D26BC
               LDX    #$FC
               LDY    #$33
               JSR    SUB27F2
               JSR    $BF00
               INY
               HEX    AB28B05CADB0288DB2288DBA28A9038D
               HEX    B328A9398DB4289CB528A9048DB62820
               HEX    00BFCAB128B02BA903853CA939853DA9
               HEX    02853EA93D853F6442ADBC268543EEBD
               HEX    26382011C318ADBC2669048DBC26C950
               HEX    90CD2000BFCCB928ADBD26F00320A893
L26BB          RTS
D26BC          HEX    00
D26BD          HEX    00
SUB26BE        LDA    D36EA
               BEQ    L26DD
SUB26C3        STZ    D36EA
               LDA    $0340
               BEQ    L26DC
               PHP
               SEI
               LDA    #$01
               STA    RAMWRTON
               STA    $0307
               STA    RAMWRTOFF
               JSR    SUB66CD
               PLP
L26DC          RTS
L26DD          LDA    #$01
               STA    D36EA
               LDA    $0340
               BEQ    L26F5
               PHP
               SEI
               LDA    #$00
               STA    RAMWRTON
               STA    $0307
               STA    RAMWRTOFF
               PLP
L26F5          RTS
SUB26F6        LDA    $0340
               BEQ    L2713
               SEI
               LDA    #$00
D26FE          STA    $C40B
               LDA    #$40
D2703          STA    $C40D
D2706          STA    $C40E
               JSR    SUB26C3
               JSR    SUB66B9
               JSR    SUB685B
               CLI
L2713          RTS
SUB2714        LDA    #$14
               LDX    #$1E
               BRA    L271E
SUB271A        LDA    #$32
               LDX    #$FF
L271E          STA    $50
               STX    $51
L2722          LDX    $51
L2724          DEX
               BNE    L2724
               LDY    SPKR
               DEC    $50
               BNE    L2722
               RTS
SUB272F        LDX    #$42
L2731          STZ    D346E,X
               DEX
               BNE    L2731
               LDX    #$14
L2739          TXA
               PHX
               LDX    #$6D
               LDY    #$34
               JSR    SUB2D25
               PLX
               DEX
               BNE    L2739
               LDA    #$FF
               STA    D347B
               STA    D347D
               STZ    D2F29
               STZ    D2F2A
               STZ    D2F2B
               STZ    D2F2C
               STZ    D36E8
               STZ    D36EA
               RTS
SUB2761        STX    $50
               STY    $51
               LDY    #$00
               LDA    D34C7
               CMP    ($50),Y
               BCC    L278B
               LDY    #$02
               LDA    ($50),Y
               CMP    D34C7
               BCC    L278B
               LDY    #$01
               LDA    D34C8
               CMP    ($50),Y
               BCC    L278B
               LDY    #$03
               LDA    ($50),Y
               CMP    D34C8
               BCC    L278B
               SEC
               RTS
L278B          CLC
               RTS
               HEX    0020192C1B20352C37204F2C
SUB2799        LDA    #$C9
               STA    $52
               LDA    #$34
               STA    $53
L27A1          STX    $50
               STY    $51
               LDA    ($50)
               CMP    #$10
               BCC    L27AD
               LDA    #$0F
L27AD          STA    ($52)
               TAY
L27B0          CPY    #$00
               BEQ    L27BB
               LDA    ($50),Y
               STA    ($52),Y
               DEY
               BRA    L27B0
L27BB          RTS
SUB27BC        JSR    $BF00
               HEX    C7EB27B026AE8002D01BAD30BF8DEF27
               HEX    2000BFC5EE27AD8102290FAAE88E8002
               HEX    A92F8D81022000BFC6EB276001800202
               HEX    008102
SUB27F2        STZ    D28BB
SUB27F5        STX    $50
               STY    $51
               LDA    ($50)
               BEQ    L2819
               STA    D36DA
               LDY    #$01
L2802          LDX    D28BB
               CPX    #$3F
               BCS    L2819
               LDA    ($50),Y
               STA    D28BC,X
               INC    D28BB
               CPY    D36DA
               BEQ    L2819
               INY
               BRA    L2802
L2819          RTS
SUB281A        LDX    #$30
L281C          CMP    #$0A
               BCC    L2825
               SBC    #$0A
               INX
               BRA    L281C
L2825          PHA
               TXA
               JSR    SUB282D
               PLA
               ORA    #$30
SUB282D        LDX    D28BB
               STA    D28BC,X
               INC    D28BB
               RTS
SUB2837        LDA    D346F
               STA    D36D8
               LDA    D3470
               STA    D36D9
               LDX    #$00
L2845          LDY    #$10
               LDA    #$00
L2849          ASL    D36D8
               ROL    D36D9
               ROL
               CMP    #$0A
               BCC    L2859
               SBC    #$0A
               INC    D36D8
L2859          DEY
               BNE    L2849
               ORA    #$30
               STA    D36DB,X
               INX
               LDA    D36D8
               ORA    D36D9
               BNE    L2845
L286A          DEX
               LDA    D36DB,X
               PHX
               JSR    SUB282D
               PLX
               CPX    #$00
               BNE    L286A
               RTS
SUB2878        STA    D28B3
               STX    D28B4
               STZ    D28B5
               STY    D28B6
               STZ    D28B7
               STZ    D28B8
               JSR    $BF00
               INY
               HEX    AB28B017ADB0288DB2288DBA282000BF
               HEX    CAB1282000BFCCB9281860386003BB28
               HEX    008F000400
D28B3          HEX    00
D28B4          HEX    00
D28B5          HEX    00
D28B6          HEX    00
D28B7          HEX    00
D28B8          HEX    000100
D28BB          HEX    00
D28BC          HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
SUB28FC        STZ    D3480
               LDA    #$01
               STA    D34C5
               LDX    #$07
L2906          STZ    D3471,X
               DEX
               BPL    L2906
               STZ    D3479
               LDA    #$FF
               STA    D347D
               STZ    D34F9
               LDX    #$03
L2919          STZ    D3482,X
               STZ    D348D,X
               STZ    D3498,X
               STZ    D34A3,X
               STZ    D34AE,X
               STZ    D34B9,X
               DEX
               BNE    L2919
               LDX    #$0A
               LDY    #$34
               JSR    SUB27F2
               JSR    SUB2837
               LDX    #$15
               LDY    #$34
               JSR    SUB27F5
               LDA    #$03
               LDX    #$3D
               LDY    #$02
               JSR    SUB2878
               LDA    D28B7
               STA    D36D4
               LDA    D28B8
               STA    D36D5
               STZ    D36D6
               STZ    D36D7
               LDA    D34C4
               BNE    L2964
               LDA    #$01
               STA    D2F2B
L2964          JSR    SUB2BB5
               LDA    D36D3
               CMP    #$01
               BNE    L2978
               LDA    D3653
               CMP    #$2E
               BNE    L2978
               JMP    L29A3
L2978          JSR    SUB2B7A
               LDA    D34C5
               BNE    L2984
               CPX    #$04
               BNE    L2964
L2984          LDA    D34C4
               BEQ    L298D
               CPX    #$02
               BEQ    L2964
L298D          PHX
               JSR    SUB2C12
               PLX
               CPX    #$FF
               BNE    L299B
               JSR    BELL
               BRA    L2964
L299B          JSR    SUB29A0
               BRA    L2964
SUB29A0        JMP    (D2B64,X)
L29A3          LDA    D34C4
               BNE    L29DC
               LDA    D34F9
               BEQ    L29BC
               LDX    #$F9
               LDY    #$34
               JSR    SUB2799
               LDA    #$02
               STA    D34C6
               JSR    SUB2473
L29BC          LDA    D347D
               CMP    #$FF
               BEQ    L29DC
               LDA    D347E
               STA    D36E3
               LDA    D347F
               STA    D36E4
               LDA    D347D
               JSR    SUB2597
               LDA    #$01
               LDX    #$03
               JSR    SUB24B4
L29DC          STZ    D34C4
               JMP    L2E09
               HEX    ADC135C901D01BADC235A200C94EF013
               HEX    A202C945F00DA204C953F007A206C957
               HEX    F00160DAA2D1A03520792C7A9971348A
               HEX    99723460ADC135C901D007ADC235C930
               HEX    F010A2C1A03520792CA2D1A03520FD2C
               HEX    D00FA2E1A035A9F98552A93485534CA1
               HEX    2760A2C1A03520792CA2D1A03520FD2C
               HEX    F0039CC53460A2C1A03520792CE000D0
               HEX    05CD7C34F0039CC53460A2C1A0352079
               HEX    2CE000D008CD7C34D0039CC53460A901
               HEX    8D7934A2C1A035A9E98552A934855320
               HEX    A127ADC434D0039CC53460AD8034C90A
               HEX    B049EE8034A2C1A03520792CAC803499
               HEX    8234A2D1A03520792CAC8034998D34A2
               HEX    E1A03520792CAC8034999834A2F1A035
               HEX    20792CAC803499A334A201A03620792C
               HEX    AC803499AE34A90199B93460A2C1A035
               HEX    20792CA2D1A0354C252DA2C1A0352079
               HEX    2C8D7C3460A2C1A03520792C8D7D34A2
               HEX    D1A03520792C8D7E34A2E1A03520792C
               HEX    8D7F34606868ADC534F0034CA329A901
               HEX    8DC5344C6429
D2B38          HEX    26
D2B39          HEX    58
D2B3A          HEX    49
D2B3B          ASC    'T&IMG&EIF&IFF&IFI&TLK&CLK&SET&INV&IFN&SP'
               HEX    52
D2B64          HEX    E229162A262B442A582A802A9D2AEE2A
               HEX    FC2A6C2A072B
SUB2B7A        LDA    D36D3
               CMP    #$04
               BCC    L2BB2
               LDX    #$00
               LDY    #$00
L2B85          LDA    D3653
               CMP    D2B38,Y
               BNE    L2BA9
               LDA    D3654
               CMP    D2B39,Y
               BNE    L2BA9
               LDA    D3655
               CMP    D2B3A,Y
               BNE    L2BA9
               LDA    D3656
               CMP    D2B3B,Y
               BNE    L2BA9
               TXA
               ASL
               TAX
               RTS
L2BA9          INY
               INY
               INY
               INY
               INX
               CPX    #$0B
               BNE    L2B85
L2BB2          LDX    #$FF
               RTS
SUB2BB5        STZ    D36D3
               LDA    D36D6
               CMP    D36D4
               LDA    D36D7
               SBC    D36D5
               BCC    L2BD1
               LDA    #$2E
               STA    D3653
               LDA    #$01
               STA    D36D3
               RTS
L2BD1          CLC
               LDA    #$03
               ADC    D36D6
               STA    $50
               LDA    #$3D
               ADC    D36D7
               STA    $51
L2BE0          LDA    D36D6
               CMP    D36D4
               LDA    D36D7
               SBC    D36D5
               BCS    L2C11
               LDA    ($50)
               INC    $50
               BNE    L2BF6
               INC    $51
L2BF6          INC    D36D6
               BNE    L2BFE
               INC    D36D7
L2BFE          CMP    #$0D
               BEQ    L2C11
               LDX    D36D3
               CPX    #$7F
               BCS    L2BE0
               STA    D3653,X
               INC    D36D3
               BRA    L2BE0
L2C11          RTS
SUB2C12        LDA    #$01
               STA    D3652
               LDA    #$05
               STA    D3651
               LDY    #$05
L2C1E          CPY    D36D3
               BCS    L2C78
               LDA    D3653,Y
               CMP    #$7C
               BNE    L2C75
               INC    D3652
               LDA    D3652
               CMP    #$0B
               BCS    L2C70
               PHY
               DEC
               ASL
               ASL
               ASL
               ASL
               CLC
               ADC    #$B1
               STA    $52
               LDA    #$35
               ADC    #$00
               STA    $53
               STY    $50
               TYA
               SEC
               SBC    D3651
               CMP    #$0F
               BCC    L2C52
               LDA    #$0F
L2C52          STA    ($52)
               TAX
               LDY    D3651
               LDA    #$01
               STA    $51
L2C5C          CPX    #$00
               BEQ    L2C6F
               LDA    D3653,Y
               PHY
               LDY    $51
               STA    ($52),Y
               PLY
               INY
               INC    $51
               DEX
               BRA    L2C5C
L2C6F          PLY
L2C70          TYA
               INC
               STA    D3651
L2C75          INY
               BRA    L2C1E
L2C78          RTS
               HEX    865084519CD8369CD936B2508DDA36A0
               HEX    01CCDA36F002B050B150C920D003C880
               HEX    F0CCDA36F002B040B15038E930C90AB0
               HEX    3748ADD836AED9360ED8362ED9360ED8
               HEX    362ED936186DD8368DD8368A6DD9368D
               HEX    D9360ED8362ED93668186DD8368DD836
               HEX    9003EED936C880B9ADD836AED93660
SUB2CE8        CMP    #$15
               BCC    L2CEE
               LDA    #$00
L2CEE          ASL
               ASL
               ASL
               CLC
               ADC    #$09
               STA    $52
               LDA    #$35
               ADC    #$00
               STA    $53
               RTS
SUB2CFD        STX    $50
               STY    $51
               JSR    SUB2CE8
               LDA    ($50)
               CMP    #$08
               BCC    L2D0C
               LDA    #$07
L2D0C          STA    D36DA
               LDA    ($52)
               CMP    D36DA
               BNE    L2D24
               TAY
L2D17          CPY    #$00
               BEQ    L2D24
               LDA    ($50),Y
               CMP    ($52),Y
               BNE    L2D24
               DEY
               BRA    L2D17
L2D24          RTS
SUB2D25        STX    $50
               STY    $51
               JSR    SUB2CE8
               LDA    ($50)
               CMP    #$08
               BCC    L2D34
               LDA    #$07
L2D34          TAY
L2D35          LDA    ($50),Y
               STA    ($52),Y
               DEY
               BPL    L2D35
               LDA    ($52)
               CMP    #$08
               BCC    L2D46
               LDA    #$07
               STA    ($52)
L2D46          RTS
SUB2D47        PHX
               LDX    #$1A
               LDY    #$34
               JSR    SUB2CFD
               BEQ    L2D55
               PLX
               LDA    #$01
               RTS
L2D55          PLX
               LDA    #$00
               RTS
SUB2D59        LDA    D2F2A
               BNE    L2D60
               CLC
               RTS
L2D60          LDX    #$EB
               LDY    #$2D
               JSR    SUB2DC8
               BCS    L2D7C
               JSR    SUB2E32
               JSR    SUB3116
               LDA    #$06
               JSR    SUB2E59
               JSR    SUB2E70
               JSR    SUB3129
               BRA    L2D96
L2D7C          LDX    #$EF
               LDY    #$2D
               JSR    SUB2DC8
               BCS    L2D9A
               JSR    SUB2E15
               JSR    SUB3116
               LDA    #$07
               JSR    SUB2E59
               JSR    SUB2E79
               JSR    SUB3129
L2D96          LDA    #$00
               SEC
               RTS
L2D9A          LDX    #$F3
               LDY    #$2D
               JSR    SUB2DC8
               BCS    L2DA7
               LDA    #$02
               SEC
               RTS
L2DA7          LDA    D3479
               BEQ    L2DB9
               LDX    #$F7
               LDY    #$2D
               JSR    SUB2DC8
               BCS    L2DB9
               LDA    #$03
               SEC
               RTS
L2DB9          LDX    #$FB
               LDY    #$2D
               JSR    SUB2DC8
               BCS    L2DC6
               LDA    #$01
               SEC
               RTS
L2DC6          CLC
               RTS
SUB2DC8        STX    $EC
               STY    $ED
               LDY    #$00
               LDA    D36F3
               CMP    ($EC),Y
               BCC    L2DE9
               INY
               CMP    ($EC),Y
               BCS    L2DE9
               LDA    D36F4
               INY
               CMP    ($EC),Y
               BCC    L2DE9
               INY
               CMP    ($EC),Y
               BCS    L2DE9
               CLC
               RTS
L2DE9          SEC
               RTS
               HEX    1B1F252C2C30252C0307222F3F46222F
               HEX    202B222F
SUB2DFF        TYA
               ASL
               TAX
               LDA    D3471,X
               ORA    D3472,X
               RTS
L2E09          JSR    SUB2E4F
               LDY    D2F29
               JSR    SUB2DFF
               BEQ    SUB2E15
               RTS
SUB2E15        JSR    SUB2E4F
               LDA    #$04
               STA    D2F27
L2E1D          LDA    D2F29
               INC
               AND    #$03
               STA    D2F29
               TAY
               JSR    SUB2DFF
               BNE    L2E31
               DEC    D2F27
               BNE    L2E1D
L2E31          RTS
SUB2E32        JSR    SUB2E4F
               LDA    #$04
               STA    D2F27
L2E3A          LDA    D2F29
               DEC
               AND    #$03
               STA    D2F29
               TAY
               JSR    SUB2DFF
               BNE    L2E4E
               DEC    D2F27
               BNE    L2E3A
L2E4E          RTS
SUB2E4F        LDA    D2F29
               CLC
               ADC    #$02
               STA    D2F28
               RTS
SUB2E59        STA    D5B54
               JSR    SUB51E5
               LDA    #$32
               JSR    WAIT
               LDA    D2F28
               STA    D5B54
               JSR    SUB51E5
               JMP    L2EB1
SUB2E70        LDA    #$06
               LDX    #$6E
               LDY    #$55
               JMP    SUB2ED3
SUB2E79        LDA    #$07
               LDX    #$7F
               LDY    #$55
               JMP    SUB2ED3
SUB2E82        LDA    #$01
               STA    D2F2A
               JSR    SUB2E70
               JSR    SUB2E79
               STZ    D2F2D
               LDA    D3479
               BEQ    L2EA3
               LDA    #$08
               LDX    #$92
               LDY    #$52
               JSR    SUB2ED3
               LDA    #$01
               STA    D2F2D
L2EA3          LDA    #$09
               LDX    #$56
               LDY    #$52
               JSR    SUB2ED3
               LDA    #$01
               STA    D2F2C
L2EB1          LDY    D2F29
               JSR    SUB2DFF
               BEQ    L2ECA
               LDY    D2F29
               LDA    D2ECB,Y
               LDX    D2ECF,Y
               PHA
               LDA    #$52
               TAY
               PLA
               JMP    SUB2ED3
L2ECA          RTS
D2ECB          HEX    02030405
D2ECF          HEX    74747573
SUB2ED3        STA    D5B54
               STX    D5B55
               STY    D5B56
               JMP    SUB50BB
SUB2EDF        LDA    D2F2C
               BEQ    L2F20
               LDY    D2F29
               JSR    SUB2DFF
               BEQ    L2EF8
               LDA    D2F29
               CLC
               ADC    #$02
               STA    D5B54
               JSR    SUB51E5
L2EF8          LDA    #$09
               STA    D5B54
               JSR    SUB51E5
               LDA    D2F2D
               BEQ    L2F0D
               LDA    #$08
               STA    D5B54
               JSR    SUB51E5
L2F0D          LDA    #$07
               STA    D5B54
               JSR    SUB51E5
               LDA    #$06
               STA    D5B54
               JSR    SUB51E5
               STZ    D2F2D
L2F20          STZ    D2F2A
               STZ    D2F2C
               RTS
D2F27          HEX    00
D2F28          HEX    00
D2F29          HEX    00
D2F2A          HEX    00
D2F2B          HEX    00
D2F2C          HEX    00
D2F2D          HEX    00
SUB2F2E        LDA    #$00
               STA    D36F6
               LDA    D36FD
               STA    D36EF
               LDA    D36FE
               STA    D36F1
               JSR    SUB3019
               BCS    L2FA4
               LDA    $FBB3
               CMP    #$06
               BNE    L2FA4
               LDA    $FBC0
               BNE    L2F55
               LDA    #$01
               STA    D36F7
L2F55          PHA
               LDX    #$19
               JSR    SUB2FF7
               BCS    L2FA4
               LDX    #$15
               JSR    SUB2FF7
               LDA    #$00
               STA    $0578
               LDA    #$00
               STA    $0478
               LDA    #$01
               LDX    #$17
               JSR    SUB2FF7
               LDA    #$00
               LDX    #$17
               JSR    SUB2FF7
               LDA    D36F7
               BNE    L2FAA
               LDA    #$5F
               STA    $04F8
               LDA    #$02
               STA    $05F8
               LDA    #$00
               LDX    #$17
               JSR    SUB2FF7
               LDA    #$00
               STA    $04F8
               LDA    #$03
               STA    $05F8
               LDA    #$01
               LDX    #$17
               JSR    SUB2FF7
               JMP    L2FCC
L2FA4          LDA    #$00
               STA    D36EE
               RTS
L2FAA          LDA    #$4A
               STA    $04F8
               LDA    #$00
               STA    $05F8
               LDA    #$00
               LDX    #$17
               JSR    SUB2FF7
               LDA    #$2A
               STA    $04F8
               LDA    #$00
               STA    $05F8
               LDA    #$01
               LDX    #$17
               JSR    SUB2FF7
L2FCC          LDA    #$01
               LDX    #$12
               JSR    SUB2FF7
               LDA    #$01
               STA    D36EE
               PLA
               RTS
SUB2FDA        LDA    D36EE
               BNE    L2FE0
               RTS
L2FE0          LDA    $00
               LDX    #$12
               JSR    SUB2FF7
               LDA    #$00
               STA    D36EE
               LDA    #$00
               LDX    #$12
               JSR    SUB2FF7
               JSR    SUB3116
               RTS
SUB2FF7        PHP
               SEI
               STX    D2FFC+1
D2FFC          LDX    $C400
               STX    D3007+1
               LDX    D3007+2
D3005          LDY    #$40
D3007          JSR    $C400
               LDA    #$00
               ROL
               PLP
               LSR
               RTS
SUB3010        LDX    #$00
               LDA    $0778,X
               STX    D36FA
               RTS
SUB3019        PHA
               TXA
               PHA
               LDA    #$00
               STA    SUB3010+1
               STA    $02FF
               LDX    #$C7
L3026          STX    D3030+2
               LDY    #$04
L302B          TXA
               PHA
               LDX    D3196,Y
D3030          LDA    $C700,X
               STA    D3065
               PLA
               TAX
               LDA    D3065
               CMP    D319B,Y
               BNE    L305C
               DEY
               BPL    L302B
               STX    D2FFC+2
               STX    D3007+2
               TXA
               AND    #$07
               STA    SUB3010+1
               ASL
               ASL
               ASL
               ASL
               STA    D3005+1
               INC    $02FF
               JMP    L3061
L305C          DEX
               CPX    #$C0
               BNE    L3026
L3061          PLA
               TAX
               PLA
               RTS
D3065          HEX    00
SUB3066        LDA    $02FF
               BEQ    L30D9
               LDA    D36F7
               BEQ    L3075
               LDA    $02FE
               BNE    L30D9
L3075          PHP
               SEI
               LDX    #$14
               JSR    SUB2FF7
               PLP
               JSR    SUB3010
               STA    D36F5
               LDA    D36F7
               BNE    L30CD
               LDA    $0578,X
               STA    D36F0
               LDA    $0478,X
               STA    D36EF
               LDA    $05F8,X
               STA    D36F2
               LDA    $04F8,X
               STA    D36F1
               LSR    D36F0
               ROR    D36EF
               LSR    D36F0
               ROR    D36EF
               LSR    D36F0
               ROR    D36EF
               LSR    D36F2
               ROR    D36F1
               LSR    D36F2
               ROR    D36F1
               LSR    D36F2
               ROR    D36F1
               LSR    D36F2
               ROR    D36F1
               JMP    L30D9
L30CD          LDA    $0478,X
               STA    D36EF
               LDA    $04F8,X
               STA    D36F1
L30D9          JSR    SUB3287
               LDA    $02FE
               BEQ    L30E4
               JSR    SUB31A0
L30E4          LDA    D36FD
               CMP    D36EF
               BNE    L30F4
               LDA    D36FE
               CMP    D36F1
               BEQ    L30FA
L30F4          JSR    SUB3116
               JSR    SUB3129
L30FA          LDA    D36F5
               AND    #$80
               BNE    L3104
               JMP    SUB3066
L3104          LDA    #$01
               STA    D36FC
               LDA    D36EF
               STA    D36F3
               LDA    D36F1
               STA    D36F4
               RTS
SUB3116        LDA    #$01
               STA    D5B54
               JSR    SUB51E5
               LDA    D36FD
               STA    $E0
               LDA    D36FE
               STA    $E1
               RTS
SUB3129        LDA    D36EF
               STA    D36FD
               LDA    D36F1
               STA    D36FE
               CMP    #$22
               BCC    L3149
               LDA    D2F2B
               BEQ    L3151
               LDA    D2F2A
               BNE    L3151
               JSR    SUB2E82
               JMP    L3151
L3149          LDA    D2F2A
               BEQ    L3151
               JSR    SUB2EDF
L3151          LDA    #$01
               STA    D5B54
               CLC
               LDA    #$50
               ADC    D36EF
               STA    D5B55
               CLC
               LDA    #$30
               ADC    D36F1
               STA    D5B56
               JSR    SUB50BB
               RTS
SUB316C        LDA    #$01
               STA    $E3
               LDA    D36EF
               CLC
               ADC    #$03
               STA    $E0
               LDA    D36F1
               STA    $E1
               JSR    SUB62BE
               RTS
SUB3181        LDA    #$00
               STA    $E3
               LDA    D36FD
               CLC
               ADC    #$03
               STA    $E0
               LDA    D36FE
               STA    $E1
               JSR    SUB62BE
               RTS
D3196          HEX    05070B0CFB
D319B          HEX    38180120D6
SUB31A0        LDA    #$00
               STA    D36FF
               LDA    #$28
               JSR    WAIT
               JSR    SUB31D7
               LDA    PB0
               BPL    L31B7
               LDA    #$80
               STA    D36F5
L31B7          LDA    PB1
               BPL    L31C1
               LDA    #$80
               STA    D36F5
L31C1          LDA    #$28
               JSR    WAIT
               JSR    SUB3204
               LDA    D36FF
               BEQ    L31D6
               LDA    $02FF
               BEQ    L31D6
               JSR    SUB3231
L31D6          RTS
SUB31D7        LDX    #$01
               PHP
               SEI
               JSR    PREAD
               PLP
               CPY    #$32
               BCC    L31F6
               CPY    #$C8
               BCS    L31E8
               RTS
L31E8          LDA    D36F1
               CMP    #$2F
               BCS    L3203
               INC    D36F1
               INC    D36FF
               RTS
L31F6          LDA    D36F1
               CMP    #$01
               BCC    L3203
               DEC    D36F1
               INC    D36FF
L3203          RTS
SUB3204        LDX    #$00
               PHP
               SEI
               JSR    PREAD
               PLP
               CPY    #$32
               BCC    L3223
               CPY    #$C8
               BCS    L3215
               RTS
L3215          LDA    D36EF
               CMP    #$4F
               BCS    L3230
               INC    D36EF
               INC    D36FF
               RTS
L3223          LDA    D36EF
               CMP    #$01
               BCC    L3230
               DEC    D36EF
               INC    D36FF
L3230          RTS
SUB3231        LDA    $02FF
               BNE    L3237
               RTS
L3237          LDX    D36FA
               LDA    D36F0
               STA    $0578,X
               LDA    D36EF
               STA    $0478,X
               LDA    D36F2
               STA    $05F8,X
               LDA    D36F1
               STA    $04F8,X
               LDA    D36F7
               BNE    L3281
               ASL    $0478,X
               ROL    $0578,X
               ASL    $0478,X
               ROL    $0578,X
               ASL    $0478,X
               ROL    $0578,X
               ASL    $04F8,X
               ROL    $05F8,X
               ASL    $04F8,X
               ROL    $05F8,X
               ASL    $04F8,X
               ROL    $05F8,X
               ASL    $04F8,X
               ROL    $05F8,X
L3281          LDX    #$16
               JSR    SUB2FF7
               RTS
SUB3287        LDA    KEYBD
               BMI    L328D
               RTS
L328D          BIT    STROBE
               CMP    #$8A
               BNE    L32A2
               LDA    D36F1
               CMP    #$2F
               BCC    L329C
               RTS
L329C          INC    D36F1
               JMP    SUB3231
L32A2          CMP    #$8B
               BNE    L32B4
               LDA    D36F1
               CMP    #$01
               BCS    L32AE
               RTS
L32AE          DEC    D36F1
               JMP    SUB3231
L32B4          CMP    #$88
               BNE    L32C6
               LDA    D36EF
               CMP    #$01
               BCS    L32C0
               RTS
L32C0          DEC    D36EF
               JMP    SUB3231
L32C6          CMP    #$95
               BNE    L32D8
               LDA    D36EF
               CMP    #$4F
               BCC    L32D2
               RTS
L32D2          INC    D36EF
               JMP    SUB3231
L32D8          CMP    #$A0
               BNE    L32E2
               LDA    #$80
               STA    D36F5
               RTS
L32E2          CMP    #$8D
               BNE    L32EC
               LDA    #$80
               STA    D36F5
               RTS
L32EC          AND    #$DF
               CMP    #$CD
               BEQ    L32F6
               CMP    #$D3
               BNE    L32F9
L32F6          JMP    SUB26BE
L32F9          CMP    #$D1
               BEQ    L3301
               CMP    #$91
               BNE    L330B
L3301          LDA    #$01
               STA    D36E9
               LDA    #$80
               STA    D36F5
L330B          RTS
               HEX    AD00C03021AD61C0301CAD62C03017AD
               HEX    FF02F0EC0878A21420F72F282010308D
               HEX    F5362980F0DA206868A96420A8FCA900
               HEX    8DF5362C10C0A9FF20A8FC600D494E46
               HEX    4F2F444C522E494E30310D494E464F2F
               HEX    444C522E494E30320D494E464F2F444C
               HEX    522E494E30330D494E464F2F444C522E
               HEX    494E30340D494E464F2F444C522E494E
               HEX    30350D494E464F2F444C522E494E3036
               HEX    0D494E464F2F444C522E494E30370D49
               HEX    4E464F2F444C522E494E30380D494E46
               HEX    4F2F444C522E494E30390D494E464F2F
               HEX    444C522E494E31310D494E464F2F444C
               HEX    522E494E31300B535052542F444C522E
               HEX    53500D535052542F444C522E53503130
               HEX    0D534F4E472F534F4E474E4F30310A52
               ASC    'OOMDATA/R'
               HEX    042E4441540131A0A0A0D7C9D4C3C8A0
               ASC    "TRIAL is powered by DOLORES V16"
               HEX    00A0C2F9A0B8ADC2C9D4ADD3C8C1C3CB
               HEX    A0B1B0AFB2B0B2B6A0ADA0B8E2E9F4F3
               ASC    "hack.org"
               HEX    0001
D346E          HEX    30
D346F          HEX    00
D3470          HEX    00
D3471          HEX    00
D3472          HEX    00000000000000
D3479          HEX    00
D347A          HEX    00
D347B          HEX    00
D347C          HEX    00
D347D          HEX    00
D347E          HEX    00
D347F          HEX    00
D3480          HEX    00
D3481          HEX    00
D3482          HEX    0000000000000000000000
D348D          HEX    0000000000000000000000
D3498          HEX    0000000000000000000000
D34A3          HEX    0000000000000000000000
D34AE          HEX    0000000000000000000000
D34B9          HEX    0000000000000000000000
D34C4          HEX    00
D34C5          HEX    00
D34C6          HEX    00
D34C7          HEX    00
D34C8          HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00
D34F9          HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    0000000000000000
D3651          HEX    00
D3652          HEX    00
D3653          HEX    00
D3654          HEX    00
D3655          HEX    00
D3656          HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000
D36D3          HEX    00
D36D4          HEX    00
D36D5          HEX    00
D36D6          HEX    00
D36D7          HEX    00
D36D8          HEX    00
D36D9          HEX    00
D36DA          HEX    00
D36DB          HEX    000000000000
D36E1          HEX    00
D36E2          HEX    00
D36E3          HEX    00
D36E4          HEX    00
D36E5          HEX    00
D36E6          HEX    00
D36E7          HEX    00
D36E8          HEX    00
D36E9          HEX    00
D36EA          HEX    00
D36EB          HEX    000000
D36EE          HEX    00
D36EF          HEX    27
D36F0          HEX    00
D36F1          HEX    17
D36F2          HEX    00
D36F3          HEX    FF
D36F4          HEX    00
D36F5          HEX    00
D36F6          HEX    00
D36F7          HEX    000000
D36FA          HEX    0000
D36FC          HEX    00
D36FD          HEX    00
D36FE          HEX    00
D36FF          HEX    00
D3700          HEX    00
D3701          HEX    00
D3702          HEX    00
D3703          HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
D3723          HEX    00100000000000000000000000000000
               HEX    00000000000000000000000000000000
D3743          HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
D3763          HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
D3783          HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
D37A3          HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
D37C3          HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
D37E3          HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
D3803          HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
D3823          HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
D3843          HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
D3863          HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
D3883          HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
D38A3          HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
D38C3          HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
D38E3          HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
D3F03          HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
D3F83          HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000
SUB5000        LDA    D5B56
               LSR
               STA    D5B48
               LDA    D5B55
               LSR
               STA    D5B47
               LDA    D5B55
               AND    #$01
               BNE    L5041
               LDA    D5B56
               AND    #$01
               BEQ    L501F
               JMP    L5070
L501F          LDX    D5B54
               LDA    D3703,X
               STA    $FA
               LDA    D3723,X
               STA    $FB
               JSR    SUB53BD
               LDX    D5B54
               LDA    D3863,X
               STA    D5B49
               LDA    D3883,X
               STA    D5B4A
               JMP    L50BA
L5041          LDA    D5B56
               AND    #$01
               BEQ    L504B
               JMP    L5095
L504B          LDX    D5B54
               LDA    D3743,X
               STA    $FA
               LDA    D3763,X
               STA    $FB
               JSR    SUB53BD
               LDX    D5B54
               LDA    D3863,X
               STA    D5B49
               INC    D5B49
               LDA    D3883,X
               STA    D5B4A
               JMP    L50BA
L5070          LDX    D5B54
               LDA    D3783,X
               STA    $FA
               LDA    D37A3,X
               STA    $FB
               JSR    SUB53BD
               LDX    D5B54
               LDA    D3863,X
               STA    D5B49
               LDA    D3883,X
               STA    D5B4A
               INC    D5B4A
               JMP    L50BA
L5095          LDX    D5B54
               LDA    D37C3,X
               STA    $FA
               LDA    D37E3,X
               STA    $FB
               JSR    SUB53BD
               LDX    D5B54
               LDA    D3863,X
               STA    D5B49
               INC    D5B49
               LDA    D3883,X
               STA    D5B4A
               INC    D5B4A
L50BA          RTS
SUB50BB        LDX    D5B54
               LDA    D5B55
               STA    D38C3,X
               LDA    D5B56
               STA    D38E3,X
               LDA    D5B54
               JSR    SUB5411
               JSR    SUB5000
               LDX    D5B54
               LDA    D3863,X
               STA    D5B49
               LDA    D3883,X
               STA    D5B4A
               LDA    D38A3,X
               STA    D5B4C
               JSR    SUB5F38
               LDA    D5B48
               STA    $08
               LDA    #$FF
               STA    $0A
L50F4          LDX    $08
               CPX    #$18
               BCS    L5109
               LDA    D5B49
               CLC
               ADC    #$01
               LSR
               CLC
               ADC    $0A
               STA    $0A
               JMP    L51D3
L5109          CPX    #$30
               BCC    L5110
               JMP    L51D3
L5110          TXA
               SEC
               SBC    #$18
               STA    $EB
               TAX
               LDA    D5A78,X
               STA    $06
D511C          LDA    D5A90,X
               STA    $07
               LDA    D5B47
               STA    $09
L5126          INC    $0A
               LDA    $09
               CMP    #$28
               BCS    L5131
               JMP    L51C2
L5131          CMP    #$50
               BCC    L5138
               JMP    L51C2
L5138          SEC
               SBC    #$28
               STA    $EA
               TAY
               LDA    ($06),Y
               LDY    $0A
               STA    RAMWRTON
D5145          STA    D93C1,Y
               STA    RAMWRTOFF
               STA    RAMRDON
D514E          LDA    D93C1,Y
               STA    RAMRDOFF
               TAX
               LDY    $EA
               LDA    D5800,X
               BEQ    L5175
               AND    ($06),Y
               STA    $4B
               LDA    D5800,X
               EOR    #$FF
               LDX    $0A
               STA    RAMRDON
D516A          AND    D93C1,X
               STA    RAMRDOFF
               ORA    $4B
               JMP    L5178
L5175          TXA
               LDX    $0A
L5178          STA    ($06),Y
               STA    RAMRDON
               LDA    ($06),Y
               STA    RAMRDOFF
               STA    RAMWRTON
D5185          STA    D93C1,X
               STA    RAMWRTOFF
               STA    RAMRDON
D518E          LDA    D93C1,X
               STA    RAMRDOFF
               TAX
               LDA    D5900,X
               BEQ    L51B9
               STA    RAMRDON
               AND    ($06),Y
               STA    RAMRDOFF
               STA    $4B
               LDA    D5900,X
               EOR    #$FF
               LDX    $0A
               STA    RAMRDON
D51AE          AND    D93C1,X
               STA    RAMRDOFF
               ORA    $4B
               JMP    L51BA
L51B9          TXA
L51BA          STA    RAMWRTON
               STA    ($06),Y
               STA    RAMWRTOFF
L51C2          INC    $09
               LDA    $09
               SEC
               SBC    D5B47
               ASL
               CMP    D5B49
               BCS    L51D3
               JMP    L5126
L51D3          INC    $08
               LDA    $08
               SEC
               SBC    D5B48
               ASL
               CMP    D5B4A
               BCS    L51E4
               JMP    L50F4
L51E4          RTS
SUB51E5        LDA    D5B54
               LDX    D5B54
               LDA    D38C3,X
               STA    D5B55
               LSR
               STA    D5B47
               LDA    D38E3,X
               STA    D5B56
               LSR
               STA    D5B48
               JSR    SUB5411
               LDX    D5B54
               LDA    D3863,X
               STA    D5B49
               LDA    D3883,X
               STA    D5B4A
               LDA    D5B48
               STA    $08
               LDA    #$FF
               STA    $0A
L521A          LDX    $08
               CPX    #$18
               BCS    L522F
               LDA    D5B49
               CLC
               ADC    #$01
               LSR
               CLC
               ADC    $0A
               STA    $0A
               JMP    L5290
L522F          CPX    #$30
               BCC    L5236
               JMP    L5290
L5236          TXA
               SEC
               SBC    #$18
               STA    $EB
               TAX
               LDA    D5A78,X
               STA    $06
D5242          LDA    D5A90,X
               STA    $07
               LDA    D5B47
               STA    $09
L524C          INC    $0A
               LDY    $09
               CPY    #$28
               BCC    L5282
               CPY    #$50
               BCS    L5282
               TYA
               SEC
               SBC    #$28
               STA    $EA
               LDY    $0A
               STA    RAMRDON
D5263          LDA    D93C1,Y
               STA    RAMRDOFF
               LDY    $EA
               STA    ($06),Y
               LDY    $0A
               STA    RAMRDON
D5272          LDA    D93C1,Y
               STA    RAMRDOFF
               LDY    $EA
               STA    RAMWRTON
               STA    ($06),Y
               STA    RAMWRTOFF
L5282          INC    $09
               LDA    $09
               SEC
               SBC    D5B47
               ASL
               CMP    D5B49
               BCC    L524C
L5290          INC    $08
               LDA    $08
               SEC
               SBC    D5B48
               ASL
               CMP    D5B4A
               BCS    L52A1
               JMP    L521A
L52A1          STA    $C082
               RTS
SUB52A5        LDA    #$03
               STA    $E9
               JSR    SUB5EDA
               JSR    SUB5513
               LDX    D5B54
               LDA    D5B49
               STA    D3863,X
               LDA    D5B4A
               STA    D3883,X
               LDA    D5B4C
               STA    D38A3,X
               LDA    #$00
               STA    D54A1+1
               STA    D5496+1
               JSR    SUB5482
               LDX    D5B54
               LDA    D3703,X
               STA    $FA
               LDA    D3723,X
               STA    $FB
               JSR    SUB5381
               LDA    D5B49
               STA    D5505+1
               LDA    D5B4A
               STA    D550E+1
               JSR    SUB54C3
               LDX    #$01
               STX    D54A1+1
               DEX
               STX    D5496+1
               JSR    SUB5482
               LDX    D5B54
               LDA    D3743,X
               STA    $FA
               LDA    D3763,X
               STA    $FB
               JSR    SUB5381
               LDA    D5B49
               CLC
               ADC    #$01
               STA    D5505+1
               LDA    D5B4A
               STA    D550E+1
               JSR    SUB54C3
               LDX    #$01
               STX    D5496+1
               DEX
               STX    D54A1+1
               JSR    SUB5482
               LDX    D5B54
               LDA    D3783,X
               STA    $FA
               LDA    D37A3,X
               STA    $FB
               JSR    SUB5381
               LDA    D5B49
               STA    D5505+1
               LDA    D5B4A
               CLC
               ADC    #$01
               STA    D550E+1
               JSR    SUB54C3
               LDA    #$01
               STA    D54A1+1
               STA    D5496+1
               JSR    SUB5482
               LDX    D5B54
               LDA    D37C3,X
               STA    $FA
               LDA    D37E3,X
               STA    $FB
               JSR    SUB5381
               LDA    D5B49
               CLC
               ADC    #$01
               STA    D5505+1
               LDA    D5B4A
               CLC
               ADC    #$01
               STA    D550E+1
               JSR    SUB54C3
               LDA    #$01
               STA    $E9
               JMP    SUB5EDA
SUB5381        LDA    $FA
               STA    D54E5+1
               STA    RAMWRTON
               STA    D54E5+1
               STA    RAMWRTOFF
               LDA    $FB
               STA    D54E5+2
               STA    RAMWRTON
               STA    D54E5+2
               STA    RAMWRTOFF
               JSR    SUB5472
               LDA    $FA
               STA    D54FA+1
               STA    RAMWRTON
               STA    D54FA+1
               STA    RAMWRTOFF
               LDA    $FB
               STA    D54FA+2
               STA    RAMWRTON
               STA    D54FA+2
               STA    RAMWRTOFF
               RTS
SUB53BD        LDA    $FA
               STA    D516A+1
               STA    D514E+1
               STA    RAMWRTON
               STA    D516A+1
               STA    D514E+1
               STA    RAMWRTOFF
               LDA    $FB
               STA    D516A+2
               STA    D514E+2
               STA    RAMWRTON
               STA    D516A+2
               STA    D514E+2
               STA    RAMWRTOFF
               JSR    SUB5472
               LDA    $FA
               STA    D51AE+1
               STA    D518E+1
               STA    RAMWRTON
               STA    D51AE+1
               STA    D518E+1
               STA    RAMWRTOFF
               LDA    $FB
               STA    D51AE+2
               STA    D518E+2
               STA    RAMWRTON
               STA    D51AE+2
               STA    D518E+2
               STA    RAMWRTOFF
               RTS
SUB5411        LDX    D5B54
               LDA    D3803,X
               STA    $FA
               LDA    D3823,X
               STA    $FB
               LDA    $FA
               STA    D5145+1
               STA    D5263+1
               STA    RAMWRTON
               STA    D5145+1
               STA    D5263+1
               STA    RAMWRTOFF
               LDA    $FB
               STA    D5145+2
               STA    D5263+2
               STA    RAMWRTON
               STA    D5145+2
               STA    D5263+2
               STA    RAMWRTOFF
               JSR    SUB5472
               LDA    $FA
               STA    D5185+1
               STA    D5272+1
               STA    RAMWRTON
               STA    D5185+1
               STA    D5272+1
               STA    RAMWRTOFF
               LDA    $FB
               STA    D5185+2
               STA    D5272+2
               STA    RAMWRTON
               STA    D5185+2
               STA    D5272+2
               STA    RAMWRTOFF
               RTS
SUB5472        LDX    D5B54
               CLC
               LDA    $FA
               ADC    D3843,X
               STA    $FA
               BCC    L5481
               INC    $FB
L5481          RTS
SUB5482        LDX    D5B4C
               LDA    D5B18,X
               JSR    SUB60E7
               LDA    #$00
               STA    $0A
               STA    $09
               STA    $08
L5493          LDA    $08
               CLC
D5496          ADC    #$00
               STA    $E1
               LDA    #$00
               STA    $09
L549E          LDA    $09
               CLC
D54A1          ADC    #$00
               STA    $E0
               LDY    $0A
               LDA    ($FE),Y
               STA    $E3
               JSR    SUB62BE
               INC    $0A
               INC    $09
               LDA    $09
               CMP    D5B49
               BNE    L549E
               INC    $08
               LDA    $08
               CMP    D5B4A
               BNE    L5493
               RTS
SUB54C3        LDX    #$00
               STX    $08
               DEX
               STX    $0A
L54CA          LDX    $08
               LDA    D5A78,X
               STA    $06
D54D1          LDA    D5A90,X
               STA    $07
               LDA    #$00
               STA    $09
L54DA          INC    $0A
               LDY    $09
               LDA    ($06),Y
               LDY    $0A
               STA    RAMWRTON
D54E5          STA    D93C1,Y
               STA    RAMWRTOFF
               LDY    $09
               STA    RAMRDON
               LDA    ($06),Y
               STA    RAMRDOFF
               LDY    $0A
               STA    RAMWRTON
D54FA          STA    D93C1,Y
               STA    RAMWRTOFF
               INC    $09
               LDA    $09
               ASL
D5505          CMP    #$01
               BCC    L54DA
               INC    $08
               LDA    $08
               ASL
D550E          CMP    #$01
               BCC    L54CA
               RTS
SUB5513        LDA    D5B49
               STA    D3701
               AND    #$01
               BEQ    L5520
               INC    D3701
L5520          LDA    D5B4A
               CLC
               ADC    #$02
               STA    D3702
               LSR    D3702
               LDA    #$00
               STA    D3700
               CLC
               LDX    D3702
L5535          ADC    D3701
               DEX
               BNE    L5535
               STA    D3700
               LDX    D5B54
               LSR
               STA    D3843,X
               CLC
               LDA    D3703,X
               ADC    D3700
               STA    D3743,X
               LDA    D3723,X
               ADC    #$00
               STA    D3763,X
               CLC
               LDA    D3743,X
               ADC    D3700
               STA    D3783,X
               LDA    D3763,X
               ADC    #$00
               STA    D37A3,X
               CLC
               LDA    D3783,X
               ADC    D3700
               STA    D37C3,X
               LDA    D37A3,X
               ADC    #$00
               STA    D37E3,X
               CLC
               LDA    D37C3,X
               ADC    D3700
               STA    D3803,X
               LDA    D37E3,X
               ADC    #$00
               STA    D3823,X
               LDA    D5B54
               CMP    #$20
               BCC    L5595
               RTS
L5595          CLC
               LDA    D3803,X
               ADC    D3700
               INX
               STA    D3703,X
               DEX
               LDA    D3823,X
               ADC    #$00
               INX
               STA    D3723,X
               RTS
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    0000000000
D5600          HEX    00080109020A030B040C050D060E070F
               HEX    80888189828A838B848C858D868E878F
               HEX    10181119121A131B141C151D161E171F
               HEX    90989199929A939B949C959D969E979F
               HEX    20282129222A232B242C252D262E272F
               HEX    A0A8A1A9A2AAA3ABA4ACA5ADA6AEA7AF
               HEX    30383139323A333B343C353D363E373F
               HEX    B0B8B1B9B2BAB3BBB4BCB5BDB6BEB7BF
               ASC    '@HAIBJCKDLEMFNGO'
               ASC    "@HAIBJCKDLEMFNGO"
               HEX    50585159525A535B545C555D565E575F
               HEX    D0D8D1D9D2DAD3DBD4DCD5DDD6DED7DF
               ASC    '`haibjckdlemfngo'
               ASC    "`haibjckdlemfngo"
               HEX    70787179727A737B747C757D767E777F
               HEX    F0F8F1F9F2FAF3FBF4FCF5FDF6FEF7FF
               HEX    00020406080A0C0E01030507090B0D0F
               HEX    20222426282A2C2E21232527292B2D2F
               ASC    '@BDFHJLNACEGIKMO`bdfhjlnacegikmo'
               HEX    80828486888A8C8E81838587898B8D8F
               HEX    A0A2A4A6A8AAACAEA1A3A5A7A9ABADAF
               ASC    "@BDFHJLNACEGIKMO`bdfhjlnacegikmo"
               HEX    10121416181A1C1E11131517191B1D1F
               HEX    30323436383A3C3E31333537393B3D3F
               HEX    50525456585A5C5E51535557595B5D5F
               HEX    70727476787A7C7E71737577797B7D7F
               HEX    90929496989A9C9E91939597999B9D9F
               HEX    B0B2B4B6B8BABCBEB1B3B5B7B9BBBDBF
               HEX    D0D2D4D6D8DADCDED1D3D5D7D9DBDDDF
               HEX    F0F2F4F6F8FAFCFEF1F3F5F7F9FBFDFF
D5800          HEX    FFF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
D5900          HEX    FFF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
SUB5A00        LDX    #$28
L5A02          DEX
               STA    $0650,X
               STA    $06D0,X
               STA    $0750,X
               STA    $07D0,X
               BNE    L5A02
               LDX    #$28
L5A13          DEX
               STA    RAMWRTON
               STA    $0650,X
               STA    $06D0,X
               STA    $0750,X
               STA    $07D0,X
               STA    RAMWRTOFF
               BNE    L5A13
               RTS
SUB5A29        LDX    #$28
L5A2B          DEX
               STA    $0A50,X
               STA    $0AD0,X
               STA    $0B50,X
               STA    $0BD0,X
               BNE    L5A2B
               LDX    #$28
L5A3C          DEX
               STA    RAMWRTON
               STA    $0A50,X
               STA    $0AD0,X
               STA    $0B50,X
               STA    $0BD0,X
               STA    RAMWRTOFF
               BNE    L5A3C
               RTS
               HEX    A200A9009D000C9D000D9D000E9D000F
               HEX    8D05C09D000C9D000D9D000E9D000F8D
               HEX    04C0E8D0DF60
D5A78          HEX    008000800080008028A828A828A828A8
               HEX    50D050D050D050D0
D5A90          HEX    04040505060607070404050506060707
               HEX    0404050506060707080809090A0A0B0B
               HEX    080809090A0A0B0B080809090A0A0B0B
               HEX    0C0C0D0D0E0E0F0F0C0C0D0D0E0E0F0F
               HEX    0C0C0D0D0E0E0F0F
D5AD8          HEX    181819191A1A1B1B181819191A1A1B1B
               HEX    181819191A1A1B1B
D5AF0          HEX    1C1C1D1D1E1E1F1F1C1C1D1D1E1E1F1F
               HEX    1C1C1D1D1E1E1F1F
D5B08          HEX    00102030405060708090A0B0C0D0E0F0
D5B18          HEX    00112233445566778899AABBCCDDEEFF
               HEX    00
D5B29          HEX    000000
D5B2C          HEX    00
D5B2D          HEX    00000000000000000000000000000000
               HEX    000000000000
D5B43          HEX    00
D5B44          HEX    00
D5B45          HEX    0001
D5B47          HEX    00
D5B48          HEX    00
D5B49          HEX    00
D5B4A          HEX    0000
D5B4C          HEX    0000000000000000
D5B54          HEX    00
D5B55          HEX    00
D5B56          HEX    0000000000
SUB5B5B        LDA    #$00
               STA    D5B2D
               STA    D5B2C
               STA    $3C
               LDA    #$50
               STA    $3D
               LDA    #$FF
               STA    $3E
               LDA    #$93
               STA    $3F
               LDA    #$00
               STA    $42
               LDA    #$50
               STA    $43
               SEC
               JMP    $C311
               HEX    60600878A200201EFB8C73038408ADEA
               HEX    36F00128600878A201201EFB8C740384
               HEX    09ADEA36F001286060CD19C010FACD19
               HEX    C030FB608D02C08D05C0A200BD00049D
               HEX    00A0BD00059D00A1BD00069D00A2BD00
               HEX    079D00A3E8D0E58D03C0A200BD00049D
               HEX    00A4BD00059D00A5BD00069D00A6BD00
               HEX    079D00A7E8D0E58D04C08D02C0608D03
               HEX    C08D04C0A200BD00A09D0004BD00A19D
               HEX    0005BD00A29D0006BD00A39D0007E8D0
               HEX    E58D05C0A200BD00A49D0004BD00A59D
               HEX    0005BD00A69D0006BD00A79D0007E8D0
               HEX    E58D04C08D02C0608D00C0A6E3BC185B
               HEX    AD295BC902F0109820CD5FAD435BC927
               HEX    F004984C745C6098205A60AD435BC927
               HEX    F004984CA15C60A228CA9D50069DD006
               HEX    9D50079DD007D0F1AABD0056A228CA8D
               HEX    05C09D50069DD0069D50079DD0078D04
               HEX    C0D0EB60A228CA9D500A9DD00A9D500B
               HEX    9DD00BD0F1AABD0056A228CA8D05C09D
               HEX    500A9DD00A9D500B9DD00B8D04C0D0EB
               HEX    60
L5CCE          STA    KEYBD
               LDA    D5B44
               CMP    D5B45
               BNE    L5CDA
               RTS
L5CDA          CMP    #$01
               BNE    L5D00
               LDX    #$04
               STX    D5E01+2
               STX    D5E1F+2
               LDX    #$05
               STX    D5E07+2
               STX    D5E25+2
               LDX    #$06
               STX    D5E0D+2
               STX    D5E2B+2
               LDX    #$07
               STX    D5E13+2
               STX    D5E31+2
               BNE    L5D4D
L5D00          CMP    #$02
               BNE    L5D26
               LDX    #$08
               STX    D5E01+2
               STX    D5E1F+2
               LDX    #$09
               STX    D5E07+2
               STX    D5E25+2
               LDX    #$0A
               STX    D5E0D+2
               STX    D5E2B+2
               LDX    #$0B
               STX    D5E13+2
               STX    D5E31+2
               BNE    L5D4D
L5D26          CMP    #$03
               BNE    L5D4C
               LDX    #$0C
               STX    D5E01+2
               STX    D5E1F+2
               LDX    #$0D
               STX    D5E07+2
               STX    D5E25+2
               LDX    #$0E
               STX    D5E0D+2
               STX    D5E2B+2
               LDX    #$0F
               STX    D5E13+2
               STX    D5E31+2
               BNE    L5D4D
L5D4C          RTS
L5D4D          LDA    D5B45
               CMP    #$01
               BNE    L5D76
               LDX    #$04
               STX    D5E04+2
               STX    D5E22+2
               LDX    #$05
               STX    D5E0A+2
               STX    D5E28+2
               LDX    #$06
               STX    D5E10+2
               STX    D5E2E+2
               LDX    #$07
               STX    D5E16+2
               STX    D5E34+2
               BNE    L5DC3
L5D76          CMP    #$02
               BNE    L5D9C
               LDX    #$08
               STX    D5E04+2
               STX    D5E22+2
               LDX    #$09
               STX    D5E0A+2
               STX    D5E28+2
               LDX    #$0A
               STX    D5E10+2
               STX    D5E2E+2
               LDX    #$0B
               STX    D5E16+2
               STX    D5E34+2
               BNE    L5DC3
L5D9C          CMP    #$03
               BNE    L5DC2
               LDX    #$0C
               STX    D5E04+2
               STX    D5E22+2
               LDX    #$0D
               STX    D5E0A+2
               STX    D5E28+2
               LDX    #$0E
               STX    D5E10+2
               STX    D5E2E+2
               LDX    #$0F
               STX    D5E16+2
               STX    D5E34+2
               BNE    L5DC3
L5DC2          RTS
L5DC3          JSR    SUB64E9
               STA    RAMWRTON
               LDA    D5E01+2
               STA    D5E01+2
               LDA    D5E04+2
               STA    D5E04+2
               LDA    D5E07+2
               STA    D5E07+2
               LDA    D5E0A+2
               STA    D5E0A+2
               LDA    D5E0D+2
               STA    D5E0D+2
               LDA    D5E10+2
               STA    D5E10+2
               LDA    D5E13+2
               STA    D5E13+2
               LDA    D5E16+2
               STA    D5E16+2
               LDX    #$00
L5DFB          STA    RAMRDON
               STA    RAMWRTON
D5E01          LDA    $0400,X
D5E04          STA    $1000,X
D5E07          LDA    $0500,X
D5E0A          STA    $1100,X
D5E0D          LDA    $0600,X
D5E10          STA    $1200,X
D5E13          LDA    $0700,X
D5E16          STA    $1300,X
               STA    RAMWRTOFF
               STA    RAMRDOFF
D5E1F          LDA    $0400,X
D5E22          STA    $0C00,X
D5E25          LDA    $0500,X
D5E28          STA    $0D00,X
D5E2B          LDA    $0600,X
D5E2E          STA    $0E00,X
D5E31          LDA    $0700,X
D5E34          STA    $0F00,X
               INX
               BNE    L5DFB
               JMP    SUB651F
               HEX    20E9648D03C08D05C0A9A0A2009D0004
               HEX    9D00059D00069D0007E8D0F18D04C08D
               HEX    02C0A2009D00049D00059D00069D0007
               HEX    E8D0F14C1F6520905EA21CA03420955E
               HEX    20905E20905EA245A03420955E20905E
               HEX    4C905EA98D4CEDFD8E9E5E8C9F5EA200
               HEX    BD0010F00620EDFDE8D0F560AD435BC9
               HEX    2FF00DAD52C0A92F8D435BA900852260
               HEX    AD53C0A9A020005A20295AA9278D435B
               HEX    A9508521A9148522A9144C5BFB
SUB5EDA        LDA    $E9
               CMP    #$02
               BCS    L5EF2
               LDA    #$01
               STA    D5B29
               LDA    #$5A
               STA    D5F37
               LDA    #$90
               STA    D5F36
               JMP    L5F17
L5EF2          CMP    #$03
               BEQ    L5F08
               LDA    #$02
               STA    D5B29
               LDA    #$5A
               STA    D5F37
               LDA    #$A8
               STA    D5F36
               JMP    L5F17
L5F08          LDA    #$03
               STA    D5B29
               LDA    #$5A
               STA    D5F37
               LDA    #$C0
               STA    D5F36
L5F17          LDA    D5F37
               STA    D62CB+2
               STA    D511C+2
               STA    D5242+2
               STA    D54D1+2
               LDA    D5F36
               STA    D62CB+1
               STA    D511C+1
               STA    D5242+1
               STA    D54D1+1
               RTS
D5F36          HEX    00
D5F37          HEX    00
SUB5F38        LDX    #$00
               LDA    #$00
L5F3C          STA    D5800,X
               STA    D5900,X
               INX
               BNE    L5F3C
               LDA    D5B4C
               CMP    #$10
               BNE    L5F4D
               RTS
L5F4D          LDA    D5B4C
               ASL
               ASL
               ASL
               ASL
               TAX
               LDY    #$10
L5F57          LDA    D5800,X
               ORA    #$F0
               STA    D5800,X
               INX
               DEY
               BNE    L5F57
               LDA    D5B4C
               TAX
               LDY    #$10
L5F69          LDA    D5800,X
               ORA    #$0F
               STA    D5800,X
               TXA
               CLC
               ADC    #$10
               TAX
               DEY
               BNE    L5F69
               LDX    D5B4C
               LDA    D5FAC,X
               ASL
               ASL
               ASL
               ASL
               TAX
               LDY    #$10
L5F86          LDA    D5900,X
               ORA    #$F0
               STA    D5900,X
               INX
               DEY
               BNE    L5F86
               LDX    D5B4C
               LDA    D5FAC,X
               TAX
               LDY    #$10
L5F9B          LDA    D5900,X
               ORA    #$0F
               STA    D5900,X
               TXA
               CLC
               ADC    #$10
               TAX
               DEY
               BNE    L5F9B
               RTS
D5FAC          HEX    00080109020A030B040C050D060E070F
               HEX    8D00C0A5E9C902F004AD54C060AD55C0
               HEX    60
SUB5FCD        LDX    #$28
L5FCF          DEX
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
               BNE    L5FCF
               TAX
               LDA    D5600,X
               LDX    #$28
L6014          DEX
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
               BNE    L6014
               RTS
SUB605A        LDX    #$28
L605C          DEX
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
               BNE    L605C
               TAX
               LDA    D5600,X
               LDX    #$28
L60A1          DEX
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
               BNE    L60A1
               RTS
SUB60E7        LDX    #$28
L60E9          DEX
               STA    $0C00,X
               STA    $0C80,X
               STA    $0D00,X
               STA    $0D80,X
               STA    $0E00,X
               STA    $0E80,X
               STA    $0F00,X
               STA    $0F80,X
               STA    $0C28,X
               STA    $0CA8,X
               STA    $0D28,X
               STA    $0DA8,X
               STA    $0E28,X
               STA    $0EA8,X
               STA    $0F28,X
               STA    $0FA8,X
               STA    $0C50,X
               STA    $0CD0,X
               STA    $0D50,X
               STA    $0DD0,X
               STA    $0E50,X
               STA    $0ED0,X
               STA    $0F50,X
               STA    $0FD0,X
               BNE    L60E9
               TAX
               LDA    D5600,X
               LDX    #$28
L613A          DEX
               STA    RAMWRTON
               STA    $0C00,X
               STA    $0C80,X
               STA    $0D00,X
               STA    $0D80,X
               STA    $0E00,X
               STA    $0E80,X
               STA    $0F00,X
               STA    $0F80,X
               STA    $0C28,X
               STA    $0CA8,X
               STA    $0D28,X
               STA    $0DA8,X
               STA    $0E28,X
               STA    $0EA8,X
               STA    $0F28,X
               STA    $0FA8,X
               STA    $0C50,X
               STA    $0CD0,X
               STA    $0D50,X
               STA    $0DD0,X
               STA    $0E50,X
               STA    $0ED0,X
               STA    $0F50,X
               STA    $0FD0,X
               STA    RAMWRTOFF
               BNE    L613A
               RTS
SUB618C        LDA    STROBE
               LDA    TXTCLR
               STA    SET80VID
               LDA    AN3OFF
               STA    MIXCLR
               STA    KEYBD
               LDA    LOWSCR
               LDA    #$00
               JSR    SUB5FCD
               JSR    SUB5A00
               JSR    SUB605A
               JSR    SUB5A29
               LDA    #$01
               STA    D5B29
               LDA    #$2F
               STA    D5B43
               STA    ALTZPOFF
               RTS
SUB61BD        LDA    STROBE
               STA    KEYBD
               STA    CLR80VID
               LDA    AN3ON
               LDA    TXTSET
               LDA    LOWSCR
               JSR    $F399
               JMP    HOME
               HEX    8D00C0A5E1A6E8C5E8900685E886E1B0
               HEX    00E6E8A5E185E120F861E6E1A5E1C5E8
               HEX    90F3608D00C0A5E0C5E79010F00BA6E7
               HEX    8D425B8E415B4C19624CBE628D415BA5
               HEX    E78D425B38ED415B1869018D2A5BEE42
               HEX    5BA5E14AAABD785A8506BD905A8507A5
               HEX    E12901F0034C5262A5E385E4AABD0056
               HEX    85E5A9F08D7B628D98624C6762A6E3BD
               HEX    085B85E4AABD005685E5A90F8D7B628D
               HEX    9862AD415BA82901D023984AA88D03C0
               HEX    B1068D02C029F005E58D05C091068D04
               HEX    C0EE415BAD415BCD425B90D660984AA8
               HEX    B10629F005E49106EE415BAD415BCD42
               HEX    5B90BF608D00C0A5E0EAC950900160A5
               HEX    E1CD435BF003900160
SUB62BE        LDA    $E3
               STA    $E4
               LDA    $E1
               LSR
               TAX
               LDA    D5A78,X
               STA    $06
D62CB          LDA    D5A90,X
               STA    $07
               LDX    $E3
               LDA    $E0
               TAY
               AND    #$01
               BNE    L6316
               TYA
               LSR
               TAY
               STA    RAMRDON
               LDA    ($06),Y
               STA    RAMRDOFF
               STA    $E5
               LDA    D5600,X
               STA    $E4
               LDA    $E1
               AND    #$01
               BEQ    L6303
               LDA    $E5
               AND    #$0F
               STA    $E5
               LDA    D5B08,X
               TAX
               LDA    D5600,X
               STA    $E4
               JMP    L6309
L6303          LDA    $E5
               AND    #$F0
               STA    $E5
L6309          LDA    $E4
               ORA    $E5
               STA    RAMWRTON
               STA    ($06),Y
               STA    RAMWRTOFF
               RTS
L6316          TYA
               LSR
               TAY
               LDA    ($06),Y
               STA    $E5
               LDA    $E1
               AND    #$01
               BEQ    L6331
               LDA    $E5
               AND    #$0F
               STA    $E5
               LDA    D5B08,X
               STA    $E4
               JMP    L6337
L6331          LDA    $E5
               AND    #$F0
               STA    $E5
L6337          LDA    $E4
               ORA    $E5
               STA    ($06),Y
               RTS
SUB633E        JSR    SUB64E9
               LDA    #$0B
               STA    $E1
               LDA    #$13
               STA    $E0
               LDA    #$15
               STA    $E7
L634D          LDA    $E0
               ASL
               CLC
               ADC    #$5A
               JSR    WAIT
               LDX    $E1
               JSR    SUB638A
               LDA    #$17
               SEC
               SBC    $E1
               STA    $E8
               LDX    $E8
               JSR    SUB638A
               JSR    SUB63BA
               DEC    $E0
               INC    $E7
               DEC    $E1
               LDA    $E1
               BPL    L634D
               INC    $E1
L6376          LDA    #$50
               JSR    WAIT
               JSR    SUB63BA
               DEC    $E0
               INC    $E7
               LDA    $E0
               BPL    L6376
               JSR    SUB651F
               RTS
SUB638A        LDA    D5A78,X
               STA    $EC
               STA    $EA
               STA    $FC
               LDA    D5A90,X
               STA    $ED
               LDA    D5AD8,X
               STA    $EB
               LDA    D5AF0,X
               STA    $FD
               LDY    $E0
L63A4          LDA    ($FC),Y
               STA    RAMWRTON
               STA    ($EC),Y
               STA    RAMWRTOFF
               LDA    ($EA),Y
               STA    ($EC),Y
               INY
               CPY    $E7
               BCC    L63A4
               BEQ    L63A4
               RTS
SUB63BA        LDX    $E1
L63BC          LDA    D5A78,X
               STA    $EC
               STA    $EA
               STA    $FC
               LDA    D5A90,X
               STA    $ED
               LDA    D5AD8,X
               STA    $EB
               LDA    D5AF0,X
               STA    $FD
               LDY    $E0
               LDA    ($FC),Y
               STA    RAMWRTON
               STA    ($EC),Y
               STA    RAMWRTOFF
               LDA    ($EA),Y
               STA    ($EC),Y
               LDY    $E7
               LDA    ($FC),Y
               STA    RAMWRTON
               STA    ($EC),Y
               STA    RAMWRTOFF
               LDA    ($EA),Y
               STA    ($EC),Y
               INX
               CPX    $E8
               BCC    L63BC
               BEQ    L63BC
               RTS
               HEX    A90085E1A90085E0A92785E7A91785E8
               HEX    A96420A8FC206464E6E0C6E7A5E0C908
               HEX    D0EEA96420A8FCA6E1204464A91738E5
               HEX    E185E8A6E8204464206464E6E0C6E7E6
               HEX    E1A5E1C90DD0DB60BD785A85ECBD905A
               HEX    85EDA4E0A9008D05C091EC8D04C091EC
               HEX    C8C4E790EFF0ED60A6E1BD785A85ECBD
               HEX    905A85EDA4E0A9008D05C091EC8D04C0
               HEX    91ECA4E78D05C091EC8D04C091ECE8E4
               HEX    E890D7F0D560
SUB6492        LDX    #$00
L6494          LDA    $1800,X
               STA    $0C00,X
               LDA    $1900,X
               STA    $0D00,X
               LDA    $1A00,X
               STA    $0E00,X
               LDA    $1B00,X
               STA    $0F00,X
               INX
               BNE    L6494
               STA    RAMWRTON
               LDX    #$00
L64B4          LDA    $1C00,X
               STA    $0C00,X
               LDA    $1D00,X
               STA    $0D00,X
               LDA    $1E00,X
               STA    $0E00,X
               LDA    $1F00,X
               STA    $0F00,X
               INX
               BNE    L64B4
               STA    RAMWRTOFF
               RTS
               HEX    A9FF20A8FCA9FF4CA8FC20D3644CD364
               HEX    20DD644CD364
SUB64E9        LDX    #$07
L64EB          LDA    $0478,X
               STA    D6555,X
               LDA    $04F8,X
               STA    D655D,X
               LDA    $0578,X
               STA    D6565,X
               LDA    $05F8,X
               STA    D656D,X
               LDA    $0678,X
               STA    D6575,X
               LDA    $06F8,X
               STA    D657D,X
               LDA    $0778,X
               STA    D6585,X
               LDA    $07F8,X
               STA    D658D,X
               DEX
               BPL    L64EB
               RTS
SUB651F        LDX    #$07
L6521          LDA    D6555,X
               STA    $0478,X
               LDA    D655D,X
               STA    $04F8,X
               LDA    D6565,X
               STA    $0578,X
               LDA    D656D,X
               STA    $05F8,X
               LDA    D6575,X
               STA    $0678,X
               LDA    D657D,X
               STA    $06F8,X
               LDA    D6585,X
               STA    $0778,X
               LDA    D658D,X
               STA    $07F8,X
               DEX
               BPL    L6521
               RTS
D6555          HEX    0000000000000000
D655D          HEX    0000000000000000
D6565          HEX    0000000000000000
D656D          HEX    0000000000000000
D6575          HEX    0000000000000000
D657D          HEX    0000000000000000
D6585          HEX    0000000000000000
D658D          HEX    0000000000000000ADEC360A9002491D
               HEX    8DEC36290F60ADED360A9002492E8DED
               HEX    36290360
SUB65B1        LDX    #$00
L65B3          LDA    $00,X
               STA    $1700,X
               INX
               BNE    L65B3
               RTS
SUB65BC        LDX    #$00
L65BE          LDA    $1700,X
               STA    $00,X
               INX
               BNE    L65BE
               RTS
SUB65C7        LDA    #$00
               STA    $08
L65CB          LDA    #$07
               STA    $0341
               ORA    #$C0
               STA    $09
               LDY    #$04
               LDX    #$02
L65D8          LDA    ($08),Y
               STA    $E0
               LDA    ($08),Y
               SEC
               SBC    $E0
               CMP    #$F8
               BEQ    L65ED
               CMP    #$F9
               BEQ    L65ED
               CMP    #$F7
               BNE    L65F5
L65ED          DEX
               BNE    L65D8
               INX
L65F1          STX    $0340
               RTS
L65F5          DEC    L65CB+1
               BNE    L65CB
               LDX    #$00
               BEQ    L65F1
SUB65FE        LDA    $09
               STA    D668C+2
               STA    D668F+2
               STA    D6692+2
               STA    D6695+2
               STA    D66BB+2
               STA    D66C0+2
               STA    D66C5+2
               STA    D66CA+2
               STA    D66E7+2
               STA    D66EC+2
               STA    D66EF+2
               STA    D66F4+2
               STA    D66F9+2
               STA    D6702+2
               STA    D6707+2
               STA    D670A+2
               STA    D670F+2
               STA    D6714+2
               STA    D669E+2
               STA    D66A3+2
               STA    D66A8+2
               STA    D66AB+2
               STA    D66B0+2
               STA    D66B5+2
               STA    D2703+2
               STA    D26FE+2
               STA    D2706+2
               STA    RAMWRTON
               STA    D9345
               STA    D9348
               STA    D934D
               STA    D9350
               STA    D9355
               STA    D9358
               STA    D935B
               STA    D935E
               STA    D9363
               STA    D9366
               STA    D9369
               STA    D936C
               STA    D930A
               STA    RAMWRTOFF
               STA    D930A
               STA    SUB66E2+2
               STA    SUB66FD+2
               STA    D9317
               LDA    #$FF
D668C          STA    $C402
D668F          STA    $C403
D6692          STA    $C482
D6695          STA    $C483
               JSR    SUB66B9
               SEI
               LDA    #$40
D669E          STA    $C40B
               LDA    #$7F
D66A3          STA    $C40E
               LDA    #$C0
D66A8          STA    $C40D
D66AB          STA    $C40E
               LDA    #$E7
D66B0          STA    $C404
               LDA    #$4F
D66B5          STA    $C405
               RTS
SUB66B9        LDA    #$00
D66BB          STA    $C400
               LDA    #$04
D66C0          STA    $C400
               LDA    #$00
D66C5          STA    $C480
               LDA    #$04
D66CA          STA    $C480
SUB66CD        LDY    #$0E
               LDX    #$00
L66D1          JSR    SUB66FD
               DEY
               BPL    L66D1
               LDY    #$0E
               LDX    #$00
L66DB          JSR    SUB66E2
               DEY
               BPL    L66DB
               RTS
SUB66E2        STY    $C401
               LDA    #$07
D66E7          STA    $C400
               LDA    #$04
D66EC          STA    $C400
D66EF          STX    $C401
               LDA    #$06
D66F4          STA    $C400
               LDA    #$04
D66F9          STA    $C400
               RTS
SUB66FD        STY    $C481
               LDA    #$07
D6702          STA    $C480
               LDA    #$04
D6707          STA    $C480
D670A          STX    $C481
               LDA    #$06
D670F          STA    $C480
               LDA    #$04
D6714          STA    $C480
               RTS
SUB6718        JSR    SUB6854
               LDA    D6863
               STA    D6867
               RTS
SUB6722        LDA    #$FF
               STA    $07
               LDA    #$00
               STA    $02FD
               LDA    $FBB3
               CMP    #$06
               BEQ    L673A
               STA    $0342
               LDA    #$DF
               STA    $07
               RTS
L673A          LDA    $FBC0
               BEQ    L6772
               SEC
               JSR    $FE1F
               BCS    L676C
               LDA    #$FF
               STA    $0342
               HEX    AFBD00E18DFD02AD36C0297F8D36C0AD
               HEX    34C029F08D34C0AD22C029F009F08D22
               HEX    C060
L676C          LDA    #$7F
               STA    $0342
               RTS
L6772          STA    $0342
               RTS
SUB6776        LDA    #$00
               BRA    L677C
               HEX    F005
L677C          INC
               HEX    EB3AEB1A8D480360
SUB6785        LDA    #$5A
               STA    AN1OFF
               STA    AN1OFF
               STA    AN1OFF
               STA    AN1OFF
               LDX    #$00
L6795          LDA    D679B,X
               INX
               BNE    L6795
D679B          LDA    AN2OFF
               EOR    #$FF
               STA    AN2OFF
               CMP    AN2OFF
               BNE    L67C2
               EOR    #$FF
               STA    AN2OFF
               CMP    AN2OFF
               BNE    L67C2
               LDA    #$00
               STA    AN1OFF
               LDA    #$A5
               STA    AN1OFF
               LDA    #$01
               STA    $0344
               RTS
L67C2          LDA    #$00
               STA    $0344
               RTS
SUB67C8        LDA    $0342
               LDX    #$00
               CMP    #$7F
               BEQ    L67D3
               BNE    L6804
L67D3          LDY    #$04
               LDA    #$6A
L67D7          STA    $C06A
               DEY
               BNE    L67D7
               LDA    #$00
               STA    $C06B
               LDY    $C06B
               CPY    #$80
               BNE    L6804
               LDA    $C06D
               STA    $034A
               LDA    #$80
               STA    $C06D
               LDA    #$09
               STA    $C06D
               LDA    #$A6
               STA    $C06A
               LDA    #$01
               STA    $0345
               RTS
L6804          TXA
               STA    $0345
               RTS
               HEX    AD83C0AD83C0AD00D0EE00D0CD00D0F0
               HEX    0BCE00D0A9018D46034C2A68A9008D46
               HEX    03AD81C060A90760
SUB6831        LDA    #$00
               STA    $02FE
               LDX    #$00
               JSR    PREAD
               CPY    #$FF
               BEQ    L6853
               CPY    #$00
               BEQ    L6853
               LDX    #$01
               JSR    PREAD
               CPY    #$FF
               BEQ    L6853
               CPY    #$00
               BEQ    L6853
               INC    $02FE
L6853          RTS
SUB6854        JSR    $BF00
               RTI
               HEX    626860
SUB685B        JSR    $BF00
               EOR    ($66,X)
               PLA
               RTS
               HEX    02
D6863          HEX    00009301
D6867          HEX    00A019A214CAD0FDAD30C088D0F560A0
               HEX    0AA23CCAD0FDAD30C088D0F560000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    000000000000000000D8488A48984808
               HEX    782C0D
D930A          HEX    C470082868A868AA6838602C04
D9317          HEX    C48D03C08D05C08D09C0AD0703F0034C
               HEX    7293207499A57CF0082083934C7293A9
               HEX    00AAB564E00DD004C9FFF02F8E01
D9345          HEX    C48E81
D9348          HEX    C4A0078C00
D934D          HEX    C48C80
D9350          HEX    C4A0048C00
D9355          HEX    C48C80
D9358          HEX    C48D01
D935B          HEX    C48D81
D935E          HEX    C4A9068D00
D9363          HEX    C48D80
D9366          HEX    C48C00
D9369          HEX    C48C80
D936C          HEX    C4E8E00E30C78D08C08D04C08D02C028
               HEX    68A868AA681860A200A9008D0703857C
               HEX    857D8D19998D79998D75999564E8E016
               HEX    D0F9A2009580E8E078D0F9608D03C08D
               HEX    05C08D09C0208393205E948D08C08D04
               HEX    C08D02C060
D93C1          HEX    A2FF9AA97AA295A080203895B0032000
               HEX    8078AD7995F0098D71952000BF417095
               HEX    A980A295A020203895B0034C002020DD
               HEX    FB2000BF657295008D61958E62958C69
               HEX    952000BFC86095B016AD65958D67958D
               HEX    6F952000BFCA66952000BFCC6E951860
               HEX    03000000080004000000007400000100
               HEX    010004000000000000
D943A          HEX    00054F5554524F055749544348
