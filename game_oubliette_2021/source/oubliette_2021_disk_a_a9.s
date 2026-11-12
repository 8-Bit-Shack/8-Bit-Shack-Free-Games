************************************************************
* oubliette_2021 - A9 (disassembly)
*
* Disassembled from the original binary (3120 bytes, $89C1-$95F0).
* Reconstructed source: labels are generated, comments are minimal.
* Bytes the disassembler could not prove to be code are emitted as HEX/ASC data.
* Original program by its authors; see ../README.txt for attribution and terms.
* Entry point(s): $89C1, $8DDB, $8DEE, $8DFE, $8EA3, $8EDF, $8F75, $904F, $927C, $934C, $95D8 (NMOS 6502 opcodes only).
************************************************************

               ORG    $89C1

SPKR           EQU    $C030

START          SEC
L89C2          PHA
L89C3          SBC    #$01
               BNE    L89C3
               PLA
               SBC    #$01
               BNE    L89C2
               RTS
               HEX    FF00000604
L89D2          HEX    0420D08A0420508B0420D08B0420508C
               HEX    0420D08C0420508D0420D08D00000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    0000000000000000000000000000807F
               HEX    0700C0000400E07C0700A00208009001
               HEX    1000C8012000C8002000C8182000C864
               HEX    3F00C8042400F0082400C0102400E011
               HEX    24009022640088242401B87C7F3F8802
               HEX    0820B8020820C40C0E2092710920A602
               HEX    0820A37F3F20A1014020A1030021B301
               HEX    4020AC7F3F20C00E1F10800939108009
               HEX    4908C0781107A0082100E00F3F008070
               HEX    7F008010000180701F03800820028004
               HEX    4004800240098002000980020C09807E
               HEX    1309801210098012080F801204018012
               HEX    440380132204C0121208FE7F1F0E8208
               HEX    200A8208200E82381812824827268208
               HEX    2032827E7F4482014044C20060448201
               HEX    4064827E7F1F847C1801844E48008849
               HEX    4800F0440F0180420802807E78038040
               HEX    240080403F008060600080181F018004
               HEX    0001C0030001C000330280414902C038
               HEX    12018009490080094000C0204C01A042
               HEX    1001C071730080090001C0042001C044
               HEX    1001804911018012110180111101801E
               HEX    12018024120180484900800449008004
               HEX    1C018022240280222402802224028011
               HEX    24028011240280112402807F7F03FF7F
               HEX    7F7F8100004081000040810000708100
               HEX    00708100007081000070810000708100
               HEX    00708100007081000070810000708100
               HEX    00708100007081000070810000708100
               HEX    00708100007081000070810000708100
               HEX    00708100007081000070810000708100
               HEX    00708100007081000070810000708100
               HEX    00708100004081000040FF7F7F7F8000
               HEX    00008000000080000000800000008000
               HEX    0000800000008000000080000000C07F
               HEX    7F01C0014001C0014001C0194C01C019
               HEX    4C01C0014001C0014001C0194C01C019
               HEX    4C01C0014001C0014001C0194C01C019
               HEX    4C01C0014001C0014001C07F7F018000
               HEX    00008000000080000000800000008000
               HEX    0000800000008000000080000000FF7F
               HEX    7F7F8100004081000040F97F7F4F9900
               HEX    004C8900004889000048C97F1F48C903
               HEX    1C4889020448897E0748890000708900
               HEX    00408900007089000048890000488900
               HEX    0048890000488900007089000040C97F
               HEX    0040B9000140B9000170E9640048891F
               HEX    00488900004889000048890000708900
               HEX    0040F97F7F1F83000060FF7F7F7FFFFF
               HEX    0000FFFF0000FFFF00
L8DDB          LDX    $AA6A
               STX    $0255
               LDA    $0478,X
               STA    $0256
               LDA    $04F8,X
               STA    $0257
               RTS
L8DEE          LDX    $0255
               LDA    $0256
               STA    $0478,X
               LDA    $0257
               STA    $04F8,X
               RTS
L8DFE          LDA    $06
               ASL
               ASL
               TAX
               LDY    #$00
L8E05          LDA    L89D2,X
               STA    |$00FA,Y
               INX
               INY
               CPY    #$04
               BCC    L8E05
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
L8E26          JSR    L8E4E
L8E29          LDY    $1E
               LDA    ($FC),Y
               LDY    $ED
               EOR    ($EB),Y
               STA    ($EB),Y
               INC    $1E
               INY
               STY    $ED
               CPY    $EE
               BNE    L8E29
               LDA    $07
               STA    $ED
               INC    $EF
               LDA    $EF
               CMP    $FE
               BNE    L8E26
               RTS
               HEX    0000000000
