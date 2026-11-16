************************************************************
* pudding_xb - GAME (disassembly)
*
* Disassembled from the original binary (14368 bytes, $5000-$881F).
* Reconstructed source: labels are generated, comments are minimal.
* Bytes the disassembler could not prove to be code are emitted as HEX/ASC data.
* Original program by its authors; see ../README.txt for attribution and terms.
* Entry point(s): $5000 (65C02 opcodes).
************************************************************

               ORG    $5000

DOSWARM        EQU    $03D0
DOSRWTS        EQU    $03EA
KEY            EQU    $C000
COL80OFF       EQU    $C00C
COL80ON        EQU    $C00D
STROBE         EQU    $C010
SPKR           EQU    $C030
TXTCLR         EQU    $C050
TXTSET         EQU    $C051
MIXCLR         EQU    $C052
LOWSCR         EQU    $C054
HISCR          EQU    $C055
DHIRESON       EQU    $C05E
DHIRESOFF      EQU    $C05F
BUTN0          EQU    $C061
ROMIN          EQU    $C081
LCBANK2        EQU    $C083
SETTXT         EQU    $FB39
HOME           EQU    $FC58
WAIT           EQU    $FCA8
RDKEY          EQU    $FD0C
COUT           EQU    $FDED

START          LDA    #$00
               STA    $0349
               STA    $032C
               INC    $032C
               STA    $032E
               STA    $0332
               STA    $0335
               LDA    #$27
               STA    $14
               LDA    #$25
               STA    $032F
               LDA    #$11
               STA    $0330
               LDA    $0336
               STA    $0333
               LDA    #$20
               STA    $0334
               LDA    #$02
               STA    $0338
               STZ    $034A
               STZ    $034B
               LDA    #$C8
               STA    $033B
               STZ    $033C
               STZ    $033D
               STZ    $0341
               STZ    $0344
               STZ    $034C
               STZ    $0345
               STZ    $0347
               STZ    $0348
               LDA    #$50
               STA    $0342
               LDA    #$28
               STA    $0343
               JSR    L72CF
               JSR    L651E
               JSR    L59A8
               JSR    L7EDE
               JSR    L71D5
               LDA    #$01
               JSR    L738A
               JSR    L7210
               LDA    #$02
               JSR    L738A
               JSR    L7232
               LDA    #$03
               JSR    L738A
               JSR    L71F3
               LDA    #$04
               JSR    L738A
               JSR    L7252
               LDA    #$05
               JSR    L738A
               JSR    L7271
               LDA    #$06
               JSR    L738A
               JSR    L728E
               LDA    #$07
               JSR    L738A
               JSR    L72AD
               LDA    #$08
               JSR    L738A
               JSR    L69B4
               JSR    L64E0
               JSR    L7195
               LDA    #$01
               STA    $032D
               JSR    L56E5
               JSR    L7138
               JSR    L7157
               JSR    L7176
               JSR    L71B7
               JSR    L59F0
               JSR    L59FF
               JSR    L5A42
               JSR    L5A83
               LDA    #$FF
               STA    $C403
               STA    $C404
               JSR    L5803
               JSR    L6B4C
               JSR    L6A20
               JSR    RDKEY
               LDA    $0310
               BNE    L50F0
               JMP    L50FC
L50F0          JSR    L583A
               JSR    L593B
               JSR    L5B3A
               JSR    L5BBC
L50FC          LDA    #$00
               STA    $0325
               STA    $06
               CLI
               JSR    L552D
               JSR    L73DA
               LDA    #$02
               STA    $29
               JSR    L7BC2
               LDA    #$03
               STA    L73C7
               LDA    #$02
               STA    L73C8
               JSR    L7963
               LDX    #$0A
L5120          LDA    #$FF
               JSR    WAIT
               DEX
               BNE    L5120
               LDA    #$01
               STA    $29
               JSR    L7BC2
               LDA    $4E
               STA    $0308
               LDA    $4F
               STA    $0300
               LDA    STROBE
               LDA    #$02
               STA    $032D
               JSR    L56E5
               LDA    #$03
               STA    L73C7
               LDA    #$01
               STA    L73C8
               JSR    L7963
               DEC    $032D
               JSR    L56E5
               INC    $032D
               JSR    L6E83
               JSR    L6E36
               JSR    L6CC9
               JSR    L6C76
               JSR    L6F3E
               JSR    L6D38
               JSR    L69A9
               JSR    L69A9
               JSR    L6D7C
L5175          STZ    $07FC
               JSR    L6A6D
L517B          LDA    KEY
               BMI    L5183
               JMP    L51F7
L5183          BIT    STROBE
               CMP    #$D1
               BNE    L5192
               LDA    $0349
               BEQ    L51F7
               JMP    L53AC
L5192          CMP    #$D2
               BNE    L51BF
               LDA    $0348
               BNE    L51BF
               STZ    $034A
               STZ    $034B
               LDA    #$C8
               STA    $033B
               STZ    $033D
               STZ    $0348
               LDA    #$01
               STA    $29
               JSR    L791E
               JSR    L7963
               JSR    L6CC9
               JSR    L6C76
               JMP    L51F7
L51BF          CMP    #$D4
               BNE    L51F7
               LDA    $0349
               BEQ    L51F7
               LDA    $033D
               BNE    L51F7
               LDA    $0348
               BEQ    L51E4
               STZ    $0348
               LDA    #$02
               STA    L73C7
               LDA    #$01
               STA    L73C8
               JSR    L7963
               BRA    L51F7
L51E4          INC    $0348
               LDA    $032D
               PHA
               LDA    #$04
               STA    $032D
               JSR    L56E5
               PLA
               STA    $032D
L51F7          LDA    $033D
               CMP    #$02
               BNE    L5216
               JSR    L69A9
               JSR    L6D7C
               JSR    L6F3E
               JSR    L6D38
               JSR    L69A9
               JSR    L6D7C
               JSR    L6EE3
               JMP    L517B
L5216          LDA    $0348
               BEQ    L521E
               JMP    L517B
L521E          LDA    $0349
               BNE    L5226
               JMP    L52CC
L5226          LDA    #$02
               STA    $29
               JSR    L7BC2
               LDA    $0335
               BEQ    L524C
               LDA    #$04
               STA    L73D7
               LDA    $0328
               STA    L73D8
               LDA    $0329
               STA    L73D9
               JSR    L76EF
               STZ    $0335
               JMP    L5260
L524C          LDA    #$01
               STA    L73D7
               LDA    $0328
               STA    L73D8
               LDA    $0329
               STA    L73D9
               JSR    L76EF
L5260          LDA    $0332
               BEQ    L5282
               JSR    L6B5F
               LDA    #$02
               STA    L73D7
               LDA    L73D8
               SEC
               SBC    #$02
               STA    L73D8
               LDA    L73D9
               SEC
               SBC    #$02
               STA    L73D9
               JSR    L76EF
L5282          LDA    $0344
               BEQ    L52A5
               CMP    #$02
               BNE    L5291
               STZ    $0344
               STZ    $0332
L5291          LDA    $0342
               STA    L73D8
               LDA    $0343
               STA    L73D9
               LDA    #$08
               STA    L73D7
               JSR    L76EF
L52A5          LDA    $0333
               STA    L73D8
               LDA    $0334
               STA    L73D9
               LDA    $0341
               ASL
               ASL
               ASL
               TAX
               LDA    L736A,X
               STA    L73D7
               JSR    L76EF
               LDA    $0332
               BEQ    L52CC
               JSR    L564F
               STZ    $0332
L52CC          LDA    #$01
               STA    $0349
               LDA    $033D
               BEQ    L52DC
               JSR    L544E
               JMP    L517B
L52DC          JSR    L5669
               STZ    $07FC
               JSR    L6B11
               JSR    L5637
               LDA    $0333
               STA    L73D8
               LDA    $0334
               STA    L73D9
               LDA    $0341
               ASL
               ASL
               ASL
               TAX
               LDA    L736A,X
               STA    L73D7
               JSR    L75F7
               LDA    $0344
               BEQ    L530C
               JSR    L54D4
L530C          LDA    $032F
               CLC
               ADC    #$4F
               STA    L73D8
               STA    $0328
               LDA    $0330
               CLC
               ADC    #$30
               STA    L73D9
               STA    $0329
               JSR    L53CF
               LDA    $033B
               BEQ    L5341
               INC    $033C
               LDA    $033C
               CMP    #$0B
               BNE    L5346
               STZ    $033C
               DEC    $033B
               JSR    L6C76
               BRA    L5346
L5341          LDA    #$01
               STA    $033D
L5346          LDA    $033B
               AND    #$0F
               CMP    #$0F
               BNE    L5380
               LDA    $0344
               BNE    L5380
               JSR    L6987
               BEQ    L5380
               LDA    #$01
               STA    $0344
               STZ    $0345
               JSR    L6998
               LDA    $0308
               AND    #$1E
               CLC
               ADC    #$5A
               STA    $0342
               LDA    $0308
               AND    #$06
               CLC
               ADC    #$28
               STA    $0343
               JSR    L6987
               STA    $0347
L5380          LDA    #$01
               STA    $29
               JSR    L7BC2
               LDA    #$01
               STA    L73C7
               LDA    #$02
               STA    L73C8
               JSR    L7963
               LDA    $0344
               BEQ    L53A9
               INC    $0345
               LDA    $0345
               CMP    #$30
               BNE    L53A9
               STZ    $0345
               STZ    $0344
L53A9          JMP    L5175
L53AC          LDA    STROBE
               JSR    L7416
               JSR    L58D3
               JSR    L58DD
               JSR    L58BF
               JSR    L58C9
               SEI
               JSR    L6529
               JSR    L6A33
               JSR    L72EB
               STZ    $0802
               JMP    DOSWARM
               HEX    60
L53CF          LDA    BUTN0
               BPL    L5439
               INC    $0335
               JSR    L6B80
               LDA    $0344
               BEQ    L53E4
               JSR    L55CD
               BCS    L53FB
L53E4          JSR    L557D
               BCC    L5404
               JSR    L5617
               LDA    $033E
               BNE    L53F6
               JSR    L549D
               BRA    L53F9
L53F6          JSR    L54B8
L53F9          BRA    L5404
L53FB          JSR    L5617
               JSR    L548B
               INC    $0344
L5404          LDA    $034B
               BNE    L540E
               LDA    $034A
               BEQ    L5422
L540E          SEC
               LDA    $034A
               SBC    #$01
               STA    $034A
               LDA    $034B
               SBC    #$00
               STA    $034B
               JSR    L6CC9
L5422          LDA    $0328
               STA    L73D8
               LDA    $0329
               STA    L73D9
               LDA    #$04
               STA    L73D7
               JSR    L75F7
               JMP    L544D
L5439          LDA    $0328
               STA    L73D8
               LDA    $0329
               STA    L73D9
               LDA    #$01
               STA    L73D7
               JSR    L75F7
L544D          RTS
L544E          JSR    L7963
               LDA    #$25
               STA    $032F
               LDA    #$11
               STA    $0330
               LDA    #$02
               STA    $29
               JSR    L791E
               LDA    $034B
               CMP    $034D
               BCC    L5481
               BEQ    L5474
               STA    $034D
               LDA    $034A
               BRA    L547E
L5474          LDA    $034A
               CMP    $034C
               BEQ    L5481
               BCC    L5481
L547E          STA    $034C
L5481          JSR    L6EE3
               INC    $033D
               STZ    $033C
               RTS
L548B          LDA    $034A
               CLC
               ADC    #$15
               STA    $034A
               LDA    $034B
               ADC    #$00
               STA    $034B
               RTS
L549D          LDA    $0341
               ASL
               ASL
               ASL
               TAX
               INX
               LDA    L736A,X
               CLC
               ADC    $034A
               STA    $034A
               LDA    $034B
               ADC    #$00
               STA    $034B
               RTS
L54B8          LDA    $0341
               ASL
               ASL
               ASL
               TAX
               INX
               INX
               LDA    L736A,X
               CLC
               ADC    $034A
               STA    $034A
               LDA    $034B
               ADC    #$00
               STA    $034B
               RTS
L54D4          LDX    $0345
               LDA    $0347
               BNE    L54E5
               LDA    $0342
               SEC
               SBC    L730A,X
               BRA    L54EC
L54E5          LDA    $0342
               CLC
               ADC    L730A,X
L54EC          STA    $0342
               STA    L73D8
               LDA    $0343
               CLC
               ADC    L733A,X
               STA    L73D9
               JSR    L6987
               LDA    $0300
               CMP    #$20
               BCS    L5511
               LDA    L73D9
               CLC
               ADC    #$04
               STA    L73D9
               BRA    L551E
L5511          CMP    #$40
               BCS    L551E
               LDA    L73D9
               SEC
               SBC    #$04
               STA    L73D9
