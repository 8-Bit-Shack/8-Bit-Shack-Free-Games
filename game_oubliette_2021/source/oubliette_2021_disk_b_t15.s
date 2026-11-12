************************************************************
* oubliette_2021 - T15 (disassembly)
*
* Disassembled from the original binary (978 bytes, $7530-$7901).
* Reconstructed source: labels are generated, comments are minimal.
* Bytes the disassembler could not prove to be code are emitted as HEX/ASC data.
* Original program by its authors; see ../README.txt for attribution and terms.
* Entry point(s): $7530, $7608, $7626, $76A4, $7722 (NMOS 6502 opcodes only).
************************************************************

               ORG    $7530

STROBE         EQU    $C010

START          JMP    L7574
               HEX    000000000000
L7539          HEX    0000
L753B          HEX    0000
L753D          HEX    0000
L753F          HEX    0000
L7541          HEX    0000
L7543          HEX    0000
L7545          HEX    0000
L7547          HEX    0000
L7549          HEX    0000
L754B          HEX    0000
L754D          HEX    0000
L754F          HEX    0000
L7551          HEX    0000
L7553          HEX    0000
L7555          HEX    0000
L7557          HEX    0000
L7559          HEX    0000
L755B          HEX    0000
L755D          HEX    0000
L755F          HEX    0000
L7561          HEX    0000
L7563          HEX    0000
L7565          HEX    0000
L7567          HEX    0000
L7569          HEX    0000
L756B          HEX    0000
L756D          HEX    0000
L756F          HEX    0000
L7571          HEX    000000
L7574          LDX    #$41
               LDA    #$00
L7578          STA    $7532,X
               DEX
               BNE    L7578
               JSR    $16D0
               LDA    #$00
               STA    L7539
               LDA    #$00
               STA    L753B
               LDA    #$28
               STA    L753D
               LDA    #$00
               STA    L753F
               LDA    #$50
               STA    L7541
               LDA    #$00
               STA    L7543
               LDA    #$78
               STA    L7545
               LDA    #$00
               STA    L7547
               LDA    #$A0
               STA    L7549
               LDA    #$00
               STA    L754B
               LDA    #$00
               STA    L754D
               LDA    #$28
               STA    L754F
               LDA    #$28
               STA    L7551
               LDA    #$28
               STA    L7553
               LDA    #$50
               STA    L7555
               LDA    #$28
               STA    L7557
               LDA    #$78
               STA    L7559
               LDA    #$28
               STA    L755B
               LDA    #$A0
               STA    L755D
               LDA    #$28
               STA    L755F
               LDA    #$00
               STA    L7561
               LDA    #$50
               STA    L7563
               LDA    #$28
               STA    L7565
               LDA    #$50
               STA    L7567
               LDA    #$50
               STA    L7569
               LDA    #$50
               STA    L756B
               LDA    #$64
               STA    $F9
               RTS
L7608          JSR    $1167
               JSR    $1252
               LDA    #$00
               STA    STROBE
               JSR    $16D0
               JSR    $11C6
               JSR    L781E
               JSR    $16D0
               JSR    $1252
               RTS
               HEX    4CD003
L7626          SEC
               LDA    L7539
               SBC    #$02
               STA    L7539
               SEC
               LDA    L753D
               SBC    #$02
               STA    L753D
               SEC
               LDA    L7541
               SBC    #$02
               STA    L7541
               SEC
               LDA    L7545
               SBC    #$02
               STA    L7545
               SEC
               LDA    L7549
               SBC    #$02
               STA    L7549
               SEC
               LDA    L754D
               SBC    #$02
               STA    L754D
               SEC
               LDA    L7551
               SBC    #$02
               STA    L7551
               SEC
               LDA    L7555
               SBC    #$02
               STA    L7555
               SEC
               LDA    L7559
               SBC    #$02
               STA    L7559
               SEC
               LDA    L755D
               SBC    #$02
               STA    L755D
               SEC
               LDA    L7561
               SBC    #$02
               STA    L7561
               SEC
               LDA    L7565
               SBC    #$02
               STA    L7565
               SEC
               LDA    L7569
               SBC    #$02
               STA    L7569
               LDA    #$01
               STA    L756D
               INC    L756F
               RTS