L8E4E          LDA    $EF
               LDY    #$00
               CMP    #$40
               BCC    L8E5E
               LDY    #$28
               CMP    #$80
               BCC    L8E5E
               LDY    #$50
L8E5E          AND    #$3F
               LSR
               LSR
               LSR
               TAX
               INX
               LDA    #$20
               STA    $EC
               TYA
L8E6A          DEX
               BEQ    L8E76
               CLC
               ADC    #$80
               BCC    L8E6A
               INC    $EC
               BNE    L8E6A
L8E76          STA    $EB
               LDA    $EF
               AND    #$07
               TAX
               INX
               LDA    $EC
               CLC
L8E81          DEX
               BEQ    L8E88
               ADC    #$04
               BNE    L8E81
L8E88          STA    $EC
               RTS
               HEX    00000000000000000000000000000000
               HEX    0000000000FFFF00
L8EA3          LDX    #$00
               STX    $8EC8
               LDY    #$08
               STY    $8EC9
               BNE    L8EC7
L8EAF          LDY    #$08
L8EB1          PHA
               LDA    #$04
               JSR    START
               PLA
               ASL
               NOP
               BCC    L8EC1
               STA    SPKR
               BCS    L8EC1
L8EC1          NOP
               NOP
               NOP
               DEY
               BNE    L8EB1
L8EC7          LDA    $0800,X
               INX
               BNE    L8EAF
               INC    $8EC9
               LDA    $8EC9
               CMP    #$96
               BNE    L8EAF
               RTS
               HEX    00010000FFFF00
L8EDF          LDY    #$00
L8EE1          JSR    L8F67
               PHA
               LSR
               LSR
               LSR
               LSR
               BEQ    L8EFC
               JSR    L8F42
               TAX
               JSR    L8F37
               LDA    $00
               CMP    $04
               LDA    $01
               SBC    $05
               BCS    L8F35
L8EFC          JSR    L8F67
               STA    $08
               JSR    L8F67
               STA    $09
               PLA
               AND    #$0F
               JSR    L8F42
               CLC
               ADC    #$04
               TAX
               BEQ    L8F16
               BCC    L8F16
               INC    $07
L8F16          LDA    $01
               PHA
               LDA    $00
               PHA
               SEC
               LDA    $02
               SBC    $08
               STA    $00
               LDA    $03
               SBC    $09
               STA    $01
               JSR    L8F37
               PLA
               STA    $00
               PLA
               STA    $01
               JMP    L8EE1
L8F35          PLA
               RTS
L8F37          JSR    L8F5B
               DEX
               BNE    L8F37
               DEC    $07
               BNE    L8F37
               RTS
L8F42          LDX    #$01
               STX    $07
               CMP    #$0F
               BNE    L8F5A
L8F4A          STA    $06
               JSR    L8F67
               TAX
               CLC
               ADC    $06
               BCC    L8F57
               INC    $07
L8F57          INX
               BEQ    L8F4A
L8F5A          RTS
L8F5B          JSR    L8F67
               STA    ($02),Y
               INC    $02
               BNE    L8F66
               INC    $03
L8F66          RTS
L8F67          LDA    ($00),Y
               INC    $00
               BNE    L8F6F
               INC    $01
L8F6F          RTS
               HEX    FFFF0000FF
L8F75          LDA    $FC
               STA    $FB
               LDX    $19
               LDA    L9175,X
               STA    $1B
               LDA    L918D,X
               STA    $1C
               LDY    $1A
               LDA    #$00
               STA    $1E
               LDA    #$40
               STA    $1F
               LDA    #$F7
               STA    $1D
               LDA    #$01
               STA    $06
L8F97          LDA    $06
               STA    $07
L8F9B          JSR    L90B5
               JSR    L90F5
               DEC    $07
               BNE    L8F9B
               LDA    $06
               STA    $07
L8FA9          JSR    L90B5
               JSR    L9115
               DEC    $07
               BNE    L8FA9
               INC    $06
               LDA    $06
               STA    $07
L8FB9          JSR    L90B5
               JSR    L9135
               DEC    $07
               BNE    L8FB9
               LDA    $06
               STA    $07
L8FC7          JSR    L90B5
               JSR    L9155
               DEC    $07
               BNE    L8FC7
               INC    $06
               LDA    $06
               CMP    $FB
               BCC    L8F97
               LDA    $FC
               CLC
               ROR
               SEC
               SBC    #$04
               STA    $FB
               LDX    $19
               LDA    L9175,X
               STA    $1B
               LDA    L918D,X
               STA    $1C
               LDY    $1A
               LDA    #$00
               STA    $1E
               LDA    #$40
               STA    $1F
               LDA    #$F7
               STA    $1D
               LDA    #$01
               STA    $06
L9000          LDA    $06
               STA    $07