L551E          LDA    L73D9
               STA    $0343
               LDA    #$08
               STA    L73D7
               JSR    L75F7
               RTS
L552D          STZ    $033E
               JSR    L6987
               LDA    $0300
               CMP    #$32
               BCC    L552D
               CMP    #$B4
               BCS    L552D
               AND    #$FE
               STA    $0336
               LDA    $0341
               ASL
               ASL
               ASL
               CLC
               ADC    #$03
               TAX
               LDA    L736A,X
               STA    $0337
               LDA    $0336
               CMP    #$78
               BCC    L5563
               LDA    #$00
               SEC
               SBC    $0337
               STA    $0337
L5563          JSR    L6998
               BEQ    L5571
               INX
               LDA    L736A,X
               STA    $0338
               BRA    L557C
L5571          INX
               INX
               LDA    L736A,X
               STA    $0338
               INC    $033E
L557C          RTS
L557D          LDA    $0333
               CLC
               ADC    #$02
               STA    L55C7
               ADC    #$0C
               STA    L55C8
               LDA    $0334
               CLC
               ADC    #$01
               STA    L55C9
               ADC    #$0D
               STA    L55CA
               LDA    $0328
               ADC    #$05
               STA    L55CB
               LDA    $0329
               ADC    #$05
               STA    L55CC
               LDA    L55CB
               CMP    L55C7
               BCC    L55C5
               CMP    L55C8
               BCS    L55C5
               LDA    L55CC
               CMP    L55C9
               BCC    L55C5
               CMP    L55CA
               BCS    L55C5
               SEC
               RTS
L55C5          CLC
               RTS
L55C7          HEX    00
L55C8          HEX    00
L55C9          HEX    00
L55CA          HEX    00
L55CB          HEX    00
L55CC          HEX    00
L55CD          LDA    $0342
               CLC
               ADC    #$00
               STA    L55C7
               ADC    #$14
               STA    L55C8
               LDA    $0343
               CLC
               ADC    #$00
               STA    L55C9
               ADC    #$09
               STA    L55CA
               LDA    $0328
               ADC    #$05
               STA    L55CB
               LDA    $0329
               ADC    #$05
               STA    L55CC
               LDA    L55CB
               CMP    L55C7
               BCC    L5615
               CMP    L55C8
               BCS    L5615
               LDA    L55CC
               CMP    L55C9
               BCC    L5615
               CMP    L55CA
               BCS    L5615
               SEC
               RTS
L5615          CLC
               RTS
L5617          LDA    #$02
               STA    L73D7
               LDA    L73D8
               SEC
               SBC    #$02
               STA    L73D8
               LDA    L73D9
               SEC
               SBC    #$02
               STA    L73D9
               JSR    L75F7
               LDA    #$01
               STA    $0332
               RTS
L5637          LDA    $0333
               CLC
               ADC    $0337
               STA    $0333
               LDA    $0334
               CLC
               ADC    $0338
               STA    $0334
               CMP    #$60
               BCC    L5668
L564F          LDA    #$20
               STA    $0334
               JSR    L6998
               LDA    $0308
               AND    #$03
               STA    $0341
               JSR    L552D
               LDA    $0336
               STA    $0333
L5668          RTS
L5669          LDA    $032C
               BEQ    L56AC
               CMP    #$01
               BEQ    L56E3
               JSR    L6534
               INC    $0333
               INC    $0333
               INC    $0342
               INC    $0342
               DEC    $14
               LDA    $14
               CMP    #$FF
               BNE    L56AB
               LDA    #$27
               STA    $14
               LDA    $032D
               CMP    #$01
               BNE    L569C
               INC    $032D
               INC    $032D
               BRA    L56A8
L569C          CMP    #$02
               BNE    L56A5
               DEC    $032D
               BRA    L56A8
L56A5          DEC    $032D
L56A8          JSR    L56E5
L56AB          RTS
L56AC          INC    $14
               LDA    $14
               CMP    #$28
               BNE    L56D4
               STZ    $14
               LDA    $032D
               CMP    #$01
               BNE    L56C2
               INC    $032D
               BRA    L56D1
L56C2          CMP    #$02
               BNE    L56CB
               INC    $032D
               BRA    L56D1
L56CB          DEC    $032D
               DEC    $032D
L56D1          JSR    L56E5
L56D4          JSR    L6741
               DEC    $0333
               DEC    $0333
               DEC    $0342
               DEC    $0342
L56E3          RTS
               HEX    60
L56E5          LDA    $032D
               CMP    #$01
               BEQ    L56FF
               CMP    #$02
               BEQ    L5740
               CMP    #$03
               BNE    L56F7
               JMP    L5781
L56F7          CMP    #$04
               BNE    L56FE
               JMP    L57C2
L56FE          RTS
L56FF          LDX    #$00
L5701          LDA    $3000,X
               STA    $0C00,X
               LDA    $3100,X
               STA    $0D00,X
               LDA    $3200,X
               STA    $0E00,X
               LDA    $3300,X
               STA    $0F00,X
               INX
               BNE    L5701
               STA    $C005
               LDX    #$00
L5721          LDA    $3400,X
               STA    $0C00,X
               LDA    $3500,X
               STA    $0D00,X
               LDA    $3600,X
               STA    $0E00,X
               LDA    $3700,X
               STA    $0F00,X
               INX
               BNE    L5721
               STA    $C004
               RTS
L5740          LDX    #$00
L5742          LDA    $3800,X
               STA    $0C00,X
               LDA    $3900,X
               STA    $0D00,X
               LDA    $3A00,X
               STA    $0E00,X
               LDA    $3B00,X
               STA    $0F00,X
               INX
               BNE    L5742
               STA    $C005
               LDX    #$00
L5762          LDA    $3C00,X
               STA    $0C00,X
               LDA    $3D00,X
               STA    $0D00,X
               LDA    $3E00,X
               STA    $0E00,X
               LDA    $3F00,X
               STA    $0F00,X
               INX
               BNE    L5762
               STA    $C004
               RTS
L5781          LDX    #$00
L5783          LDA    $4000,X
               STA    $0C00,X
               LDA    $4100,X
               STA    $0D00,X
               LDA    $4200,X
               STA    $0E00,X
               LDA    $4300,X
               STA    $0F00,X
               INX
               BNE    L5783
               STA    $C005
               LDX    #$00
L57A3          LDA    $4400,X
               STA    $0C00,X
               LDA    $4500,X
               STA    $0D00,X
               LDA    $4600,X
               STA    $0E00,X
               LDA    $4700,X
               STA    $0F00,X
               INX
               BNE    L57A3
               STA    $C004
               RTS
L57C2          LDX    #$00
L57C4          LDA    $4800,X
               STA    $0400,X
               LDA    $4900,X
               STA    $0500,X
               LDA    $4A00,X
               STA    $0600,X
               LDA    $4B00,X
               STA    $0700,X
               INX
               BNE    L57C4
               STA    $C005
               LDX    #$00
L57E4          LDA    $4C00,X
               STA    $0400,X
               LDA    $4D00,X
               STA    $0500,X
               LDA    $4E00,X
               STA    $0600,X
               LDA    $4F00,X
               STA    $0700,X
               INX
               BNE    L57E4
               STA    $C004
               RTS
L5803          LDA    #$00
               STA    $08
L5807          LDA    #$07
               STA    $0391
               ORA    #$C0
               STA    $09
               LDY    #$04
               LDX    #$02
L5814          LDA    ($08),Y
               STA    $06
               LDA    ($08),Y
               SEC
               SBC    $06
               CMP    #$F8
               BEQ    L5829
               CMP    #$F9
               BEQ    L5829
               CMP    #$F7
               BNE    L5831
L5829          DEX
               BNE    L5814
               INX
L582D          STX    $0310
               RTS
L5831          DEC    $5808
               BNE    L5807
               LDX    #$00
               BEQ    L582D
L583A          LDA    $09
               STA    $58B5
               STA    $58B8
               STA    $58BB
               STA    $58BE
               STA    $58C3
               STA    $58C8
               STA    $58CD
               STA    $58D2
               STA    $590C
               STA    $5911
               STA    $5914
               STA    $5919
               STA    $591E
               STA    $5927
               STA    $592C
               STA    $592F
               STA    $5934
               STA    $5939
               STA    $58EC
               STA    $58F1
               STA    $58F6
               STA    $58F9
               STA    $58FE
               STA    $5903
               STA    L5B08
               STA    L5B0B
               STA    L5B10
               STA    L5B13
               STA    L5B18
               STA    L5B1B
               STA    L5B1E
               STA    L5B21
               STA    L5B26
               STA    L5B29
               STA    L5B2C
               STA    L5B2F
               STA    $5907
               STA    $5922
               STA    L5AE4
               LDA    #$FF
               STA    $C402
               STA    $C403
               STA    $C482
               STA    $C483
L58BF          LDA    #$00
               STA    $C400
               LDA    #$04
               STA    $C400
L58C9          LDA    #$00
               STA    $C480
               LDA    #$04
               STA    $C480
L58D3          LDY    #$0E
               LDX    #$00
L58D7          JSR    L5920
               DEY
               BPL    L58D7
L58DD          LDY    #$0E
               LDX    #$00
L58E1          JSR    L5905
               DEY
               BPL    L58E1
               SEI
               LDA    #$40
               STA    $C40B
               LDA    #$7F
               STA    $C40E
               LDA    #$C0
               STA    $C40D
               STA    $C40E
               LDA    #$E7
               STA    $C404
               LDA    #$4F
               STA    $C405
               RTS
L5905          STY    $C401
               LDA    #$07
               STA    $C400
               LDA    #$04
               STA    $C400
               STX    $C401
               LDA    #$06
               STA    $C400
               LDA    #$04
               STA    $C400
               RTS
L5920          STY    $C481
               LDA    #$07
               STA    $C480
               LDA    #$04
               STA    $C480
               STX    $C481
               LDA    #$06
               STA    $C480
               LDA    #$04
               STA    $C480
               RTS
L593B          LDA    $0392
               CMP    #$FF
               BEQ    L5970
               CMP    #$EA
               BEQ    L595F
               CMP    #$38
               BEQ    L595F
               LDA    #$DE
               STA    $03FE
               LDA    #$5A
               STA    $03FF
               LDA    LCBANK2
               LDA    LCBANK2
               LDA    #$DE
               LDA    #$5A
               RTS
L595F          LDA    LCBANK2
               LDA    LCBANK2
               LDA    #$DE
               STA    $FFFE
               LDA    #$5A
               STA    $FFFF
               RTS
L5970          LDA    #$C0
               STA    $03FE
               LDA    #$03
               STA    $03FF
               LDA    #$AD
               STA    $03C0
               LDA    #$83
               STA    $03C1
               LDA    #$C0
               STA    $03C2
               LDA    #$AD
               STA    $03C3
               LDA    #$83
               STA    $03C4
               LDA    #$C0
               STA    $03C5
               LDA    #$4C
               STA    $03C6
               LDA    #$DE
               STA    $03C7
               LDA    #$5A
               STA    $03C8
               RTS
L59A8          LDA    #$FF
               STA    $07
               LDA    $FBB3
               CMP    #$06
               BEQ    L59BB
               STA    $0392
               LDA    #$DF
               STA    $07
               RTS
L59BB          LDA    $FBC0
               BEQ    L59EC
               SEC
               JSR    $FE1F
               BCS    L59E6
               LDA    #$FF
               STA    $0392
               LDA    $C036
               AND    #$7F
               STA    $C036
               LDA    $C034
               AND    #$F0
               STA    $C034
               LDA    $C022
               AND    #$F0
               ORA    #$F0
               STA    $C022
               RTS
L59E6          LDA    #$7F
               STA    $0392
               RTS
L59EC          STA    $0392
               RTS
L59F0          LDA    #$00
               BRA    L59F6
               HEX    F005
L59F6          INC
               HEX    EB3AEB1A8D980360
L59FF          LDA    #$5A
               STA    $C05A
               STA    $C05A
               STA    $C05A
               STA    $C05A
               LDX    #$00
L5A0F          LDA    L5A15,X
               INX
               BNE    L5A0F
L5A15          LDA    $C05C
               EOR    #$FF
               STA    $C05C
               CMP    $C05C
               BNE    L5A3C
               EOR    #$FF
               STA    $C05C
               CMP    $C05C
               BNE    L5A3C
               LDA    #$00
               STA    $C05A
               LDA    #$A5
               STA    $C05A
               LDA    #$01
               STA    $0394
               RTS
L5A3C          LDA    #$00
               STA    $0394
               RTS
L5A42          LDA    $0392
               LDX    #$00
               CMP    #$7F
               BEQ    L5A4D
               BNE    L5A7E
L5A4D          LDY    #$04
               LDA    #$6A
