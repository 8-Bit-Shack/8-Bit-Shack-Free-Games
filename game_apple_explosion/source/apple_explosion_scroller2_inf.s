************************************************************
* apple_explosion - SCROLLER2.INF (disassembly)
*
* Disassembled from the original binary (445 bytes, $88B8-$8A74).
* Reconstructed source: labels are generated, comments are minimal.
* Bytes the disassembler could not prove to be code are emitted as HEX/ASC data.
* Original program by its authors; see ../README.txt for attribution and terms.
* Entry point(s): $88B8, $891C (NMOS 6502 opcodes only).
************************************************************

               ORG    $88B8

START          LDA    #$00
               TAX
L88BB          STA    $024E,X
               INX
               CPX    #$0A
               BNE    L88BB
               LDA    #$10
               STA    $8C8D
               LDA    #$27
               STA    $8C8E
L88CD          LDA    #$00
               STA    $024E
               JSR    L8A5C
               CMP    #$FA
               BNE    L88DC
               JMP    L88E6
L88DC          CMP    #$10
               BCS    L890D
               JSR    L8A07
               JMP    L88CD
L88E6          INC    $024F
               LDA    #$00
               STA    $0250
               LDA    $024F
               CMP    #$28
               BEQ    L88F8
               JMP    L88CD
L88F8          LDA    #$C8
               STA    $0251
               RTS
               HEX    0000000000
L8903          SEC
               SBC    #$10
               INC    $024E
               RTS
               HEX    000000
L890D          JSR    L8903
               JMP    L88DC
               HEX    000000000000000000
L891C          LDA    $0251
               CMP    #$C8
               BNE    L8926
               JMP    L893C
L8926          LDA    #$01
               STA    $0252
L892B          JSR    L8A5C
               CMP    #$FA
               BNE    L892B
               INC    $0252
               LDA    $0252
               CMP    #$29
               BNE    L892B
L893C          LDA    #$C8
               STA    $0251
               JSR    $91C8
               LDA    #$27
               STA    $024F
               JSR    L8962
               JSR    L89E4
               JSR    L8A5C
               RTS
               HEX    000000000020488A205C8A20488A60
L8962          LDA    #$00
               STA    $0250
               LDA    #$06
               JSR    $F864
               LDY    $024F
               LDA    #$27
               STA    $2D
               LDA    #$00
               JMP    $F828
               HEX    0000000000000000AD5102C964D0034C
               HEX    A089A9018D5202205889C9FAD0F9EE52
               HEX    02AD5202C929D0EFA9648D5102203A93
               HEX    A9008D4F02206289205889C9FAD0F920
               HEX    5889C9FAD0F9205C8A20E4896000
L89C6          LDA    $0250
               CMP    #$30
               BCC    L89D3
               DEC    $0250
               JMP    L89C6
L89D3          STA    $2D
               TXA
               JMP    $F828
               HEX    0000000000000000000000
L89E4          LDA    #$00
               STA    $024E
               JSR    L8A5C
               CMP    #$FA
               BNE    L89F4
               JSR    L8A48
               RTS
L89F4          CMP    #$10
               BCS    L89FE
               JSR    L8A07
               JMP    L89E4
L89FE          JSR    L8903
               JMP    L89F4
               HEX    000000
L8A07          JSR    $F864
               CLC
               LDY    $024F
               LDX    $0250
               TXA
               ADC    $024E
               STA    $0250
               JMP    L89C6
               HEX    000000000020B888A9008D10C0AD00C0
               HEX    C98090F9C995F007C988F0094C238A20
               HEX    1C894C238A2080894C238A0000
L8A48          LDX    $8A5D
               CPX    #$00
               BEQ    L8A54
L8A4F          DEC    $8A5D
               CLC
               RTS
L8A54          DEC    $8A5E
               JMP    L8A4F
               HEX    0000
L8A5C          LDA    |$0000
               LDY    $8A5D
               CPY    #$FF
               BNE    L8A6A
               INC    $8A5E
               CLC
L8A6A          INC    $8A5D
               RTS
               HEX    0000FFFF0000FF