L76A4          CLC
               LDA    #$02
               ADC    L7539
               STA    L7539
               CLC
               LDA    #$02
               ADC    L753D
               STA    L753D
               CLC
               LDA    #$02
               ADC    L7541
               STA    L7541
               CLC
               LDA    #$02
               ADC    L7545
               STA    L7545
               CLC
               LDA    #$02
               ADC    L7549
               STA    L7549
               CLC
               LDA    #$02
               ADC    L754D
               STA    L754D
               CLC
               LDA    #$02
               ADC    L7551
               STA    L7551
               CLC
               LDA    #$02
               ADC    L7555
               STA    L7555
               CLC
               LDA    #$02
               ADC    L7559
               STA    L7559
               CLC
               LDA    #$02
               ADC    L755D
               STA    L755D
               CLC
               LDA    #$02
               ADC    L7561
               STA    L7561
               CLC
               LDA    #$02
               ADC    L7565
               STA    L7565
               CLC
               LDA    #$02
               ADC    L7569
               STA    L7569
               LDA    #$02
               STA    L756D
               DEC    L756F
               RTS
L7722          SEC
               LDA    L753B
               SBC    #$02
               STA    L753B
               SEC
               LDA    L753F
               SBC    #$02
               STA    L753F
               SEC
               LDA    L7543
               SBC    #$02
               STA    L7543
               SEC
               LDA    L7547
               SBC    #$02
               STA    L7547
               SEC
               LDA    L754B
               SBC    #$02
               STA    L754B
               SEC
               LDA    L754F
               SBC    #$02
               STA    L754F
               SEC
               LDA    L7553
               SBC    #$02
               STA    L7553
               SEC
               LDA    L7557
               SBC    #$02
               STA    L7557
               SEC
               LDA    L755B
               SBC    #$02
               STA    L755B
               SEC
               LDA    L755F
               SBC    #$02
               STA    L755F
               SEC
               LDA    L7563
               SBC    #$02
               STA    L7563
               SEC
               LDA    L7567
               SBC    #$02
               STA    L7567
               SEC
               LDA    L756B
               SBC    #$02
               STA    L756B
               LDA    #$03
               STA    L756D
               INC    L7571
               RTS
               HEX    18A9026D3B758D3B7518A9026D3F758D
               HEX    3F7518A9026D43758D437518A9026D47
               HEX    758D477518A9026D4B758D4B7518A902
               HEX    6D4F758D4F7518A9026D53758D537518
               HEX    A9026D57758D577518A9026D5B758D5B
               HEX    7518A9026D5F758D5F7518A9026D6375
               HEX    8D637518A9026D67758D677518A9026D
               HEX    6B758D6B75A9048D6D75CE717560
L781E          JSR    $16D0
               JSR    $1888
               LDA    L7539
               STA    $FA
               LDA    L753B
               STA    $FB
               LDA    #$40
               STA    $FC
               JSR    L78FE
               LDA    L753D
               STA    $FA
               LDA    L753F
               STA    $FB
               LDA    #$44
               STA    $FC
               JSR    L78FE
               LDA    L7541
               STA    $FA
               LDA    L7543
               STA    $FB
               LDA    #$48
               STA    $FC
               JSR    L78FE
               LDA    L7545
               STA    $FA
               LDA    L7547
               STA    $FB
               LDA    #$4C
               STA    $FC
               JSR    L78FE
               LDA    L7549
               STA    $FA
               LDA    L754B
               STA    $FB
               LDA    #$50
               STA    $FC
               JSR    L78FE
               LDA    L754D
               STA    $FA
               LDA    L754F
               STA    $FB
               LDA    #$54
               STA    $FC
               JSR    L78FE
               LDA    L7551
               STA    $FA
               LDA    L7553
               STA    $FB
               LDA    #$58
               STA    $FC
               JSR    L78FE
               LDA    L7555
               STA    $FA
               LDA    L7557
               STA    $FB
               LDA    #$5C
               STA    $FC
               JSR    L78FE
               LDA    L7559
               STA    $FA
               LDA    L755B
               STA    $FB
               LDA    #$60
               STA    $FC
               JSR    L78FE
               LDA    L755D
               STA    $FA
               LDA    L755F
               STA    $FB
               LDA    #$64
               STA    $FC
               JSR    L78FE
               LDA    L7561
               STA    $FA
               LDA    L7563
               STA    $FB
               LDA    #$68
               STA    $FC
               JSR    L78FE
               LDA    L7565
               STA    $FA
               LDA    L7567
               STA    $FB
               LDA    #$6C
               STA    $FC
               JSR    L78FE
               LDA    L7569
               STA    $FA
               LDA    L756B
               STA    $FB
               LDA    #$70
               STA    $FC
L78FE          JSR    $16DA
               RTS
