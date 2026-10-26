************************************************************
* mined_out - MOCK.INF (disassembly)
*
* Disassembled from the original binary (1150 bytes, $9182-$95FF).
* Reconstructed source: labels are generated, comments are minimal.
* Bytes the disassembler could not prove to be code are emitted as HEX/ASC data.
* Original program by its authors; see ../README.txt for attribution and terms.
* Entry point(s): $9182, $95F6, $94FE (NMOS 6502 opcodes only).
************************************************************

               ORG    $9182

START          JSR    SUB9204
               LDA    $D0
               BNE    L918A
L9189          RTS
L918A          LDA    $D3
               CMP    D9524
               BEQ    L9189
               STA    D955A
               STA    D955D
               STA    D9560
               STA    D9563
               STA    L9574+2
               STA    D9577+2
               STA    D957C+2
               STA    D957F+2
               STA    D9584+2
               STA    D9587+2
               STA    D958D+2
               STA    D9593+2
               STA    D9598+2
               STA    D959B+2
               STA    D95A0+2
               STA    D95A3+2
               STA    D95B0+2
               STA    D95B3+2
               STA    D95B6+2
               STA    D95B9+2
               STA    D94DE+2
               STA    D94E1+2
               STA    D94E4+2
               STA    D94E7+2
               STA    D94EC+2
               STA    D94F1+2
               STA    D94F4+2
               STA    D94F9+2
               STA    D950B+2
               STA    D9524
               STA    D9527
               STA    D952A
               STA    D952D
               STA    D9530
               STA    D9533
               RTS
L91FB          JSR    START
               JSR    SUB9535
               JMP    SUB94B5
SUB9204        LDA    #$00
               STA    $D0
               STA    $D2
               LDA    #$C1
               STA    $D3
               LDY    #$04
L9210          LDA    ($D2),Y
               PHA
               LDA    ($D2),Y
               STA    $D1
               PLA
               SEC
               SBC    $D1
               CMP    #$08
               BNE    L9235
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
               BNE    L9235
               INC    $D0
               RTS
L9235          LDA    #$00
               STA    $D2
               INC    $D3
               LDA    $D3
               CMP    #$C8
               BNE    L9210
               RTS
               HEX    424E4520202024304C7E92000000
D9250          HEX    00000000
D9254          HEX    00
D9255          HEX    0000
D9257          HEX    000000
D925A          HEX    00
D925B          HEX    0000
D925D          HEX    00
D925E          HEX    0000
D9260          HEX    00
D9261          HEX    0000
D9263          HEX    00
D9264          HEX    0000
D9266          HEX    00
D9267          HEX    0000
D9269          HEX    00
D926A          HEX    0000
D926C          HEX    00
D926D          HEX    0000
D926F          HEX    00
D9270          HEX    0000
D9272          HEX    00
D9273          HEX    0000
D9275          HEX    00
D9276          HEX    0000
D9278          HEX    00
D9279          HEX    0000
D927B          HEX    00
D927C          HEX    0000A231A9009D4C92CAE000D0F8
L928A          JSR    SUB948D
               STA    D925A
               STY    D925B
               LDA    #$F8
               CMP    D925A
               BEQ    L929C
               BCC    L929F
L929C          JMP    L92AB
L929F          SEC
               LDA    D925A
               SBC    #$F8
               STA    D925A
               JMP    L936C
L92AB          LDA    D9257
               STA    D95C7
               STA    D95C8
               STA    D95C9
               STA    D95DB
               STA    D95DC
               STA    D95DD
               LDA    D925E
               CMP    D9261
               BNE    L92CE
               LDA    D925D
               CMP    D9260
L92CE          BCC    L92D3
               JMP    L92D8
L92D3          LDA    #$00
               STA    D95C7
L92D8          LDA    D9264
               CMP    D9261
               BNE    L92E6
               LDA    D9263
               CMP    D9260
L92E6          BCC    L92EB
               JMP    L92F0
L92EB          LDA    #$00
               STA    D95DB
L92F0          LDA    D9267
               CMP    D9261
               BNE    L92FE
               LDA    D9266
               CMP    D9260
L92FE          BCC    L9303
               JMP    L9308
L9303          LDA    #$00
               STA    D95C8
L9308          LDA    D926A
               CMP    D9261
               BNE    L9316
               LDA    D9269
               CMP    D9260
L9316          BCC    L931B
               JMP    L9320
L931B          LDA    #$00
               STA    D95DC
L9320          LDA    D926D
               CMP    D9261
               BNE    L932E
               LDA    D926C
               CMP    D9260
L932E          BCC    L9333
               JMP    L9338
L9333          LDA    #$00
               STA    D95C9
L9338          LDA    D9270
               CMP    D9261
               BNE    L9346
               LDA    D926F
               CMP    D9260
L9346          BCC    L934B
               JMP    L9350
L934B          LDA    #$00
               STA    D95DD
L9350          JSR    SUB956F
D9353          JSR    SUB956F
               CLC
               LDA    D9260
               ADC    D925A
               STA    D9260
               LDA    D9261
               ADC    D925B
               STA    D9261
               JMP    L9517
L936C          JSR    SUB948D
               STA    D9272
               STY    D9273
               JSR    SUB948D
               STA    D9275
               STY    D9276
               JSR    SUB948D
               STA    D9278
               STY    D9279
               LDA    D9278
               STA    D927B
               LDA    D9279
               STA    D927C
               CLC
               LDA    D927B
               ADC    D9260
               STA    D927B
               LDA    D927C
               ADC    D9261
               STA    D927C
               LDA    D925A
               CMP    #$01
               BEQ    L93B0
               JMP    L93CB