L5A51          STA    $C06A
               DEY
               BNE    L5A51
               LDA    #$00
               STA    $C06B
               LDY    $C06B
               CPY    #$80
               BNE    L5A7E
               LDA    $C06D
               STA    $039A
               LDA    #$80
               STA    $C06D
               LDA    #$09
               STA    $C06D
               LDA    #$A6
               STA    $C06A
               LDA    #$01
               STA    $0395
               RTS
L5A7E          TXA
               STA    $0395
               RTS
L5A83          LDA    LCBANK2
               LDA    LCBANK2
               LDA    $D000
               INC    $D000
               CMP    $D000
               BEQ    L5A9F
               DEC    $D000
               LDA    #$01
               STA    $0396
               JMP    L5AA4
L5A9F          LDA    #$00
               STA    $0396
L5AA4          LDA    ROMIN
               RTS
               HEX    A90760A98D20EDFD60
L5AB1          STX    $5ABA
               STY    $5ABB
               LDX    #$00
L5AB9          LDA    $1000,X
               BEQ    L5ADD
               CMP    #$E1
               BCC    L5AC8
               CMP    #$FB
               BCS    L5AC8
               AND    $07
L5AC8          JSR    COUT
               LDA    $0325
               BEQ    L5ADA
               TXA
               PHA
               LDA    $0325
               JSR    WAIT
               PLA
               TAX
L5ADA          INX
               BNE    L5AB9
L5ADD          RTS
               HEX    0848DA5A2C04
L5AE4          HEX    C4A57BF0034C355B20D260A57CF00820
               HEX    3A5B4C355BA9 ; :[L5[)
L5AFA          HEX    00AAB564E00DD004C9FFF02F8E01
L5B08          HEX    C48E81
L5B0B          HEX    C4A0078C00
L5B10          HEX    C48C80
L5B13          HEX    C4A0048C00
L5B18          HEX    C48C80
L5B1B          HEX    C48D01
L5B1E          HEX    C48D81
L5B21          HEX    C4A9068D00
L5B26          HEX    C48D80
L5B29          HEX    C48C00
L5B2C          HEX    C48C80
L5B2F          HEX    C4E8E00E30C77AFA682840
L5B3A          LDX    #$00
               LDA    #$00
               STA    $7B
               STA    $7C
               STA    $7D
               STA    L6077
               STA    L60D7
               STA    L60D3
L5B4D          STA    $64,X
               INX
               CPX    #$16
               BNE    L5B4D
               LDX    #$00
L5B56          STA    $80,X
               INX
               CPX    #$78
               BNE    L5B56
               RTS
L5B5E          LDA    #$00
               JSR    L5B8F
               LDA    #$01
               STY    $7E
               ASL
               TAY
               LDA    $2069,Y
               STA    $79
               LDA    $206A,Y
               ADC    #$20
               STA    $7A
               LDY    #$00
               LDA    ($79),Y
               STA    $87,X
               INY
               LDA    ($79),Y
               STA    $88,X
               LDA    $79
               ADC    #$02
               STA    $85,X
               LDA    $7A
               ADC    #$00
               STA    $86,X
               LDY    $7E
               RTS
L5B8F          STY    $7E
               ASL
               TAY
               LDA    $20A9,Y
               STA    $77
               LDA    $20AA,Y
               ADC    #$20
               STA    $78
               LDA    #$00
               STA    $99,X
               TAY
               LDA    ($77),Y
               STA    $93,X
               INY
               LDA    ($77),Y
               STA    $94,X
               LDA    $77
               ADC    #$02
               STA    $91,X
               LDA    $78
               ADC    #$00
               STA    $92,X
               LDY    $7E
               RTS
L5BBC          LDA    #$00
               STA    $7C
               LDX    #$78
L5BC2          DEX
               STA    $80,X
               BNE    L5BC2
               STA    L61A2
               STA    L61A4
               STA    L61CC
               STA    L61D1
               STA    L61D8
               STA    L61DD
               STA    L6227
               STA    L622F
               STA    L61CE
               STA    L6208
               STA    L620A
               STA    L6215
               STA    L621E
               STA    L5DFB
               STA    L6077
               STA    L60D3
               STA    L60D7
               LDA    #$0A
               STA    $80
               STA    $A8
               STA    $D0
               LDX    #$00
               JSR    L5B5E
               LDX    #$28
               JSR    L5B5E
               LDX    #$50
               JSR    L5B5E
               LDA    $2064
               STA    L60E8
               LDA    $2066
               STA    L5AFA
               LDX    #$06
               LDA    $200D
               SEC
               SBC    #$30
               CMP    #$09
               BCS    L5C2A
               TAX
L5C2A          LDA    #$2C
               CPX    #$06
               BCC    L5C32
               ADC    #$1F
L5C32          STA    L5FA7
               CPX    #$05
               LDA    #$00
               STA    $5C5E
               LDY    #$11
               LDX    #$2A
               BCS    L5C46
               DEY
               TYA
               LDX    #$EA
L5C46          STY    $5C55
               STA    $5C57
               STX    L5C6E
               LDY    #$10
               LDX    #$10
L5C53          CLC
               LDA    #$D1
               ADC    #$D1
               STA    $5C57
               LDA    #$00
               ADC    #$D1
               STA    $5C5E
               LDA    #$00
               ADC    #$FF
               EOR    #$FF
               STA    $5C70
               PHA
L5C6C          PLA
               PHA
L5C6E          NOP
               LDA    #$D1
               ADC    #$00
               STA    L63E0,Y
               INY
               PLA
               ADC    $5C57
               PHA
               LDA    $5C70
               ADC    $5C5E
               STA    $5C70
               INX
               TXA
               AND    #$0F
               BNE    L5C6C
               PLA
               LDA    $5C57
               CMP    #$77
               BNE    L5C96
               INC    $5C57
L5C96          TXA
               BNE    L5C53
               RTS
               HEX    B583D005958B4C175EB586857AB58585
               HEX    79B5928578B5918577B59A0A0AA8B179
               HEX    8DAD5DC8B1798D685DC8B17975969589
               HEX    C8B1797597958A2C685D50069597B589
               HEX    959618B499B177758C1002A900C96090
               HEX    02A95F20346218B4819875898D025DB5
               HEX    8A75828D085D18A9D169D19589A9D169
               HEX    D1290F958AB5983054F052D698D04E18
               HEX    9875A09581A8B58275A19582B5A29598
               HEX    B5A3D039B5A1101898D5A5B582F5A650
               HEX    024980301C98D5A5D006B582D5A6F011
               HEX    B5A1301998D5A5B582F5A65002498030
               HEX    0CB5A4958CA900959895819582A9D129
               HEX    0F2CAD5D101DA8B59D38500CE90F5002
               HEX    4980100FF69DD00AE9F1500249803003
               HEX    D69D9818759D3007C9109005A90F2CA9
               HEX    008DA55DB5800A0A0A0A09D1A8B9E063
               HEX    958BA9D14AA8B00AB584F006B58B0910
               HEX    958BADAD5D0A0A0AA9202C685D08101E
               HEX    9809F0B003290F18759B8DDE5D28F002
               HEX    959B18A9D16DCE618DCE614CF45D9818
               HEX    759C8DA46128F002959CAD685D4A2948
               HEX    09
L5DFB          HEX    D18DFB5DF69AB59AD5889004B587959A
               HEX    F699B599D5949004B59395994EFB5DB5
               HEX    95F010D695D00CB58349019583A9CAB5
               HEX    9F959560D68E60A200203E5EA228203E
               HEX    5EA250A0008C2A5FB58EC902B0E6B58C
               HEX    8D7D5FB5828DAF5FB5818DAB5FB58D95
               HEX    8EB58F8575B5908576B1758D6F5E290F
               HEX    8D755EA9D129F0D00FA9D18D2A5FD023
               HEX    958ECEDE604C285FC910D01AAD755ED0
               HEX    049584F003203560C8B1754A20655BA9
               HEX    0095994C245FC940B00BAD6F5E69E08D
               HEX    A2614C245FD009AD755E208F5B4C245F
               HEX    C9B0B010AD6F5E69B0958C205A60A901
               HEX    9583D059D01DAD755EF00DE901D00FC8
               HEX    B175958D958EB04195849599F03B2035
               HEX    60B036C9C0D010AD755ED0079583205A
               HEX    60F02A9580D022C9F0F00DAD6F5E38E9
               HEX    D0F01A20655B9011A9009584AD755E20
               HEX    8F5BC8B1754A20655BC84C585EC8A9D1
               HEX    C901D01995A34A9595B175C895A29598
               HEX    B175C895A0B175C895A14C2660C902F0
               HEX    034CD15FA90095A39595B175C895A295
               HEX    98C8C8C8B17508100249FF95A188B175
               HEX    2818100349FF38690095A09002F6A1C8
               HEX    C8A9D1203462AD045D8D945FAD0A5D8D
               HEX    9B5FB58C20346238E9D195A5AD0A5DE9
               HEX    D195A6B58C95A4AD7D5F958C
L5FA7          HEX    4CB25FA9D19581A9D1958238B5A5F581
               HEX    B5A6F5821069B5A049FF18690195A0B5
               HEX    A149FF690095A14C2660C903D007B175
               HEX    C8959AD04AC904D007B175C89599D03F
               HEX    C905D016B175C8959E9595B175C8959F
               HEX    A900959895819582F0
L6000          HEX    25C908D017B175C88D15628D1E62B175
               HEX    C88D2762B175C88D2F62D00AC909D006
               HEX    B175C88DE8601898758F958FA9007590
               HEX    95908576608D0862A9788D0A62C8B175
               HEX    8DD161C8B1758DCC61A90195844A9599
               HEX    8D15628DD8618DDD6160A900959A959D
               HEX    959C959B959995989581958295969597
               HEX    959560857C60A0
L6077          HEX    D1B9C920C9FFF0F40AA818AD67208575
               HEX    AD682069208576B175858FC8B1756920
               HEX    8590C8B17585B7C8B175692085B8C8B1
               HEX    7585DFC8B175692085E0A9008DA261A9
               HEX    038DDE6060EE77608DD3608DD760ADD7
               HEX    60D00C207660A57CF00560A9
L60D3          HEX    D1F0EFA9 ; Qpo)
L60D7          HEX    D1D00720325EA9D1F0DBEED760ADD760
               HEX    49
L60E8          HEX    00D0138DD760EED360ADD3604940D006
               HEX    8DD360EE7760A2008EFB5D8ECE61209A
               HEX    5CA228209A5CA250209A5C38A5898564
               HEX    A58A8565A58990220A26650A26650A26
               HEX    651865898564A58A65656A66646A6664
               HEX    6A66646A6664290F856538A5B18566A5
               HEX    B28567A5B190220A26670A26670A2667
               HEX    1865B18566A5B265676A66666A66666A
               HEX    66666A6666290F856738A5D98568A5DA
               HEX    8569A5D990220A26690A26690A266918
               HEX    65D98568A5DA65696A66686A66686A66
               HEX    686A6668290F856918A9
L61A2          HEX    D169
L61A4          HEX    D1291F856A38900B0A0A0A656A6A6A6A
               HEX    6A291F856AADFB5D856BA58B856CA5B3
               HEX    856DA5DB856E18A9
L61CC          HEX    D169
L61CE          HEX    D1A8A9
L61D1          HEX    D16900AA189869
L61D8          HEX    D1856F8A69
L61DD          HEX    D18570389024A8A56F0A26700A26700A
               HEX    267018656F856F9865706A666F6A666F
               HEX    6A666F6A666F290F8570A9
L6208          HEX    D1C9
L620A          HEX    D18D0A62D002A9FF8571A9
L6215          HEX    D1F01BCE1562D016A9
L621E          HEX    D18D156218ADD86169
L6227          HEX    D18DD861ADDD6169
L622F          HEX    D18DDD6160847EA8AD6320C901D00FB9
               HEX    5C628D0A5DB9BC628D045DA47E60B91C
               HEX    638D0A5DB97C638D045DA47E600E0E0D
               HEX    0C0B0B0A090908080707070606050505
               HEX    04040404030303030302020202020202
               HEX    01010101010101010101010100000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000F81060
               HEX    80D82888F060E058E07C08B040EC9444
               HEX    F8B0702CFDBE845820F6CAA27C583816
               HEX    F8DFC2AC907B65513E2C1C0AFCEFE1D6
               HEX    C8BDB2A89F968E857E77706B645E5954
               HEX    4F4B47423F3B3835322F2C2A27252321 ; OKGB?;852/,*'%#!
               HEX    1F1D1C1A19171615131211100F0D0C0B
               HEX    0A0A0909080807070606060505050404
               HEX    04040303030303020202020202020101
               HEX    01010101010101010101000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    000000000000000000000000001055A4
               HEX    FC5FCA3DB83BC555EC882AD27E2FE59E
               HEX    5C1DE2AB764415E9BF98724F2E0FF1D5
               HEX    BBA28B74604C39281707F9EBDDD1C5BA
               HEX    B0A69D948C847C756F69635D58534E4A
               HEX    46423E3B3734312F2C29272523211F1D
               HEX    1C1A19171615141211100F0E0D000000
               HEX    00