L9004          JSR    L90D5
               JSR    L90F5
               JSR    L90F5
               DEC    $07
               BNE    L9004
               LDA    $06
               STA    $07
L9015          JSR    L90D5
               JSR    L9115
               JSR    L9115
               DEC    $07
               BNE    L9015
               INC    $06
               LDA    $06
               STA    $07
L9028          JSR    L90D5
               JSR    L9135
               JSR    L9135
               DEC    $07
               BNE    L9028
               LDA    $06
               STA    $07
L9039          JSR    L90D5
               JSR    L9155
               JSR    L9155
               DEC    $07
               BNE    L9039
               INC    $06
               LDA    $06
               CMP    $FB
               BCC    L9000
               RTS
L904F          LDA    $FC
               STA    $FB
               LDX    $19
               LDA    L9175,X
               STA    $1B
               LDA    L918D,X
               STA    $1C
               LDY    $1A
               LDA    #$00
               STA    $1E
               LDA    #$40
               STA    $1F
               LDA    #$F7
               STA    $1D
               LDA    #$01
               STA    $06
L9071          LDA    $06
               STA    $07
L9075          JSR    L90D5
               JSR    L90F5
               DEC    $07
               BNE    L9075
               LDA    $06
               STA    $07
L9083          JSR    L90D5
               JSR    L9115
               DEC    $07
               BNE    L9083
               INC    $06
               LDA    $06
               STA    $07
L9093          JSR    L90D5
               JSR    L9135
               DEC    $07
               BNE    L9093
               LDA    $06
               STA    $07
L90A1          JSR    L90D5
               JSR    L9155
               DEC    $07
               BNE    L90A1
               INC    $06
               LDA    $06
               CMP    $FB
               BCC    L9071
               RTS
               HEX    00
L90B5          LDA    $1D
               EOR    #$FF
               AND    ($1B),Y
               STX    $FE
               LDX    #$00
               STA    ($1E,X)
               LDX    $FE
               INC    $1E
               BNE    L90C9
               INC    $1F
L90C9          LDA    ($1B),Y
               AND    $1D
               STA    ($1B),Y
               RTS
               HEX    0000000000
L90D5          STX    $FE
               LDX    #$00
               LDA    ($1E,X)
               BEQ    L90E5
               LDA    $1D
               EOR    #$FF
               ORA    ($1B),Y
               BNE    L90E9
L90E5          LDA    $1D
               AND    ($1B),Y
L90E9          STA    ($1B),Y
               INC    $1E
               BNE    L90F1
               INC    $1F
L90F1          LDX    $FE
               RTS
               HEX    00
L90F5          LDA    $1D
               CMP    #$BF
               BNE    L9101
               INY
               LDA    #$FE
               STA    $1D
               RTS
L9101          SEC
               ROL    $1D
               RTS
               HEX    00000000000000000000000000000000
L9115          LDA    $1C
               CMP    #$24
               BCS    L912A
               DEX
               LDA    L9175,X
               STA    $1B
               LDA    L918D,X
               CLC
               ADC    #$1C
               STA    $1C
               RTS
L912A          SBC    #$04
               STA    $1C
               RTS
               HEX    000000000000
L9135          LDA    $1D
               CMP    #$FE
               BNE    L9141
               DEY
               LDA    #$BF
               STA    $1D
               RTS
L9141          SEC
               ROR    $1D
               RTS
               HEX    00000000000000000000000000000000
L9155          LDA    $1C
               CMP    #$3C
               BCC    L9167
               INX
               LDA    L9175,X
               STA    $1B
               LDA    L918D,X
               STA    $1C
               RTS
L9167          ADC    #$04
               STA    $1C
               RTS
               HEX    000000000000000000
L9175          HEX    008000800080008028A828A828A828A8
               HEX    50D050D050D050D0 ; PPPPPPPP
L918D          HEX    20202121222223232020212122222323 ;   !!""##  !!""##
               HEX    20202121222223230000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    0000000000000000FF0000FFFF0000
L927C          JSR    L95BA
               LDA    $D0
               BNE    L9284
               RTS
L9284          LDA    $D3
               STA    $932D
               STA    $9330
               STA    $9333
               STA    $9336
               STA    $933B
               STA    $9340
               STA    $9343
               STA    $9348
               STA    L94D4
               STA    $94EC
               STA    $94EF
               STA    $94F2
               STA    $94F5
               STA    L9508
               STA    L950B
               STA    L9510
               STA    L9513
               STA    L9518
               STA    L951B
               STA    L9521
               STA    L9527
               STA    L952C
               STA    L952F
               STA    L9534
               STA    L9537
               STA    $9544
               STA    $9547
               STA    $954A
               STA    $954D
               NOP
               NOP
               NOP
               JMP    L9304
               HEX    0000000000000000
L92EB          HEX    99
L92EC          HEX    6F
L92ED          HEX    09000E0000000D000500050000000000
               HEX    6D0000000F0000