L93B0          LDA    D9272
               STA    D95BF
               LDA    D9275
               STA    D95C0
               LDA    D927B
               STA    D925D
               LDA    D927C
               STA    D925E
               JMP    L928A
L93CB          LDA    D925A
               CMP    #$02
               BEQ    L93D5
               JMP    L93F0
L93D5          LDA    D9272
               STA    D95D3
               LDA    D9275
               STA    D95D4
               LDA    D927B
               STA    D9263
               LDA    D927C
               STA    D9264
               JMP    L928A
L93F0          LDA    D925A
               CMP    #$03
               BEQ    L93FA
               JMP    L9415
L93FA          LDA    D9272
               STA    D95C1
               LDA    D9275
               STA    D95C2
               LDA    D927B
               STA    D9266
               LDA    D927C
               STA    D9267
               JMP    L928A
L9415          LDA    D925A
               CMP    #$04
               BEQ    L941F
               JMP    L943A
L941F          LDA    D9272
               STA    D95D5
               LDA    D9275
               STA    D95D6
               LDA    D927B
               STA    D9269
               LDA    D927C
               STA    D926A
               JMP    L928A
L943A          LDA    D925A
               CMP    #$05
               BEQ    L9444
               JMP    L945F
L9444          LDA    D9272
               STA    D95C3
               LDA    D9275
               STA    D95C4
               LDA    D927B
               STA    D926C
               LDA    D927C
               STA    D926D
               JMP    L928A
L945F          LDA    D925A
               CMP    #$06
               BEQ    L9469
               JMP    L9484
L9469          LDA    D9272
               STA    D95D7
               LDA    D9275
               STA    D95D8
               LDA    D927B
               STA    D926F
               LDA    D927C
               STA    D9270
               JMP    L928A
L9484          JSR    SUB94B5
               JMP    L9517
               HEX    4CD003
SUB948D        INC    D9254
               BNE    L9495
               INC    D9255
L9495          LDX    D9254
               LDY    D9255
               STX    $06
               STY    $07
               LDY    #$00
               LDA    ($06),Y
               RTS
               HEX    A22BA08C8C61938C64938E60938E6393
               HEX    60
SUB94B5        LDA    #$FE
               STA    $03FE
               LDA    #$94
               STA    $03FF
               LDA    #$00
               LDX    #$2D
L94C3          STA    D9250,X
               DEX
               CPX    #$00
               BNE    L94C3
               LDA    #$97
               STA    D9254
               LDA    #$3A
               STA    D9255
               LDA    #$09
               STA    D9257
               LDX    #$FF
               LDY    #$07
D94DE          STX    $C403
D94E1          STX    $C483
D94E4          STY    $C402
D94E7          STY    $C482
               LDA    #$40
D94EC          STA    $C40B
               LDA    #$C0
D94F1          STA    $C40D
D94F4          STX    $C40E
               LDA    #$25
D94F9          STA    $C405
               CLI
               RTS
D94FE          LDA    $45
               PHA
               LDA    D925A
               BEQ    L9510
               DEC    D925A
L9509          LDA    #$7F
D950B          STA    $C40D
               PLA
               RTI
L9510          TYA
               PHA
               TXA
               PHA
               JMP    L928A
L9517          PLA
               TAX
               PLA
               TAY
               JMP    L9509
               HEX    A900A0048D00
D9524          HEX    C48C00
D9527          HEX    C48D80
D952A          HEX    C48C80
D952D          HEX    C48D0B
D9530          HEX    C48D0E
D9533          HEX    C460
SUB9535        LDX    #$95
               LDY    #$72
               STX    L9350+2
               STX    D9353+2
               STY    L9350+1
               STY    D9353+1
               RTS
               HEX    38A202A9009DC7959DDD95CAE0FFD0F5
               HEX    A9078E03
D955A          HEX    C48E83
D955D          HEX    C48D02
D9560          HEX    C48D82
D9563          HEX    C46000000000000000000000
SUB956F        JSR    SUB95AC
               LDY    #$00
L9574          STY    $C401
D9577          STY    $C481
               LDA    #$07
D957C          STA    $C400
D957F          STA    $C480
               LDA    #$04
D9584          STA    $C400
D9587          STA    $C480
               LDA    D95BF,Y
D958D          STA    $C401
               LDA    D95D3,Y
D9593          STA    $C481
               LDA    #$06
D9598          STA    $C400
D959B          STA    $C480
               LDA    #$04
D95A0          STA    $C400
D95A3          STA    $C480
               INY
               CPY    #$10
               BCC    L9574
               RTS
SUB95AC        LDA    #$00
               LDX    #$04
D95B0          STA    $C400
D95B3          STX    $C400
D95B6          STA    $C480
D95B9          STX    $C480
               RTS
               HEX    0000
D95BF          HEX    00
D95C0          HEX    00
D95C1          HEX    00
D95C2          HEX    00
D95C3          HEX    00
D95C4          HEX    000038
D95C7          HEX    00
D95C8          HEX    00
D95C9          HEX    00000000000000000000
D95D3          HEX    00
D95D4          HEX    00
D95D5          HEX    00
D95D6          HEX    00
D95D7          HEX    00
D95D8          HEX    000038
D95DB          HEX    00
D95DC          HEX    00
D95DD          HEX    00000000000000000000000000000000
               HEX    000000000000000000
D95F6          JMP    L91FB
               HEX    4CD594784CAC95