L63E0          HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
L64E0          LDA    #$8D
               JSR    COUT
               JSR    L64FD
               STY    $C2
               CPY    $C1CF
               CPY    $A0
               HEX    D3CFCEC7ACC1A4B2B0B0B08D0060
L64FD          PLA
               STA    $02
               PLA
               STA    $03
               LDY    #$01
L6505          LDA    ($02),Y
               BEQ    L650F
               JSR    COUT
               INY
               BNE    L6505
L650F          CLC
               TYA
               ADC    $02
               STA    $02
               LDA    $03
               ADC    #$00
               PHA
               LDA    $02
               PHA
               RTS
L651E          LDX    #$00
L6520          LDA    $00,X
               STA    $1800,X
               INX
               BNE    L6520
               RTS
L6529          LDX    #$00
L652B          LDA    $1800,X
               STA    $00,X
               INX
               BNE    L652B
               RTS
L6534          LDX    #$09
               LDY    #$27
L6538          LDA    L8720,X
               STA    $6545
               LDA    L8100,X
               STA    $6546
               LDA    $0400,Y
               STA    L694C,X
               INX
               CPX    #$18
               BNE    L6538
               STA    $C005
               STA    $C003
               LDX    #$09
L6557          LDA    L8720,X
               STA    $6564
               LDA    L8100,X
               STA    $6565
               LDA    $0400,Y
               STA    L6964,X
               INX
               CPX    #$18
               BNE    L6557
               STA    $C002
               STA    $C004
               LDX    #$27
L6576          DEX
               LDA    $04A8,X
               STA    $04A9,X
               LDA    $0528,X
               STA    $0529,X
               LDA    $05A8,X
               STA    $05A9,X
               LDA    $0628,X
               STA    $0629,X
               LDA    $06A8,X
               STA    $06A9,X
               LDA    $0728,X
               STA    $0729,X
               LDA    $07A8,X
               STA    $07A9,X
               LDA    $0450,X
               STA    $0451,X
               LDA    $04D0,X
               STA    $04D1,X
               LDA    $0550,X
               STA    $0551,X
               LDA    $05D0,X
               STA    $05D1,X
               LDA    $0650,X
               STA    $0651,X
               LDA    $06D0,X
               STA    $06D1,X
               LDA    $0750,X
               STA    $0751,X
               LDA    $07D0,X
               STA    $07D1,X
               STA    $C005
               STA    $C003
               LDA    $04A8,X
               STA    $04A9,X
               LDA    $0528,X
               STA    $0529,X
               LDA    $05A8,X
               STA    $05A9,X
               LDA    $0628,X
               STA    $0629,X
               LDA    $06A8,X
               STA    $06A9,X
               LDA    $0728,X
               STA    $0729,X
               LDA    $07A8,X
               STA    $07A9,X
               LDA    $0450,X
               STA    $0451,X
               LDA    $04D0,X
               STA    $04D1,X
               LDA    $0550,X
               STA    $0551,X
               LDA    $05D0,X
               STA    $05D1,X
               LDA    $0650,X
               STA    $0651,X
               LDA    $06D0,X
               STA    $06D1,X
               LDA    $0750,X
               STA    $0751,X
               LDA    $07D0,X
               STA    $07D1,X
               STA    $C002
               STA    $C004
               CPX    #$00
               BEQ    L663E
               JMP    L6576
L663E          LDY    $14
               LDX    #$00
               LDA    $0CA8,Y
               STA    $04A8,X
               LDA    $0D28,Y
               STA    $0528,X
               LDA    $0DA8,Y
               STA    $05A8,X
               LDA    $0E28,Y
               STA    $0628,X
               LDA    $0EA8,Y
               STA    $06A8,X
               LDA    $0F28,Y
               STA    $0728,X
               LDA    $0FA8,Y
               STA    $07A8,X
               LDA    $0C50,Y
               STA    $0450,X
               LDA    $0CD0,Y
               STA    $04D0,X
               LDA    $0D50,Y
               STA    $0550,X
               LDA    $0DD0,Y
               STA    $05D0,X
               LDA    $0E50,Y
               STA    $0650,X
               LDA    $0ED0,Y
               STA    $06D0,X
               LDA    $0F50,Y
               STA    $0750,X
               LDA    $0FD0,Y
               STA    $07D0,X
               STA    $C005
               STA    $C003
               LDA    $0CA8,Y
               STA    $04A8,X
               LDA    $0D28,Y
               STA    $0528,X
               LDA    $0DA8,Y
               STA    $05A8,X
               LDA    $0E28,Y
               STA    $0628,X
               LDA    $0EA8,Y
               STA    $06A8,X
               LDA    $0F28,Y
               STA    $0728,X
               LDA    $0FA8,Y
               STA    $07A8,X
               LDA    $0C50,Y
               STA    $0450,X
               LDA    $0CD0,Y
               STA    $04D0,X
               LDA    $0D50,Y
               STA    $0550,X
               LDA    $0DD0,Y
               STA    $05D0,X
               LDA    $0E50,Y
               STA    $0650,X
               LDA    $0ED0,Y
               STA    $06D0,X
               LDA    $0F50,Y
               STA    $0750,X
               LDA    $0FD0,Y
               STA    $07D0,X
               STA    $C002
               STA    $C004
               LDX    #$09
L6704          LDA    L8720,X
               STA    $6714
               LDA    L8800,X
               STA    $6715
               LDA    L694C,X
               STA    $0C00,Y
               INX
               CPX    #$18
               BNE    L6704
               STA    $C005
               STA    $C003
               LDX    #$09
L6723          LDA    L8720,X
               STA    $6733
               LDA    L8800,X
               STA    $6734
               LDA    L6964,X
               STA    $0C00,Y
               INX
               CPX    #$18
               BNE    L6723
               STA    $C002
               STA    $C004
               RTS
L6741          LDX    #$09
L6743          LDA    L8720,X
               STA    $6750
               LDA    L8100,X
               STA    $6751
               LDA    $0400
               STA    L694C,X
               INX
               CPX    #$18
               BNE    L6743
               STA    $C005
               STA    $C003
               LDX    #$09
L6762          LDA    L8720,X
               STA    $676F
               LDA    L8100,X
               STA    $6770
               LDA    $0400
               STA    L6964,X
               INX
               CPX    #$18
               BNE    L6762
               STA    $C002
               STA    $C004
               LDX    #$00
L6781          INX
               LDA    $04A8,X
               STA    $04A7,X
               LDA    $0528,X
               STA    $0527,X
               LDA    $05A8,X
               STA    $05A7,X
               LDA    $0628,X
               STA    $0627,X
               LDA    $06A8,X
               STA    $06A7,X
               LDA    $0728,X
               STA    $0727,X
               LDA    $07A8,X
               STA    $07A7,X
               LDA    $0450,X
               STA    $044F,X
               LDA    $04D0,X
               STA    $04CF,X
               LDA    $0550,X
               STA    $054F,X
               LDA    $05D0,X
               STA    $05CF,X
               LDA    $0650,X
               STA    $064F,X
               LDA    $06D0,X
               STA    $06CF,X
               LDA    $0750,X
               STA    $074F,X
               LDA    $07D0,X
               STA    $07CF,X
               STA    $C005
               STA    $C003
               LDA    $04A8,X
               STA    $04A7,X
               LDA    $0528,X
               STA    $0527,X
               LDA    $05A8,X
               STA    $05A7,X
               LDA    $0628,X
               STA    $0627,X
               LDA    $06A8,X
               STA    $06A7,X
               LDA    $0728,X
               STA    $0727,X
               LDA    $07A8,X
               STA    $07A7,X
               LDA    $0450,X
               STA    $044F,X
               LDA    $04D0,X
               STA    $04CF,X
               LDA    $0550,X
               STA    $054F,X
               LDA    $05D0,X
               STA    $05CF,X
               LDA    $0650,X
               STA    $064F,X
               LDA    $06D0,X
               STA    $06CF,X
               LDA    $0750,X
               STA    $074F,X
               LDA    $07D0,X
               STA    $07CF,X
               STA    $C002
               STA    $C004
               CPX    #$27
               BEQ    L6849
               JMP    L6781
L6849          LDY    $14
               LDX    #$27
               LDA    $0CA8,Y
               STA    $04A8,X
               LDA    $0D28,Y
               STA    $0528,X
               LDA    $0DA8,Y
               STA    $05A8,X
               LDA    $0E28,Y
               STA    $0628,X
               LDA    $0EA8,Y
               STA    $06A8,X
               LDA    $0F28,Y
               STA    $0728,X
               LDA    $0FA8,Y
               STA    $07A8,X
               LDA    $0C50,Y
               STA    $0450,X
               LDA    $0CD0,Y
               STA    $04D0,X
               LDA    $0D50,Y
               STA    $0550,X
               LDA    $0DD0,Y
               STA    $05D0,X
               LDA    $0E50,Y
               STA    $0650,X
               LDA    $0ED0,Y
               STA    $06D0,X
               LDA    $0F50,Y
               STA    $0750,X
               LDA    $0FD0,Y
               STA    $07D0,X
               STA    $C005
               STA    $C003
               LDA    $0CA8,Y
               STA    $04A8,X
               LDA    $0D28,Y
               STA    $0528,X
               LDA    $0DA8,Y
               STA    $05A8,X
               LDA    $0E28,Y
               STA    $0628,X
               LDA    $0EA8,Y
               STA    $06A8,X
               LDA    $0F28,Y
               STA    $0728,X
               LDA    $0FA8,Y
               STA    $07A8,X
               LDA    $0C50,Y
               STA    $0450,X
               LDA    $0CD0,Y
               STA    $04D0,X
               LDA    $0D50,Y
               STA    $0550,X
               LDA    $0DD0,Y
               STA    $05D0,X
               LDA    $0E50,Y
               STA    $0650,X
               LDA    $0ED0,Y
               STA    $06D0,X
               LDA    $0F50,Y
               STA    $0750,X
               LDA    $0FD0,Y
               STA    $07D0,X
               STA    $C002
               STA    $C004
               LDX    #$09
L690F          LDA    L8720,X
               STA    $691F
               LDA    L8800,X
               STA    $6920
               LDA    L694C,X
               STA    $0C00,Y
               INX
               CPX    #$18
               BNE    L690F
               STA    $C005
               STA    $C003
               LDX    #$09
L692E          LDA    L8720,X
               STA    $693E
               LDA    L8800,X
               STA    $693F
               LDA    L6964,X
               STA    $0C00,Y
               INX
               CPX    #$18
               BNE    L692E
               STA    $C002
               STA    $C004
               RTS
L694C          HEX    00000000000000000000000000000000
               HEX    0000000000000000
L6964          HEX    00000000000000000000000000000000
               HEX    0000000000000000CD19C010FBCD19C0
               HEX    30FB60
L6987          LDA    $0300
               ASL
               BCC    L698F
               EOR    #$1D
L698F          BNE    L6992
               INC
L6992          STA    $0300
               AND    #$01
               RTS
L6998          LDA    $0308
               ASL
               BCC    L69A0
               EOR    #$3F
L69A0          BNE    L69A3
               INC
L69A3          STA    $0308
               AND    #$01
               RTS
L69A9          LDX    #$05
L69AB          LDA    #$FF
               JSR    WAIT
               DEX
               BNE    L69AB
               RTS
L69B4          JSR    SETTXT
               JSR    HOME
               LDA    #$0E
               STA    $24
               LDX    #$96
               LDY    #$6B
               JSR    L5AB1
               LDA    #$10
               STA    $24
               LDA    #$12
               STA    $25
               JSR    $FC22
               LDX    #$D8
               LDY    #$6B
               JSR    L5AB1
               LDA    #$06
               STA    $24
               LDA    #$14
               STA    $25
               JSR    $FC22
               LDX    #$F4
               LDY    #$6B
               JSR    L5AB1
               LDA    #$06
               STA    $24
               LDA    #$15
               STA    $25
               JSR    $FC22
               LDX    #$0A
               LDY    #$6C
               JSR    L5AB1
               LDA    #$06
               STA    $24
               LDA    #$16
               STA    $25
               JSR    $FC22
               LDX    #$E1
               LDY    #$6B
               JSR    L5AB1
               LDA    #$0B
               STA    $24
               LDA    #$0A
               STA    $25
               JSR    $FC22
               LDX    #$C3
               LDY    #$6B
               JSR    L5AB1
               RTS
L6A20          LDA    #$04
               STA    $24
               LDA    #$0A
               STA    $25
               JSR    $FC22
               LDX    #$A2
               LDY    #$6B
               JSR    L5AB1
               RTS
