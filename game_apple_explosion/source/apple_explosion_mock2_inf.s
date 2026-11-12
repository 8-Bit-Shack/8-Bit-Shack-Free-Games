************************************************************
* apple_explosion - MOCK2.INF (disassembly)
*
* Disassembled from the original binary (878 bytes, $927C-$95E9).
* Reconstructed source: labels are generated, comments are minimal.
* Bytes the disassembler could not prove to be code are emitted as HEX/ASC data.
* Original program by its authors; see ../README.txt for attribution and terms.
* Entry point(s): $927C, $934C, $95D8 (NMOS 6502 opcodes only).
************************************************************

               ORG    $927C

START          JSR    L95BA
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
L92EB          HEX    00
L92EC          HEX    00
L92ED          HEX    00000000000000000000000000000000
               HEX    00000000000000
L9304          LDX    #$21
               LDA    #$00
L9308          STA    $92E2,X
               DEX
               BNE    L9308
               LDA    #$97
               STA    L92EB
               LDA    #$3A
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
               STY    $C403
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
               HEX    00000000000000000038
L9559          HEX    00000000000000000000000000000000
               HEX    000000380000
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
               HEX    00A200863C8642CA863E384C11C3