L9304          LDX    #$21
               LDA    #$00
L9308          STA    $92E2,X
               DEX
               BNE    L9308
               LDA    #$00
               STA    L92EB
               LDA    #$6A
               STA    L92EC
               LDA    #$09
               STA    L92ED
               LDA    #$C2
               STA    $03FE
               LDA    #$94
               STA    $03FF
               LDX    #$FF
               LDY    #$07
               STX    $C403
               STX    $C483
               STY    $C402
               STY    $C482
               LDA    #$40
               STA    $C40B
               LDA    #$C0
               STA    $C40D
               STA    $C40E
               LDA    #$27
               STA    $C405
               JSR    L94D9
L934C          CLI
               RTS
               HEX    20AB948DEF92C9FFD0034CE092C9F8B0
               HEX    034C6B9338E9F88DEF924CCE93ADF392
               HEX    D0068D59954C7993CEF392ADF592D006
               HEX    8D6D954C8793CEF592ADF792D0068D5A
               HEX    954C9593CEF792ADF992D0068D6E954C
               HEX    A393CEF992ADE992D0068D5B954CB193
               HEX    CEE992ADFB92D0068D6F954CBF93CEFB
               HEX    92200495ADEF92F004CEEF92604C4E93
               HEX    20AB948DFD9220AB948DFF9220AB948D
               HEX    0193ADEF92C901D0034C0994C902D003
               HEX    4C2494C903D0034C3F94C904D0034C5A
               HEX    94C905D0034C75944C9094ADFD928D51
               HEX    95ADFF928D5295AD01938DF392ADED92
               HEX    8D59954C4E93ADFD928D6595ADFF928D
               HEX    6695AD01938DF592ADED928D6D954C4E
               HEX    93ADFD928D5395ADFF928D5495AD0193
               HEX    8DF792ADED928D5A954C4E93ADFD928D
               HEX    6795ADFF928D6895AD01938DF992ADED
               HEX    928D6E954C4E93ADFD928D5595ADFF92
               HEX    8D5695AD01938DE992ADED928D5B954C
               HEX    4E93ADFD928D6995ADFF928D6A95AD01
               HEX    938DFB92ADED928D6F954C4E93EEEB92
               HEX    D003EEEC92AEEB92ACEC9286D284D3A0
               HEX    004C0E01A5454898488A48206B9368AA
               HEX    68A8A97F8D0D
L94D4          HEX    C468400000
L94D9          LDX    #$02
               LDA    #$00
L94DD          STA    L9559,X
               STA    L956F,X
               DEX
               CPX    #$FF
               BNE    L94DD
               LDA    #$07
               STX    $C403
               STX    $C483
               STA    $C402
               STA    $C482
               RTS
               HEX    00000000000000000000203E95A0008C
               HEX    01
L9508          HEX    C48C81
L950B          HEX    C4A9078D00
L9510          HEX    C48D80
L9513          HEX    C4A9048D00
L9518          HEX    C48D80
L951B          HEX    C4B951958D01
L9521          HEX    C4B965958D81
L9527          HEX    C4A9068D00
L952C          HEX    C48D80
L952F          HEX    C4A9048D00
L9534          HEX    C48D80
L9537          HEX    C4C8C01090C960
L953E          LDA    #$00
               LDX    #$04
               STA    $C400
               STX    $C400
               STA    $C480
               STX    $C480
               RTS
               HEX    00006D0045018A020038
L9559          HEX    090900000000000000000000C1004501
               HEX    610000380900
L956F          HEX    00000000000000000000
L9579          LDA    #$00
               STA    $D0
               STA    $D2
               LDA    #$C1
               STA    $D3
               LDY    #$04
L9585          LDA    ($D2),Y
               PHA
               LDA    ($D2),Y
               STA    $D1
               PLA
               SEC
               SBC    $D1
               CMP    #$08
               BNE    L95AA
               LDA    #$80
               STA    $D2
               LDA    ($D2),Y
               PHA
               LDA    ($D2),Y
               STA    $D1
               PLA
               SEC
               SBC    $D1
               CMP    #$08
               BNE    L95AA
               INC    $D0
               RTS
L95AA          LDA    #$00
               STA    $D2
               INC    $D3
               LDA    $D3
               CMP    #$C8
               BNE    L9585
               RTS
               HEX    000000
L95BA          JSR    L9579
               LDX    #$00
L95BF          LDA    L95CC,X
               STA    $010E,X
               INX
               CPX    #$09
               BNE    L95BF
               RTS
               HEX    00
L95CC          HEX    8D02C0B1D28D02C060000000
L95D8          SEI
               JMP    L953E
               HEX    00A200863C8642CA863E384C11C35846
               HEX    0B0A081541