L6A33          JSR    SETTXT
               JSR    HOME
               LDA    #$0E
               STA    $24
               LDX    #$96
               LDY    #$6B
               JSR    L5AB1
               LDA    #$01
               STA    $24
               LDA    #$02
               STA    $25
               JSR    $FC22
               LDX    #$25
               LDY    #$6C
               JSR    L5AB1
               LDA    #$06
               STA    $24
               LDA    #$04
               STA    $25
               JSR    $FC22
               LDX    #$5A
               LDY    #$6C
               JSR    L5AB1
               LDA    #$06
               STA    $22
               RTS
L6A6D          LDX    #$00
               SEI
               JSR    $FB1E
               CLI
               CPY    #$64
               BCC    L6ACA
               CPY    #$9B
               BCS    L6A84
               LDA    #$01
               STA    $032C
               JMP    L6B10
L6A84          LDA    $032C
               CMP    #$02
               BNE    L6A91
               DEC    $032C
               JMP    L6B10
L6A91          LDA    $032F
               CMP    #$3D
               BCS    L6AAC
               INC    $032F
               INC    $032F
               INC    $032F
               INC    $032F
               INC    $032F
               INC    $032F
               BRA    L6B10
L6AAC          LDA    $032E
               BEQ    L6AC2
               LDA    $032D
               CMP    #$03
               BEQ    L6ABD
               INC    $032D
               BRA    L6AC2
L6ABD          LDA    #$01
               STA    $032D
L6AC2          STZ    $032C
               STZ    $032E
               BRA    L6B10
L6ACA          LDA    $032C
               BNE    L6AD5
               INC    $032C
               JMP    L6B10
L6AD5          LDA    $032F
               CMP    #$0A
               BCC    L6AF0
               DEC    $032F
               DEC    $032F
               DEC    $032F
               DEC    $032F
               DEC    $032F
               DEC    $032F
               BRA    L6B10
L6AF0          LDA    $032E
               CMP    #$02
               BEQ    L6B08
               LDA    $032D
               CMP    #$01
               BEQ    L6B03
               DEC    $032D
               BRA    L6B08
L6B03          LDA    #$03
               STA    $032D
L6B08          LDA    #$02
               STA    $032C
               STA    $032E
L6B10          RTS
L6B11          LDX    #$01
               SEI
               JSR    $FB1E
               CLI
               CPY    #$64
               BCC    L6B37
               CPY    #$9B
               BCS    L6B22
               BRA    L6B4A
L6B22          LDA    $0330
               CMP    #$22
               BCS    L6B4A
               INC    $0330
               INC    $0330
               INC    $0330
               INC    $0330
               BRA    L6B4A
L6B37          LDA    $0330
               CMP    #$0A
               BCC    L6B4A
               DEC    $0330
               DEC    $0330
               DEC    $0330
               DEC    $0330
L6B4A          RTS
               HEX    60
L6B4C          LDA    #$00
               STA    $16
L6B50          JSR    $EFAE
               LDA    $9F
               LDY    $16
               STA    $1900,Y
               INC    $16
               BNE    L6B50
               RTS
L6B5F          LDA    #$0A
               STA    $17
L6B63          LDY    #$00
L6B65          LDA    $1900,Y
               LDX    #$08
L6B6A          LSR
               BCC    L6B70
               STA    SPKR
L6B70          DEX
               BNE    L6B6A
               LDX    $17
L6B75          DEX
               BNE    L6B75
               INY
               BNE    L6B65
               DEC    $17
               BNE    L6B63
               RTS
L6B80          LDY    #$01
L6B82          LDX    #$00
L6B84          TXA
               CLC
L6B86          SBC    #$01
               BNE    L6B86
               STA    SPKR
               INX
               CPX    #$D2
               BNE    L6B84
               DEY
               BNE    L6B82
               RTS
               HEX    B8ADC2C9D4ADD3C8C1C3CB00D0F2E5F3
               HEX    F3A0E1A0EBE5F9A0F4EFA0F3F4E1F2F4 ; s a key to start
               HEX    A0F4E8E5A0E7E1EDE5AEAEAE00CCEFE1
               HEX    E4E9EEE7A0E7E1EDE5A0E4E1F4E1AEAE ; ding game data..
               HEX    AE00CFF0F4E9EFEEF3BA00A0A0BCD1BE
               HEX    BAA0A0A0D1F5E9F4A0E7E1EDE500A0A0
               HEX    BCD2BEBAA0A0A0D2E5F3F4E1F2F4A0E7 ; <R>:   Restart g
               HEX    E1EDE500A0A0BCD4BEBAA0A0A0D0E1F5
               HEX    F3E5A0E7E1EDE5A0A8CED3C6D7A900CD
               HEX    C5D2D2D9A0D8ADCDC1D3A0B2B0B2B1A0 ; ERRY X-MAS 2021 
               HEX    C1CEC4A0C1A0C8C1D0D0D9A0CEC5D7A0 ; AND A HAPPY NEW 
               HEX    D9C5C1D2A100BCD0D2C5D3D3A0C1A0CB
               HEX    C5D9BE00CDCFD2C5A0C9CEC6CFBAA0D7
               HEX    D7D7AEC7CFCCCFCDC2C5C3CBAEC5D500
L6C76          JSR    L6CA1
               LDA    #$3C
               STA    $38
               LDA    #$02
               STA    $39
               LDA    #$0D
               STA    $23
               LDA    $033B
               STA    L6DF5
               JSR    L6DAE
               LDA    L6DFE
               JSR    L6CFA
               LDA    L6DFF
               JSR    L6CFA
               LDA    L6E00
               JSR    L6CFA
               RTS
L6CA1          LDA    #$06
               STA    $23
               LDA    #$3C
               STA    $20
               LDA    #$4C
               STA    $27
               LDA    #$02
               STA    $21
               JSR    L7C6F
               INC    $21
               JSR    L7C6F
               INC    $21
               JSR    L7C6F
               INC    $21
               JSR    L7C6F
               INC    $21
               JSR    L7C6F
               RTS
L6CC9          JSR    L6D10
               LDA    #$16
               STA    $38
               LDA    #$02
               STA    $39
               LDA    #$0C
               STA    $23
               LDA    $034A
               STA    L6DF5
               LDA    $034B
               STA    L6DF6
               JSR    L6E02
               LDA    L6DFE
               JSR    L6CFA
               LDA    L6DFF
               JSR    L6CFA
               LDA    L6E00
               JSR    L6CFA
               RTS
L6CFA          ASL
               TAX
               LDA    L7038,X
               STA    $6F83
               INX
               LDA    L7038,X
               STA    $6F84
               JSR    L6ED3
               JSR    L6F77
               RTS
L6D10          LDA    #$06
               STA    $23
               LDA    #$1A
               STA    $20
               LDA    #$26
               STA    $27
               LDA    #$02
               STA    $21
               JSR    L7C6F
               INC    $21
               JSR    L7C6F
               INC    $21
               JSR    L7C6F
               INC    $21
               JSR    L7C6F
               INC    $21
               JSR    L7C6F
               RTS
L6D38          LDA    $034C
               STA    L6DF5
               LDA    $034D
               STA    L6DF6
               JSR    L6E02
               LDA    #$39
               STA    $38
               LDA    #$0B
               STA    $39
               LDA    #$0C
               STA    $23
               LDA    L6DFE
               JSR    L6D66
               LDA    L6DFF
               JSR    L6D66
               LDA    L6E00
               JSR    L6D66
               RTS
L6D66          ASL
               TAX
               LDA    L704C,X
               STA    $6FC9
               INX
               LDA    L704C,X
               STA    $6FCA
               JSR    L6FBD
               JSR    L6EDB
               RTS
L6D7C          LDA    #$06
               STA    $23
               LDA    #$03
               STA    $20
               LDA    #$4D
               STA    $27
               LDA    #$0B
               STA    $21
               JSR    L7C6F
               INC    $21
               JSR    L7C6F
               INC    $21
               JSR    L7C6F
               INC    $21
               JSR    L7C6F
               INC    $21
               JSR    L7C6F
               INC    $21
               JSR    L7C6F
               INC    $21
               JSR    L7C6F
               RTS
L6DAE          SED
               STZ    L6DF7
               STZ    L6DF8
               LDX    #$08
L6DB7          ASL    L6DF5
               LDA    L6DF7
               ADC    L6DF7
               STA    L6DF7
               LDA    L6DF8
               ADC    L6DF8
               STA    L6DF8
               DEX
               BNE    L6DB7
               CLD
L6DD0          LDA    L6DF8
               LSR
               LSR
               LSR
               LSR
               STA    L6DFD
               LDA    L6DF8
               AND    #$0F
               STA    L6DFE
               LDA    L6DF7
               LSR
               LSR
               LSR
               LSR
               STA    L6DFF
               LDA    L6DF7
               AND    #$0F
               STA    L6E00
               RTS
L6DF5          HEX    00
L6DF6          HEX    00
L6DF7          HEX    00
L6DF8          HEX    00
L6DF9          HEX    000022A0
L6DFD          HEX    00
L6DFE          HEX    00
L6DFF          HEX    00
L6E00          HEX    00FF
L6E02          SED
               STZ    L6DF7
               STZ    L6DF8
               STZ    L6DF9
               LDX    #$10
L6E0E          ASL    L6DF5
               ROL    L6DF6
               LDA    L6DF7
               ADC    L6DF7
               STA    L6DF7
               LDA    L6DF8
               ADC    L6DF8
               STA    L6DF8
               LDA    L6DF9
               ADC    L6DF9
               STA    L6DF9
               DEX
               BNE    L6E0E
               CLD
               JMP    L6DD0
L6E36          LDA    #$28
               STA    $38
               LDA    #$02
               STA    $39
               LDA    #$0F
               STA    $23
               LDA    #$79
               STA    $6F83
               LDA    #$70
               STA    $6F84
               JSR    L6ED3
               JSR    L6F77
               LDA    #$7E
               STA    $6F83
               LDA    #$70
               STA    $6F84
               JSR    L6ED3
               JSR    L6F77
               LDA    #$83
               STA    $6F83
               LDA    #$70
               STA    $6F84
               JSR    L6ED3
               JSR    L6F77
               LDA    #$74
               STA    $6F83
               LDA    #$70
               STA    $6F84
               JSR    L6ED3
               JSR    L6F77
               RTS
L6E83          LDA    #$02
               STA    $38
               LDA    #$02
               STA    $39
               LDA    #$0F
               STA    $23
               JSR    L6F77
               LDA    #$65
               STA    $6F83
               LDA    #$70
               STA    $6F84
               JSR    L6ED3
               JSR    L6F77
               LDA    #$6A
               STA    $6F83
               LDA    #$70
               STA    $6F84
               JSR    L6ED3
               JSR    L6F77
               LDA    #$6F
               STA    $6F83
               LDA    #$70
               STA    $6F84
               JSR    L6ED3
               JSR    L6F77
               LDA    #$74
               STA    $6F83
               LDA    #$70
               STA    $6F84
               JSR    L6ED3
               JSR    L6F77
               RTS
L6ED3          LDA    $38
               CLC
               ADC    #$04
               STA    $38
               RTS
L6EDB          LDA    $38
               CLC
               ADC    #$07
               STA    $38
               RTS
L6EE3          LDA    #$0A
               STA    $38
               LDA    #$0C
               STA    $39
               LDA    #$0F
               STA    $23
               JSR    L6F02
               LDA    #$09
               STA    $38
               LDA    #$0B
               STA    $39
               LDA    #$01
               STA    $23
               JSR    L6F02
               RTS
L6F02          LDX    #$00
L6F04          LDA    L701A,X
               STA    $6FC9
               INX
               LDA    L701A,X
               INX
               STA    $6FCA
               PHX
               JSR    L6FBD
               JSR    L6EDB
               PLX
               CPX    #$08
               BNE    L6F04
               JSR    L6EDB
               LDX    #$08
L6F23          LDA    L701A,X
               STA    $6FC9
               INX
               LDA    L701A,X
               INX
               STA    $6FCA
               PHX
               JSR    L6FBD
               JSR    L6EDB
               PLX
               CPX    #$10
               BNE    L6F23
               RTS
L6F3E          LDA    #$04
               STA    $38
               LDA    #$0C
               STA    $39
               LDA    #$0F
               STA    $23
               LDA    #$03
               STA    $38
               LDA    #$0B
               STA    $39
               LDA    #$0D
               STA    $23
               JSR    L6F5A
               RTS
L6F5A          LDX    #$00
L6F5C          LDA    L702A,X
               STA    $6FC9
               INX
               LDA    L702A,X
               INX
               STA    $6FCA
               PHX
               JSR    L6FBD
               JSR    L6EDB
               PLX
               CPX    #$0E
               BNE    L6F5C
               RTS
L6F77          LDX    #$00
               LDA    $39
               STA    $21
