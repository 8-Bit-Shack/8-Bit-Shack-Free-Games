************************************************************
* witch_trial - SYSCHECK (disassembly)
*
* Disassembled from the original binary (477 bytes, $4000-$41DC).
* Reconstructed source: labels are generated, comments are minimal.
* Bytes the disassembler could not prove to be code are emitted as HEX/ASC data.
* Original program by its authors; see ../README.txt for attribution and terms.
* Entry point(s): $4000 (65C02 code allowed: XC).
************************************************************

               XC
               ORG    $4000

PREAD          EQU    $FB1E

START          LDA    #$00
               STA    $0300
               JSR    SUB410D
               LDA    $0392
               CMP    #$38
               BEQ    L4015
               CMP    #$EA
               BEQ    L4015
               BNE    L401B
L4015          LDA    #$01
               STA    $0300
               RTS
L401B          JSR    SUB414D
               LDA    $0398
               BNE    L4028
               LDA    #$02
               STA    $0300
L4028          LDA    #$00
               STA    $3C
               LDA    #$40
               STA    $3D
               LDA    #$01
               STA    $3E
               LDA    #$40
               STA    $3F
               LDA    #$00
               STA    $42
               LDA    #$40
               STA    $43
               SEC
               JSR    $C311
               LDA    #$00
               STA    $5000
               LDA    #$00
               STA    $3C
               LDA    #$40
               STA    $3D
               LDA    #$01
               STA    $3E
               LDA    #$40
               STA    $3F
               LDA    #$00
               STA    $42
               LDA    #$50
               STA    $43
               CLC
               JSR    $C311
               LDA    $5000
               CMP    #$A9
               BEQ    L4071
               LDA    #$03
               STA    $0300
L4071          JSR    SUB415C
               JSR    SUB416E
               LDA    $039B
               ORA    $039C
               BNE    L4089
               LDA    $0300
               BNE    L4089
               LDA    #$04
               STA    $0300
L4089          JSR    SUB419E
               RTS
               HEX    A200BD00209D0004BD80209D8004BD00
               HEX    219D0005BD80219D8005BD00229D0006
               HEX    BD80229D8006BD00239D0007BD80239D
               HEX    8007BD28209D2804BDA8209DA804BD28
               HEX    219D2805BDA8219DA805BD28229D2806
               HEX    BDA8229DA806BD28239D2807BDA8239D
               HEX    A807BD50209D5004BDD0209DD004BD50
               HEX    219D5005BDD0219DD005E8E028D08360
SUB410D        LDA    $FBB3
               CMP    #$06
               BEQ    L4118
               STA    $0392
               RTS
L4118          LDA    $FBC0
               BEQ    L4149
               SEC
               JSR    $FE1F
               BCS    L4143
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
L4143          LDA    #$7F
               STA    $0392
               RTS
L4149          STA    $0392
               RTS
SUB414D        LDA    #$00
               BRA    L4153
               HEX    F005
L4153          INC
               HEX    EB3AEB1A8D980360
SUB415C        LDA    #$00
               STA    $039B
               LDX    #$00
               JSR    PREAD
               CPY    #$FF
               BEQ    L416D
               INC    $039B
L416D          RTS
SUB416E        LDA    #$00
               STA    $039C
               STA    $08
               LDA    #$C7
L4177          STA    $09
               LDX    #$04
L417B          LDY    D4194,X
               LDA    ($08),Y
               CMP    D4199,X
               BNE    L418C
               DEX
               BPL    L417B
               INC    $039C
               RTS
L418C          LDA    $09
               DEC
               CMP    #$C0
               BNE    L4177
               RTS
D4194          HEX    05070B0CFB
D4199          HEX    38180120D6
SUB419E        LDA    #$FF
               STA    $C403
               STA    $C404
               LDA    #$00
               STA    $08
L41AA          LDA    #$07
               STA    $0301
               ORA    #$C0
               STA    $09
               LDY    #$04
               LDX    #$02
L41B7          LDA    ($08),Y
               STA    $FF
               LDA    ($08),Y
               SEC
               SBC    $FF
               CMP    #$F8
               BEQ    L41CC
               CMP    #$F9
               BEQ    L41CC
               CMP    #$F7
               BNE    L41D4
L41CC          DEX
               BNE    L41B7
               INX
L41D0          STX    $0390
               RTS
L41D4          DEC    L41AA+1
               BNE    L41AA
               LDX    #$00
               BEQ    L41D0