L6F7D          LDA    $38
               STA    $20
               PHX
               LDA    L7060,X
               STA    L6FBC
               AND    #$80
               BEQ    L6F8F
               JSR    L7E63
L6F8F          INC    $20
               LDA    L6FBC
               AND    #$40
               BEQ    L6F9B
               JSR    L7E63
L6F9B          INC    $20
               LDA    L6FBC
               AND    #$20
               BEQ    L6FA7
               JSR    L7E63
L6FA7          INC    $20
               LDA    L6FBC
               AND    #$10
               BEQ    L6FB3
               JSR    L7E63
L6FB3          INC    $21
               PLX
               INX
               CPX    #$05
               BNE    L6F7D
               RTS
L6FBC          HEX    00
L6FBD          LDX    #$00
               LDA    $39
               STA    $21
L6FC3          LDA    $38
               STA    $20
               PHX
               LDA    L7060,X
               STA    L6FBC
               AND    #$80
               BEQ    L6FD5
               JSR    L7E63
L6FD5          INC    $20
               LDA    L6FBC
               AND    #$40
               BEQ    L6FE1
               JSR    L7E63
L6FE1          INC    $20
               LDA    L6FBC
               AND    #$20
               BEQ    L6FED
               JSR    L7E63
L6FED          INC    $20
               LDA    L6FBC
               AND    #$10
               BEQ    L6FF9
               JSR    L7E63
L6FF9          INC    $20
               LDA    L6FBC
               AND    #$08
               BEQ    L7005
               JSR    L7E63
L7005          INC    $20
               LDA    L6FBC
               AND    #$04
               BEQ    L7011
               JSR    L7E63
L7011          INC    $21
               PLX
               INX
               CPX    #$06
               BNE    L6FC3
               RTS
L701A          HEX    BA70C070C670CC70D270D870CC70DE70 ; :p@pFpLpRpXpLp^p
L702A          HEX    E470EA70F070F670D270DE70CC70 ; dpjpppvpRp^pLp
L7038          HEX    88708D70927097709C70A170A670AB70
               HEX    B070B570 ; 0p5p
L704C          HEX    FC70027108710E7114711A7120712671
               HEX    2C713271 ; ,q2q
L7060          HEX    60804020C000608080600040A0A04000
               HEX    80E0808000E0E080E0E0404040400040
               HEX    0040400080E0E0E060A0A0A0C0206020
               HEX    2020C0204080E0C0204020C0A0A06020
               HEX    20E0806020E06080E0A0C0E020404040
               HEX    E0A040A0E0E0A06020207884809C8478
               HEX    788484FC848484CCB4848484FC80F880
               HEX    80FC788484848478848484844830F884
               HEX    84F888848484FC848484381010101038
               HEX    7C80780404F8788480808478788C94A4
               HEX    C47810305010107C7884047880FC7884
               HEX    1804847808182848FC08FC80F8048478
               HEX    7880F8848478FC040810202078847884
               HEX    84787884847C0478
L7138          LDA    #$8D
               JSR    COUT
               JSR    L64FD
               STY    $C2
L7142          CPY    $C1CF
               CPY    $A0
               HEX    D3C3C5CEC5B1ACC1A4B3B0B0B08D0060
L7157          LDA    #$8D
               JSR    COUT
               JSR    L64FD
               STY    $C2
               CPY    $C1CF
               CPY    $A0
               HEX    D3C3C5CEC5B2ACC1A4B3B8B0B08D0060
L7176          LDA    #$8D
               JSR    COUT
               JSR    L64FD
               STY    $C2
               HEX    CCCF
L7182          CMP    ($C4,X)
               LDY    #$D3
               HEX    C3C5CE
L7189          CMP    $B3
               LDY    $A4C1
               LDY    $B0,X
               BCS    L7142
               STA    L6000
L7195          LDA    #$8D
               JSR    COUT
               JSR    L64FD
               STY    $C2
               CPY    $C1CF
               CPY    $A0
               HEX    D3D4C1D2D4AEC4C2CCACC1A4B3B0B0B0 ; START.DBL,A$3000
               HEX    8D0060
L71B7          LDA    #$8D
               JSR    COUT
               JSR    L64FD
               STY    $C2
               CPY    $C1CF
               CPY    $A0
               BNE    L7189
               CMP    $D3,X
               CMP    $AC
               CMP    ($A4,X)
               LDY    $B8,X
               BCS    L7182
               STA    L6000
L71D5          LDA    #$8D
               JSR    COUT
               JSR    L64FD
               STY    $C2
               CPY    $C1CF
               CPY    $A0
               HEX    C3D2CFD3D3ACC1A4B9B4C6 ; CROSS,A$94F
L71EF          CPY    $8D
               HEX    0060 ; BRK
L71F3          LDA    #$8D
               JSR    COUT
               JSR    L64FD
               STY    $C2
               CPY    $C1CF
               CPY    $A0
               DEC    $C9
               CMP    ($C5)
               LDY    $A4C1
               LDA    $C6B4,Y
               CPY    $8D
               HEX    0060 ; BRK
L7210          LDA    #$8D
               JSR    COUT
               JSR    L64FD
L7218          STY    $C2
               CPY    $C1CF
               CPY    $A0
               CMP    $D8
               BNE    L71EF
               HEX    CFD3C9CFCEACC1A4B9B4C6C48D0060
L7232          LDA    #$8D
               JSR    COUT
               JSR    L64FD
               STY    $C2
               CPY    $C1CF
               CPY    $A0
               BNE    L7218
               CPY    $C4
               CMP    #$CE
               HEX    C7ACC1A4B9B4C6C48D0060
L7252          LDA    #$8D
               JSR    COUT
               JSR    L64FD
               STY    $C2
               CPY    $C1CF
               CPY    $A0
               HEX    C7C9CEC7C5D2ACC1A4B9B4C6C48D0060
L7271          LDA    #$8D
               JSR    COUT
               JSR    L64FD
               STY    $C2
               CPY    $C1CF
               CPY    $A0
               HEX    C3C1CEC5ACC1A4B9B4C6C48D0060
L728E          LDA    #$8D
               JSR    COUT
               JSR    L64FD
               STY    $C2
               CPY    $C1CF
               CPY    $A0
               HEX    D4D5D2CBC5D9ACC1A4B9B4C6C48D0060
L72AD          LDA    #$8D
               JSR    COUT
               JSR    L64FD
               STY    $C2
               CPY    $C1CF
               CPY    $A0
               HEX    C3C8C1CDD0C1C7CEC5ACC1A4B9B4C6C4 ; CHAMPAGNE,A$94FD
               HEX    8D0060
L72CF          LDA    #$8D
               JSR    COUT
               JSR    L64FD
               STY    $C2
               CPY    $C1CF
               CPY    $A0
               CPY    $C1
               HEX    D4C1ACC1A4B3B4C38D0060
L72EB          LDA    #$8D
               JSR    COUT
               JSR    L64FD
               STY    $C2
               HEX    D3C1D6C5A0C4C1D4C1ACC1A4B3B4C3AC ; SAVE DATA,A$34C,
               HEX    CCB28D0060
L730A          HEX    00000002020404040404040606060404
               HEX    02020202020202020202020202020202
               HEX    00020002000200020002000200000000
L733A          HEX    08060604040202020000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000202020404080820
L736A          HEX    03050702020400000506080402030000
               HEX    060406010102000007090B0604060000
L738A          STA    L73D7
               LDA    #$00
               STA    $42
               LDA    #$95
               STA    $43
               LDA    $94FD
               STA    L73CC
               LDA    $94FE
               STA    L73CD
               LDA    $94FF
               STA    L73CF
               JSR    L77A8
               RTS
               HEX    00
L73AC          HEX    00
L73AD          HEX    0000
L73AF          HEX    00
L73B0          HEX    00000000000000000000000000000000
               HEX    00000000
L73C4          HEX    00
L73C5          HEX    00
L73C6          HEX    00
L73C7          HEX    00
L73C8          HEX    0001
L73CA          HEX    00
L73CB          HEX    00
L73CC          HEX    00
L73CD          HEX    0000
L73CF          HEX    00000000000000
L73D6          HEX    00
L73D7          HEX    00
L73D8          HEX    00
L73D9          HEX    00
L73DA          LDA    STROBE
               JSR    $C300
               LDA    TXTCLR
               STA    COL80ON
               LDA    DHIRESON
               STA    MIXCLR
               STA    KEY
               LDA    LOWSCR
               LDA    #$00
               JSR    L7F01
               JSR    L8600
               JSR    L7F8E
               JSR    L8629
               LDA    #$01
               STA    L73AC
               LDA    #$2F
               STA    L73C6
               LDA    #$F0
               STA    $36
               LDA    #$FD
               STA    $37
               JSR    DOSRWTS
               RTS
L7416          LDA    STROBE
               STA    COL80OFF
               LDA    DHIRESOFF
               LDA    TXTSET
               LDA    LOWSCR
               JSR    $F399
               JSR    HOME
               LDX    #$00
               JSR    $FE95
               RTS
L7431          LDX    #$00
               LDA    #$00
L7435          STA    L8400,X
               STA    L8500,X
               INX
               BNE    L7435
               LDA    L73CF
               CMP    #$10
               BNE    L7446
               RTS
L7446          LDA    L73CF
               ASL
               ASL
               ASL
               ASL
               TAX
               LDY    #$10
L7450          LDA    L8400,X
               ORA    #$F0
               STA    L8400,X
               INX
               DEY
               BNE    L7450
               LDA    L73CF
               TAX
               LDY    #$10
L7462          LDA    L8400,X
               ORA    #$0F
               STA    L8400,X
               TXA
               CLC
               ADC    #$10
               TAX
               DEY
               BNE    L7462
               LDX    L73CF
               LDA    L74A5,X
               ASL
               ASL
               ASL
               ASL
               TAX
               LDY    #$10
L747F          LDA    L8500,X
               ORA    #$F0
               STA    L8500,X
               INX
               DEY
               BNE    L747F
               LDX    L73CF
               LDA    L74A5,X
               TAX
               LDY    #$10
L7494          LDA    L8500,X
               ORA    #$0F
               STA    L8500,X
               TXA
               CLC
               ADC    #$10
               TAX
               DEY
               BNE    L7494
               RTS
L74A5          HEX    00080109020A030B040C050D060E070F
L74B5          LDA    L73D9
               LSR
               STA    L73CB
               LDA    L73D8
               LSR
               STA    L73CA
               JSR    L75D4
               LDA    L73D8
               AND    #$01
               BNE    L74F2
               LDA    L73D9
               AND    #$01
               BNE    L7524
               JSR    L757A
               LDY    #$00
               LDA    ($44),Y
               STA    L73CC
               INY
               INY
               INY
               STA    ($44),Y
               DEY
               DEY
               LDA    ($44),Y
               STA    L73CD
               INY
               INY
               INY
               STA    ($44),Y
               JMP    L7579
L74F2          LDA    L73D9
               AND    #$01
               BNE    L754F
               CLC
               LDA    $46
               ADC    #$A0
               STA    $46
               LDA    $47
               ADC    #$00
               STA    $47
               JSR    L757A
               LDY    #$00
               LDA    ($44),Y
               INC
               STA    L73CC
               INY
               INY
               INY
               STA    ($44),Y
               DEY
               DEY
               LDA    ($44),Y
               STA    L73CD
               INY
               INY
               INY
               STA    ($44),Y
               BRA    L7579
L7524          CLC
               LDA    $46
               ADC    #$40
               STA    $46
               LDA    $47
               ADC    #$01
               STA    $47
               JSR    L757A
               LDY    #$00
               LDA    ($44),Y
               STA    L73CC
               INY
               INY
               INY
               STA    ($44),Y
               DEY
               DEY
               LDA    ($44),Y
               INC
               STA    L73CD
               INY
               INY
               INY
               STA    ($44),Y
               BRA    L7579
L754F          CLC
               LDA    $46
               ADC    #$E0
               STA    $46
               LDA    $47
               ADC    #$01
               STA    $47
               JSR    L757A
               LDY    #$00
               LDA    ($44),Y
               INC
               STA    L73CC
               INY
               INY
               INY
               STA    ($44),Y
               DEY
               DEY
               LDA    ($44),Y
               INC
               STA    L73CD
               INY
               INY
               INY
               STA    ($44),Y
L7579          RTS
L757A          JSR    L75E9
               LDA    $46
               STA    $7697
               STA    $7683
               LDA    $47
               STA    $7698
               STA    $7684
               JSR    L75E9
               LDA    $46
               STA    $76C3
               STA    $76A9
               LDA    $47
               STA    $76C4
               STA    $76AA
               RTS
L75A1          JSR    L75D4
               LDA    $46
               ADC    #$F0
               STA    $46
               LDA    $47
               ADC    #$02
               STA    $47
               LDA    $46
               STA    $7680
               STA    $7770
               LDA    $47
               STA    $7681
               STA    $7771
               JSR    L75E9
               LDA    $46
               STA    $76A6
               STA    $7779
               LDA    $47
               STA    $76A7
               STA    $777A
               RTS
L75D4          LDA    L73D7
               DEC
               TAX
               LDA    L8120,X
               CLC
               ADC    L73D6
               STA    $47
               STA    $45
               STZ    $46
               STZ    $44
               RTS
L75E9          CLC
               LDA    $46
               ADC    #$50
               STA    $46
               LDA    $47
               ADC    #$00
               STA    $47
               RTS
L75F7          LDA    L73D7
               CMP    #$0D
               BCS    L7606
               LDA    LCBANK2
               LDA    LCBANK2
               BRA    L760C
L7606          LDA    $C08B
               LDA    $C08B
L760C          JSR    L75A1
               JSR    L74B5
               LDY    #$00
               LDA    ($44),Y
               STA    L73CC
               INY
               LDA    ($44),Y
               STA    L73CD
               INY
               LDA    ($44),Y
               STA    L73CF
               JSR    L7431
               JSR    L762F
               LDA    $C082
               RTS
L762F          LDA    L73CB
               STA    $48
               STZ    $4A
               DEC    $4A
L7638          LDX    $48
               CPX    #$1D
               BCS    L764B
               LDA    L73CC
               INC
               LSR
               CLC
               ADC    $4A
               STA    $4A
               JMP    L76DD
L764B          CPX    #$30
               BCC    L7652
               JMP    L76DD
L7652          TXA
               SEC
               SBC    #$18
               STA    $2B
               TAX
               LDA    L8720,X
               STA    $40
               LDA    L8100,X
               STA    $41
               LDA    L73CA
               STA    $49
L7668          INC    $4A
               LDY    $49
               CPY    #$28
               BCC    L76CF
               CPY    #$50
               BCS    L76CF
               TYA
               SEC
               SBC    #$28
               STA    $2A
               TAY
               LDA    ($40),Y
               LDY    $4A
               STA    $8820,Y
               LDA    $8820,Y
               TAX
               LDA    L8400,X
               LDY    $2A
               AND    ($40),Y
               STA    $4B
               LDA    L8400,X
               EOR    #$FF
               LDX    $4A
               AND    $8820,X
               ORA    $4B
               STA    ($40),Y
               STA    $C003
               LDA    ($40),Y
               STA    $C002
               STA    $8820,X
               LDA    $8820,X
               TAX
               LDA    L8500,X
               LDY    $2A
               STA    $C003
               AND    ($40),Y
               STA    $C002
               STA    $4B
               LDA    L8500,X
               EOR    #$FF
               LDX    $4A
               AND    $8820,X
               ORA    $4B
               STA    $C005
               STA    ($40),Y
               STA    $C004
L76CF          INC    $49
               LDA    $49
               SEC
               SBC    L73CA
               ASL
               CMP    L73CC
               BCC    L7668
L76DD          INC    $48
               LDA    $48
               SEC
               SBC    L73CB
               ASL
               CMP    L73CD
               BCS    L76EE
               JMP    L7638
L76EE          RTS
L76EF          LDA    L73D7
               CMP    #$0D
               BCS    L76FE
               LDA    LCBANK2
               LDA    LCBANK2
               BRA    L7704
L76FE          LDA    $C08B
               LDA    $C08B
L7704          LDA    L73D9
               LSR
               STA    L73CB
               LDA    L73D8
               LSR
               STA    L73CA
               JSR    L75A1
               LDY    #$00
               LDA    ($44),Y
               STA    L73CC
               INY
               LDA    ($44),Y
               STA    L73CD
               LDA    L73CB
               STA    $48
               STZ    $4A
               DEC    $4A
L772B          LDX    $48
               CPX    #$1D
               BCS    L773E
               LDA    L73CC
               INC
               LSR
               CLC
               ADC    $4A
               STA    $4A
               JMP    L7793
L773E          CPX    #$30
               BCC    L7745
               JMP    L7793
L7745          TXA
               SEC
               SBC    #$18
               STA    $2B
               TAX
               LDA    L8720,X
               STA    $40
               LDA    L8100,X
               STA    $41
               LDA    L73CA
               STA    $49
L775B          INC    $4A
               LDY    $49
               CPY    #$28
               BCC    L7785
               CPY    #$50
               BCS    L7785
               TYA
               SEC
               SBC    #$28
               STA    $2A
               LDY    $4A
               LDA    $8820,Y
               LDY    $2A
               STA    ($40),Y
               LDY    $4A
               LDA    $8820,Y
               LDY    $2A
               STA    $C005
               STA    ($40),Y
               STA    $C004
L7785          INC    $49
               LDA    $49
               SEC
               SBC    L73CA
               ASL
               CMP    L73CC
               BCC    L775B
L7793          INC    $48
               LDA    $48
               SEC
               SBC    L73CB
               ASL
               CMP    L73CD
               BCS    L77A4
               JMP    L772B
L77A4          STA    $C082
               RTS
L77A8          LDA    L73D7
               CMP    #$0D
               BCS    L77B7
               LDA    LCBANK2
               LDA    LCBANK2
               BRA    L77BD
L77B7          LDA    $C08B
               LDA    $C08B
L77BD          LDA    #$03
               STA    $29
               JSR    L791E
               LDA    #$D0
               STA    L73D6
               JSR    L75D4
               LDY    #$00
               LDA    L73CC
               STA    ($44),Y
               INY
               LDA    L73CD
               STA    ($44),Y
               INY
               LDA    L73CF
               STA    ($44),Y
               LDA    #$00
               STA    $789B
               STA    $7892
               JSR    L787D
               JSR    L7862
               LDA    L73CC
               STA    $78F0
               LDA    L73CD
               STA    $78F9
               JSR    L78BC
               LDA    #$01
               STA    $789B
               STZ    $7892
               JSR    L787D
               JSR    L7862
               LDA    L73CC
               INC
               STA    $78F0
               LDA    L73CD
               STA    $78F9
               JSR    L78BC
               LDA    #$01
               STZ    $789B
               STA    $7892
               JSR    L787D
               JSR    L7862
               LDA    L73CC
               STA    $78F0
               LDA    L73CD
               INC
               STA    $78F9
               JSR    L78BC
               LDA    #$01
               STA    $789B
               STA    $7892
               JSR    L787D
               JSR    L7862
               LDA    L73CC
               INC
               STA    $78F0
               LDA    L73CD
               INC
               STA    $78F9
               JSR    L78BC
               LDA    #$01
               STA    $29
               JSR    L791E
               STA    $C082
               RTS
L7862          JSR    L75E9
               LDA    $46
               STA    $78D9
               LDA    $47
               STA    $78DA
               JSR    L75E9
               LDA    $46
               STA    $78E8
               LDA    $47
               STA    $78E9
               RTS
L787D          LDX    L73CF
               LDA    L8150,X
               JSR    L801B
               STZ    $49
               STZ    $48
               LDA    #$00
               STA    $4A
L788E          LDA    $48
               CLC
               ADC    #$00
               STA    $21
               STZ    $49
L7897          LDA    $49
               CLC
               ADC    #$00
               STA    $20
               LDY    $4A
               LDA    ($42),Y
               STA    $23
               JSR    L7E63
               INC    $4A
               INC    $49
               LDA    $49
               CMP    L73CC
               BNE    L7897
               INC    $48
               LDA    $48
               CMP    L73CD
               BNE    L788E
               RTS
L78BC          STZ    $48
               STZ    $4A
               DEC    $4A
L78C2          LDX    $48
               LDA    L8720,X
               STA    $40
               LDA    L8100,X
               STA    $41
               STZ    $49
L78D0          INC    $4A
               LDY    $49
               LDA    ($40),Y
               LDY    $4A
               STA    $8820,Y
               LDY    $49
               STA    $C003
               LDA    ($40),Y
               STA    $C002
               LDY    $4A
               STA    $8820,Y
               INC    $49
               LDA    $49
               ASL
               CMP    #$01
               BCC    L78D0
               INC    $48
               LDA    $48
               ASL
               CMP    #$01
               BCC    L78C2
               RTS
               HEX    A5398521A51F8528206F7C20167DA520
               HEX    A6278527862020167DA51F8521206F7C
               HEX    60
L791E          LDA    $29
               CMP    #$02
               BCS    L792D
               LDA    #$01
               STA    L73AC
               LDA    #$81
               BRA    L7941
L792D          CMP    #$03
               BEQ    L793A
               LDA    #$02
               STA    L73AC
               LDA    #$87
               BRA    L7941
L793A          LDA    #$03
               STA    L73AC
               LDA    #$88
L7941          STA    $7CA2
               STA    L7D53
               STA    L7D90
               STA    L7DBF
               STA    L7DF7
               STA    L7E20
               STA    L7E45
               STA    $7E72
               STA    $7660
               STA    $7753
               STA    $78CB
               RTS
L7963          STA    KEY
               LDA    L73C7
               CMP    L73C8
               BNE    L796F
               RTS
L796F          CMP    #$01
               BNE    L7995
               LDX    #$04
               STX    $7A95
               STX    $7AB8
               LDX    #$05
               STX    $7A9B
               STX    $7ABE
               LDX    #$06
               STX    $7AA1
               STX    $7AC4
               LDX    #$07
               STX    $7AA7
               STX    $7ACA
               BRA    L79E2
L7995          CMP    #$02
               BNE    L79BB
               LDX    #$08
               STX    $7A95
               STX    $7AB8
               LDX    #$09
               STX    $7A9B
               STX    $7ABE
               LDX    #$0A
               STX    $7AA1
               STX    $7AC4
               LDX    #$0B
               STX    $7AA7
               STX    $7ACA
               BRA    L79E2
L79BB          CMP    #$03
               BNE    L79E1
               LDX    #$0C
               STX    $7A95
               STX    $7AB8
               LDX    #$0D
               STX    $7A9B
               STX    $7ABE
               LDX    #$0E
               STX    $7AA1
               STX    $7AC4
               LDX    #$0F
               STX    $7AA7
               STX    $7ACA
               BRA    L79E2
L79E1          RTS
L79E2          LDA    L73C8
               CMP    #$01
               BNE    L7A0B
               LDX    #$04
               STX    $7A98
               STX    $7ABB
               LDX    #$05
               STX    $7A9E
               STX    $7AC1
               LDX    #$06
               STX    $7AA4
               STX    $7AC7
               LDX    #$07
               STX    $7AAA
               STX    $7ACD
               BRA    L7A58
L7A0B          CMP    #$02
               BNE    L7A31
               LDX    #$08
               STX    $7A98
               STX    $7ABB
               LDX    #$09
               STX    $7A9E
               STX    $7AC1
               LDX    #$0A
               STX    $7AA4
               STX    $7AC7
               LDX    #$0B
               STX    $7AAA
               STX    $7ACD
               BRA    L7A58
L7A31          CMP    #$03
               BNE    L7A57
               LDX    #$0C
               STX    $7A98
               STX    $7ABB
               LDX    #$0D
               STX    $7A9E
               STX    $7AC1
               LDX    #$0E
               STX    $7AA4
               STX    $7AC7
               LDX    #$0F
               STX    $7AAA
               STX    $7ACD
               BRA    L7A58
L7A57          RTS
L7A58          JSR    L7B0C
               STA    $C005
               LDA    $7A95
               STA    $7A95
               LDA    $7A98
               STA    $7A98
               LDA    $7A9B
               STA    $7A9B
               LDA    $7A9E
               STA    $7A9E
               LDA    $7AA1
               STA    $7AA1
               LDA    $7AA4
               STA    $7AA4
               LDA    $7AA7
               STA    $7AA7
               LDA    $7AAA
               STA    $7AAA
               STA    $C003
               LDX    #$00
L7A93          LDA    $0400,X
               STA    $1000,X
               LDA    $0500,X
               STA    $1100,X
               LDA    $0600,X
               STA    $1200,X
               LDA    $0700,X
               STA    $1300,X
               INX
               BNE    L7A93
               STA    $C004
               STA    $C002
               LDX    #$00
L7AB6          LDA    $0400,X
               STA    $0C00,X
               LDA    $0500,X
               STA    $0D00,X
               LDA    $0600,X
               STA    $0E00,X
               LDA    $0700,X
               STA    $0F00,X
               INX
               BNE    L7AB6
               JSR    L7B67
               RTS
               HEX    200C7B8D03C08D05C0A9A0A2009D0004
               HEX    9D00059D00069D0007E8D0F18D04C08D
               HEX    02C0A2009D00049D00059D00069D0007
               HEX    E8D0F120677B60 ; hPq g{`
L7B0C          LDA    $0478
               STA    $8820
               LDA    $04F8
               STA    $8821
               LDA    $0578
               STA    $8822
               LDA    $05F8
               STA    $8823
               LDA    $047C
               STA    $8824
               LDA    $04FC
               STA    $8825
               LDA    $057C
               STA    $8826
               LDA    $05FC
               STA    $8827
               LDA    $067C
               STA    $8828
               LDA    $06FC
               STA    $8829
               LDA    $077C
               STA    $882A
               LDA    $0678
               STA    $882B
               LDA    $06F8
               STA    $882C
               LDA    $047E
               STA    $882D
               LDA    $04FE
               STA    $882E
               RTS
L7B67          LDA    $8820
               STA    $0478
               LDA    $8821
               STA    $04F8
               LDA    $8822
               STA    $0578
               LDA    $8823
               STA    $05F8
               LDA    $8824
               STA    $047C
               LDA    $8825
               STA    $04FC
               LDA    $8826
               STA    $057C
               LDA    $8827
               STA    $05FC
               LDA    $8828
               STA    $067C
               LDA    $8829
               STA    $06FC
               LDA    $882A
               STA    $077C
               LDA    $882B
               STA    $0678
               LDA    $882C
               STA    $06F8
               LDA    $882D
               STA    $047E
               LDA    $882E
               STA    $04FE
               RTS
L7BC2          STA    KEY
               LDA    $29
               CMP    #$02
               BEQ    L7BD0
               LDA    LOWSCR
               BRA    L7BD3
L7BD0          LDA    HISCR
L7BD3          RTS
               HEX    ADAC73C903D029A200A9009D000C9D00
               HEX    0D9D000E9D000FE8D0F18D05C09D000C
               HEX    9D000D9D000E9D000FE8D0F18D04C060
               HEX    A623BD5081A8ADAC73C902F010982001
               HEX    7FADC673C927F004982052866098208E
               HEX    7FADC673C927F00498207F8660A520EA
               HEX    C527900AF034A6278DC5738EC473A520
               HEX    100464208008C9509004A94F8520A527
               HEX    100464278008C9509004A94F8527A521
               HEX    100160CDC673F003900160
L7C6F          LDA    $20
               CMP    $27
               BCC    L7C84
               BEQ    L7C81
               LDX    $27
               STA    L73C5
               STX    L73C4
               BRA    L7C8C
L7C81          JMP    L7E63
L7C84          STA    L73C4
               LDA    $27
               STA    L73C5
L7C8C          SEC
               SBC    L73C4
               INC
               STA    L73AD
               INC    L73C5
               LDA    $21
               LSR
               TAX
               LDA    L8720,X
               STA    $40
               LDA    L8100,X
               STA    $41
               LDA    $21
               BIT    #$01
               BEQ    L7CAE
               JMP    L7CC2
L7CAE          LDA    $23
               STA    $24
               TAX
               LDA    L8200,X
               STA    $25
               LDA    #$F0
               STA    $7CE9
               STA    $7D05
               BRA    L7CD7
L7CC2          LDX    $23
               LDA    L8140,X
               STA    $24
               TAX
               LDA    L8200,X
               STA    $25
               LDA    #$0F
               STA    $7CE9
               STA    $7D05
L7CD7          LDA    L73C4
               BIT    #$01
               BNE    L7D00
               LSR
               TAY
               STA    $C003
               LDA    ($40),Y
               STA    $C002
               AND    #$F0
               ORA    $25
               STA    $C005
               STA    ($40),Y
               STA    $C004
               INC    L73C4
               LDA    L73C4
               CMP    L73C5
               BCC    L7CD7
               RTS
L7D00          LSR
               TAY
               LDA    ($40),Y
               AND    #$F0
               ORA    $24
               STA    ($40),Y
               INC    L73C4
               LDA    L73C4
               CMP    L73C5
               BCC    L7CD7
               RTS
               HEX    A521C528900DF008A628852886218003
               HEX    4C637EA52838E5211A8DAD73A5208901
               HEX    F0034CDF7D4AA8A5214A8DAE73A52189
               HEX    01F036AEAE73BD20878540BD00
L7D53          HEX    8185418D03C0B1408D02C0AABD008329
               HEX    0F8525A623BD40810525AABD00828D05
               HEX    C091408D04C0EEAE73CEAD73ADAD73C9
               HEX    029029AEAE73BD20878540BD00
L7D90          HEX    818541A623BD5081AABD00828D05C091
               HEX    408D04C0CEAD73CEAD73EEAE7380D0AD
               HEX    AD73D00160AEAE73BD20878540BD00
L7DBF          HEX    8185418D03C0B1408D02C0AABD008329
               HEX    F00523AABD00828D05C091408D04C060
               HEX    4AA8A5214A8DAE73A5218901F022AEAE
               HEX    73BD20878540BD00
L7DF7          HEX    818541B140290F8525A623BD40810525
               HEX    9140EEAE73CEAD73ADAD73C902901FAE
               HEX    AE73BD20878540BD00
L7E20          HEX    818541A623BD50819140CEAD73CEAD73
               HEX    EEAE7380DAADAD73D00160AEAE73BD20
               HEX    878540BD00
L7E45          HEX    818541B14029F00523914060A520EAC9
               HEX    50900160A521CDC673F003900160
L7E63          LDA    $23
               STA    $24
               LDA    $21
               LSR
               TAX
               LDA    L8720,X
               STA    $40
               LDA    L8100,X
               STA    $41
               LDX    $23
               LDA    $20
               BIT    #$01
               BNE    L7EB8
               LSR
               TAY
               STA    $C003
               LDA    ($40),Y
               STA    $C002
               STA    $25
               LDA    L8200,X
               STA    $24
               LDA    $21
               AND    #$01
               BEQ    L7EA5
               LDA    $25
               AND    #$0F
               STA    $25
               LDA    L8140,X
               TAX
               LDA    L8200,X
               STA    $24
               BRA    L7EAB
L7EA5          LDA    $25
               AND    #$F0
               STA    $25
L7EAB          LDA    $24
               ORA    $25
               STA    $C005
               STA    ($40),Y
               STA    $C004
               RTS
L7EB8          LSR
               TAY
               LDA    ($40),Y
               STA    $25
               LDA    $21
               AND    #$01
               BEQ    L7ED1
               LDA    $25
               AND    #$0F
               STA    $25
               LDA    L8140,X
               STA    $24
               BRA    L7ED7
L7ED1          LDA    $25
               AND    #$F0
               STA    $25
L7ED7          LDA    $24
               ORA    $25
               STA    ($40),Y
               RTS
L7EDE          LDA    #$00
               STA    L73B0
               STA    L73AF
               STA    $3C
               LDA    #$20
               STA    $3D
               LDA    #$FF
               STA    $3E
               LDA    #$95
               STA    $3F
               LDA    #$00
               STA    $42
               LDA    #$20
               STA    $43
               SEC
               JMP    $C311
               HEX    60
L7F01          LDX    #$28
L7F03          DEX
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
               BNE    L7F03
               TAX
               LDA    L8200,X
               LDX    #$28
L7F48          DEX
               STA    $C005
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
               STA    $C004
               BNE    L7F48
               RTS
L7F8E          LDX    #$28
L7F90          DEX
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
               BNE    L7F90
               TAX
               LDA    L8200,X
               LDX    #$28
L7FD5          DEX
               STA    $C005
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
               STA    $C004
               BNE    L7FD5
               RTS
L801B          LDX    #$28
L801D          DEX
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
               BNE    L801D
               TAX
               LDA    L8200,X
               LDX    #$28
L806E          DEX
               STA    $C005
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
               STA    $C004
               BNE    L806E
               RTS
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
L8100          HEX    04040505060607070404050506060707
               HEX    04040505060607070404050506060707
L8120          HEX    0004080C1014181C2024282C0004080C
               HEX    5054585C6064686C7074787C8084888C
L8140          HEX    00102030405060708090A0B0C0D0E0F0
L8150          HEX    00112233445566778899AABBCCDDEEFF
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
L8200          HEX    00080109020A030B040C050D060E070F
               HEX    80888189828A838B848C858D868E878F
               HEX    10181119121A131B141C151D161E171F
               HEX    90989199929A939B949C959D969E979F
               HEX    20282129222A232B242C252D262E272F ;  (!)"*#+$,%-&.'/
               HEX    A0A8A1A9A2AAA3ABA4ACA5ADA6AEA7AF ;  (!)"*#+$,%-&.'/
               HEX    30383139323A333B343C353D363E373F ; 08192:3;4<5=6>7?
               HEX    B0B8B1B9B2BAB3BBB4BCB5BDB6BEB7BF ; 08192:3;4<5=6>7?
               HEX    40484149424A434B444C454D464E474F ; @HAIBJCKDLEMFNGO
               HEX    C0C8C1C9C2CAC3CBC4CCC5CDC6CEC7CF ; @HAIBJCKDLEMFNGO
               HEX    50585159525A535B545C555D565E575F ; PXQYRZS[T\U]V^W_
               HEX    D0D8D1D9D2DAD3DBD4DCD5DDD6DED7DF ; PXQYRZS[T\U]V^W_
               HEX    60686169626A636B646C656D666E676F ; `haibjckdlemfngo
               HEX    E0E8E1E9E2EAE3EBE4ECE5EDE6EEE7EF ; `haibjckdlemfngo
               HEX    70787179727A737B747C757D767E777F
               HEX    F0F8F1F9F2FAF3FBF4FCF5FDF6FEF7FF
               HEX    00020406080A0C0E01030507090B0D0F
               HEX    20222426282A2C2E21232527292B2D2F ;  "$&(*,.!#%')+-/
               HEX    40424446484A4C4E41434547494B4D4F ; @BDFHJLNACEGIKMO
               HEX    60626466686A6C6E61636567696B6D6F ; `bdfhjlnacegikmo
               HEX    80828486888A8C8E81838587898B8D8F
               HEX    A0A2A4A6A8AAACAEA1A3A5A7A9ABADAF ;  "$&(*,.!#%')+-/
               HEX    C0C2C4C6C8CACCCEC1C3C5C7C9CBCDCF ; @BDFHJLNACEGIKMO
               HEX    E0E2E4E6E8EAECEEE1E3E5E7E9EBEDEF ; `bdfhjlnacegikmo
               HEX    10121416181A1C1E11131517191B1D1F
               HEX    30323436383A3C3E31333537393B3D3F ; 02468:<>13579;=?
               HEX    50525456585A5C5E51535557595B5D5F ; PRTVXZ\^QSUWY[]_
               HEX    70727476787A7C7E71737577797B7D7F
               HEX    90929496989A9C9E91939597999B9D9F
               HEX    B0B2B4B6B8BABCBEB1B3B5B7B9BBBDBF ; 02468:<>13579;=?
               HEX    D0D2D4D6D8DADCDED1D3D5D7D9DBDDDF ; PRTVXZ\^QSUWY[]_
               HEX    F0F2F4F6F8FAFCFEF1F3F5F7F9FBFDFF
L8400          HEX    FFF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
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
L8500          HEX    FFF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
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
L8600          LDX    #$28
L8602          DEX
               STA    $0650,X
               STA    $06D0,X
               STA    $0750,X
               STA    $07D0,X
               BNE    L8602
               LDX    #$28
L8613          DEX
               STA    $C005
               STA    $0650,X
               STA    $06D0,X
               STA    $0750,X
               STA    $07D0,X
               STA    $C004
               BNE    L8613
               RTS
L8629          LDX    #$28
L862B          DEX
               STA    $0A50,X
               STA    $0AD0,X
               STA    $0B50,X
               STA    $0BD0,X
               BNE    L862B
               LDX    #$28
L863C          DEX
               STA    $C005
               STA    $0A50,X
               STA    $0AD0,X
               STA    $0B50,X
               STA    $0BD0,X
               STA    $C004
               BNE    L863C
               RTS
               HEX    A228CA9D50069DD0069D50079DD007D0
               HEX    F1AABD0082A228CA8D05C09D50069DD0
               HEX    069D50079DD0078D04C0D0EB60A228CA
               HEX    9D500A9DD00A9D500B9DD00BD0F1AABD
               HEX    0082A228CA8D05C09D500A9DD00A9D50
               HEX    0B9DD00B8D04C0D0EB60A200A9009D00
               HEX    0C9D000D9D000E9D000F8D05C09D000C
               HEX    9D000D9D000E9D000F8D04C0E8D0DF60
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000808
               HEX    09090A0A0B0B080809090A0A0B0B0808
               HEX    09090A0A0B0B080809090A0A0B0B
L8720          HEX    008000800080008028A828A828A828A8
               HEX    50D050D050D050D078F878F878F878F8 ; PPPPPPPPxxxxxxxx
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
L8800          HEX    0C0C0D0D0E0E0F0F0C0C0D0D0E0E0F0F
               HEX    0C0C0D0D0E0E0F0F0C0C0D0D0E0E0F0F
