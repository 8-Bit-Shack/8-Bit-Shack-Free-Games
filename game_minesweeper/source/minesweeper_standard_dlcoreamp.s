************************************************************
* minesweeper - DLCOREAMP (disassembly)
*
* Disassembled from the original binary (8736 bytes, $7000-$921F).
* Reconstructed source: labels are generated, comments are minimal.
* Bytes the disassembler could not prove to be code are emitted as HEX/ASC data.
* Original program by its authors; see ../README.txt for attribution and terms.
* Entry point(s): $7000, $7043, $704C, $704F, $7055, $70F0 (NMOS 6502 opcodes only).
************************************************************

               ORG    $7000

KEYBD          EQU    $C000
RAMRDOFF       EQU    $C002
RAMRDON        EQU    $C003
RAMWRTOFF      EQU    $C004
RAMWRTON       EQU    $C005
CLR80VID       EQU    $C00C
SET80VID       EQU    $C00D
STROBE         EQU    $C010
RDVBL          EQU    $C019
TXTCLR         EQU    $C050
TXTSET         EQU    $C051
MIXCLR         EQU    $C052
MIXSET         EQU    $C053
LOWSCR         EQU    $C054
HISCR          EQU    $C055
AN3OFF         EQU    $C05E
AN3ON          EQU    $C05F
HOME           EQU    $FC58
COUT           EQU    $FDED

START          JSR    SUB8366
               LDA    #$4C
               STA    $03F5
               LDA    #$F0
               STA    $03F6
               LDA    #$70
               STA    $03F7
               RTS
               HEX    4C96704CD2704C307D4C787D4CEA7E4C
               HEX    D77F4CF37F4C91804C3B814C79824CEB
               HEX    824C89834C91844C93854CB2864CD586
D7043          JMP    SUB7CFE
               HEX    4CDA7C4CC577
D704C          JMP    SUB781C
D704F          JMP    L731B
               HEX    4C7D7B
D7055          JMP    L7362
               HEX    00000000000000000000000000000000
D7068          HEX    000000
D706B          HEX    00
D706C          HEX    00
D706D          HEX    0000
D706F          HEX    00
D7070          HEX    0000
D7072          HEX    000000
D7075          HEX    000000000000000000
D707E          HEX    00
D707F          HEX    00
D7080          HEX    00
D7081          HEX    00
D7082          HEX    00
D7083          HEX    00
D7084          HEX    0001
D7086          HEX    00
D7087          HEX    00
D7088          HEX    00
D7089          HEX    0000
D708B          HEX    0000
D708D          HEX    00
D708E          HEX    00
D708F          HEX    00
D7090          HEX    0000
D7092          HEX    00
D7093          HEX    00
D7094          HEX    00
D7095          HEX    00
SUB7096        LDA    STROBE
               JSR    $C300
               LDA    TXTCLR
               STA    SET80VID
               LDA    AN3OFF
               STA    MIXCLR
               STA    KEYBD
               LDA    LOWSCR
               LDA    #$00
               JSR    SUB8865
               JSR    SUB9000
               JSR    SUB88F2
               JSR    SUB9029
               LDA    #$01
               STA    D7068
               LDA    #$2F
               STA    D7082
               LDA    #$F0
               STA    $36
               LDA    #$FD
               STA    $37
               JSR    $03EA
               RTS
SUB70D2        LDA    STROBE
               STA    KEYBD
               STA    CLR80VID
               LDA    AN3ON
               LDA    TXTSET
               LDA    LOWSCR
               JSR    $F399
               JSR    HOME
               LDX    #$00
               JSR    $FE95
               RTS
D70F0          STA    KEYBD
               CMP    #$88
               BNE    L70FA
               JMP    L741A
L70FA          CMP    #$89
               BNE    L7101
               JMP    L7420
L7101          CMP    #$8D
               BNE    L7108
               JMP    L7456
L7108          CMP    #$8F
               BNE    L710F
               JMP    L7491
L710F          CMP    #$D7
               BNE    L7116
               JMP    L74DD
L7116          CMP    #$A0
               BNE    L711D
               JMP    L751F
L711D          CMP    #$8E
               BNE    L7124
               JMP    L7531
L7124          CMP    #$46
               BNE    L712B
               JMP    L757D
L712B          CMP    #$53
               BNE    L7132
               JMP    L742C
L7132          CMP    #$44
               BNE    L7139
               JMP    L7441
L7139          CMP    #$4C
               BNE    L7140
               JMP    L75C2
L7140          CMP    #$43
               BNE    L7147
               JMP    L7631
L7147          CMP    #$52
               BNE    L714E
               JMP    L7714
L714E          CMP    #$48
               BNE    L7155
               JMP    L75BC
L7155          CMP    #$4D
               BNE    L715C
               JMP    L7426
L715C          CMP    #$54
               BNE    L7163
               JMP    L73E9
L7163          CMP    #$47
               BNE    L716A
               JMP    L73FF
L716A          CMP    #$B7
               BNE    L7171
               JMP    L73D1
L7171          CMP    #$A8
               BNE    L7178
               JMP    L7387
L7178          CMP    #$94
               BNE    L717F
               JMP    L72C2
L717F          CMP    #$85
               BNE    L7186
               JMP    L7348
L7186          CMP    #$E5
               BNE    L718D
               JMP    L72A7
L718D          CMP    #$BE
               BNE    L7194
               JMP    L724D
L7194          CMP    #$56
               BNE    L719B
               JMP    L719E
L719B          JMP    $DEC9
L719E          LDX    #$D9
               LDY    #$71
               JSR    SUB71C5
               JSR    SUB71BF
               LDX    #$FE
               LDY    #$71
               JSR    SUB71C5
               JSR    SUB71BF
               LDX    #$25
               LDY    #$72
               JSR    SUB71C5
               JSR    SUB71BF
               JMP    L77BF
SUB71BF        LDA    #$8D
               JSR    COUT
               RTS
SUB71C5        STX    L71CD+1
               STY    L71CD+2
               LDX    #$00
L71CD          LDA    $1000,X
               BEQ    L71D8
               JSR    COUT
               INX
               BNE    L71CD
L71D8          RTS
               HEX    C4CFCCCFD2C5D3A0D6B1B2AEB1A0E2F9
               HEX    A0B8ADC2C9D4ADD3C8C1C3CBA0B0B6AF
               HEX    B2B0B2B100D4E8F8A0F4EFBAA0D2EFE2
               ASC    "y Sherman, Daniel Henderson"
               HEX    00E1EEE4A0C6F2E1EEE3EFE9F3A0D6E1
               ASC    "nder Linden for support!"
               HEX    00
L724D          JSR:   $B1
               JSR    $DD67
               JSR    $E752
               LDA    $50
               STA    D7093
               JSR    $DEBE
               JSR    $DD67
               JSR    $E752
               LDA    $50
               STA    D708D
               JSR    $DEBE
               JSR    $DD67
               JSR    $E752
               LDA    $50
               STA    D708F
               JSR    $DEBE
               JSR    $DD67
               JSR    $E752
               LDA    $50
               STA    D708E
               JSR    $DEBE
               JSR    $DD67
               JSR    $E752
               LDA    $50
               STA    D7090
               JSR    $DEBE
               JSR    $DD67
               JSR    $E752
               LDA    $50
               STA    D708B
               JSR    SUB77C5
               JMP    L77BF
L72A7          JSR:   $B1
               JSR    $DD67
               JSR    $E752
               LDA    $50
               STA    D708B
               CMP    #$11
               BCC    L72BC
               JMP    L77C2
L72BC          JSR    SUB781C
               JMP    L77BF
L72C2          JSR:   $B1
               JSR    $DD67
               JSR    $E752
               LDA    $50
               STA    D7093
               BNE    L72D5
               JMP    L77C2
L72D5          CMP    #$11
               BCC    L72DC
               JMP    L77C2
L72DC          JSR    SUB79BF
               JSR    $DEBE
               JSR    $DD67
               JSR    $E752
               LDY    #$05
               LDA    $C083
               LDA    $C083
               LDA    $50
               STA    D7094
               STA    ($1B),Y
               LDA    $C082
               JSR    $DEBE
               JSR    $DD67
               JSR    $E752
               LDY    #$06
               LDA    $C083
               LDA    $C083
               LDA    $50
               STA    D7095
               STA    ($1B),Y
               LDA    $C082
               JSR    SUB79E2
               JMP    L77BF
L731B          JSR    SUB79BF
               LDY    #$05
               LDA    D7094
               PHA
               LDA    $C083
               LDA    $C083
               PLA
               STA    ($1B),Y
               LDA    $C082
               LDY    #$06
               LDA    D7095
               PHA
               LDA    $C083
               LDA    $C083
               PLA
               STA    ($1B),Y
               LDA    $C082
               JSR    SUB79E2
               JMP    L77BF
L7348          JSR:   $B1
               JSR    $DD67
               JSR    $E752
               LDA    $50
               STA    D7093
               BNE    L735B
               JMP    L77C2
L735B          CMP    #$11
               BCC    L7362
               JMP    L77C2
L7362          STA    KEYBD
               JSR    SUB79BF
               LDY    #$05
               LDA    $C080
               LDA    ($1B),Y
               STA    D7094
               LDA    $C082
               INY
               LDA    $C080
               LDA    ($1B),Y
               STA    D7095
               LDA    $C082
               JSR    SUB7AC4
               JMP    L77BF
L7387          JSR:   $B1
               JSR    $DD67
               JSR    $E752
               LDA    $50
               STA    D7093
               BNE    L739A
               JMP    L77C2
L739A          CMP    #$11
               BCC    L73A1
               JMP    L77C2
L73A1          JSR    $DEBE
               JSR    $DD67
               JSR    $E752
               LDA    $50
               STA    D7088
               JSR    $DEBE
               JSR    $DD67
               JSR    $E752
               LDA    $50
               STA    D7089
               JSR    $DEBE
               JSR    $DD67
               JSR    $E752
               LDA    $50
               STA    D708B
               JSR    SUB7B7D
               JMP    L77BF
L73D1          JSR:   $B1
               JSR    $E6F8
               STX    D7083
               JSR    $DEBE
               JSR    $E6F8
               STX    D7084
               JSR    SUB7D78
               JMP    L77BF
L73E9          LDA    #$01
               STA    D7083
               LDA    #$03
               STA    D7084
               JSR    SUB7D78
               JSR    SUB7EEA
               LDA    TXTSET
               JMP    L77BF
L73FF          LDA    TXTCLR
               LDA    #$2F
               STA    D7082
               LDA    MIXCLR
               LDA    #$03
               STA    D7083
               LDA    #$01
               STA    D7084
               JSR    SUB7D78
               JMP    L77BF
L741A          JSR    SUB7096
               JMP    L77BF
L7420          JSR    SUB70D2
               JMP    L77BF
L7426          JSR    SUB7CFE
               JMP    L77BF
L742C          JSR:   $B1
               JSR    $E6F8
               STX    $E9
               CPX    #$03
               BCC    L743B
               JMP    L77C2
L743B          JSR    SUB7FD7
               JMP    L77BF
L7441          JSR:   $B1
               JSR    $E6F8
               STX    $E9
               CPX    #$04
               BCC    L7450
               JMP    L77C2
L7450          JSR    SUB7D30
               JMP    L77BF
L7456          JSR:   $B1
               JSR    $E6F8
               STX    $E0
               JSR    $DEBE
               JSR    $E6F8
               STX    $E1
               CMP    #$2C
               BNE    L7479
               JSR    $DEBE
               JSR    $E6F8
               STX    $E3
               CPX    #$10
               BCC    L7479
               JMP    L77C2
L7479          LDA    $E0
               CMP    #$50
               BCC    L7482
               JMP    L77C2
L7482          LDA    $E1
               CMP    #$30
               BCC    L748B
               JMP    L77C2
L748B          JSR    SUB82EB
               JMP    L77BF
L7491          JSR:   $B1
               JSR    $E6F8
               STX    $E1
               JSR    $DEBE
               JSR    $E6F8
               STX    $E8
               JSR    $DEBE
               JSR    $E6F8
               STX    $E0
               CMP    #$2C
               BNE    L74BC
               JSR    $DEBE
               JSR    $E6F8
               STX    $E3
               CPX    #$10
               BCC    L74BC
               JMP    L77C2
L74BC          LDA    $E0
               CMP    #$50
               BCC    L74C5
               JMP    L77C2
L74C5          LDA    $E1
               CMP    #$30
               BCC    L74CE
               JMP    L77C2
L74CE          LDA    $E8
               CMP    #$30
               BCC    L74D7
               JMP    L77C2
L74D7          JSR    SUB813B
               JMP    L77BF
L74DD          JSR:   $B1
               JSR    $E6F8
               STX    $E0
               JSR:   $B1
               JSR    $E6F8
               STX    $E1
               JSR:   $B1
               JSR    $DFE3
               JSR    $EAF9
               JSR    $DD6A
               JSR:   $B1
               LDA    $E0
               CMP    #$50
               BCC    L7505
               JMP    L77C2
L7505          LDA    $E1
               CMP    #$30
               BCC    L750E
               JMP    L77C2
L750E          JSR    SUB8279
               LDY    #$00
               LDA    #$00
               STA    ($83),Y
               LDA    $E9
               INY
               STA    ($83),Y
               JMP    L77BF
L751F          JSR:   $B1
               JSR    $E6F8
               CPX    #$10
               BCC    L752C
               JMP    L77C2
L752C          STX    $E3
               JMP    L77BF
L7531          JSR:   $B1
               JSR    $E6F8
               STX    $E0
               JSR    $DEBE
               JSR    $E6F8
               STX    $E7
               JSR    $DEBE
               JSR    $E6F8
               STX    $E1
               CMP    #$2C
               BNE    L755C
               JSR    $DEBE
               JSR    $E6F8
               STX    $E3
               CPX    #$10
               BCC    L755C
               JMP    L77C2
L755C          LDA    $E0
               CMP    #$50
               BCC    L7565
               JMP    L77C2
L7565          LDA    $E1
               CMP    #$30
               BCC    L756E
               JMP    L77C2
L756E          LDA    $E7
               CMP    #$50
               BCC    L7577
               JMP    L77C2
L7577          JSR    SUB8091
               JMP    L77BF
L757D          JSR:   $B1
               JSR    $E6F8
               STX    D707E
               JSR    $DEBE
               JSR    $E6F8
               STX    D707F
               CMP    #$2C
               BNE    L75A2
               JSR    $DEBE
               JSR    $E6F8
               STX    $E3
               CPX    #$10
               BCC    L75A2
               JMP    L77C2
L75A2          LDA    D707E
               CMP    #$50
               BCC    L75AC
               JMP    L77C2
L75AC          LDA    D707F
               CMP    #$30
               BCC    L75B6
               JMP    L77C2
L75B6          JSR    SUB86D5
               JMP    L77BF
L75BC          JSR    SUB7FF3
               JMP    L77BF
L75C2          JSR:   $B1
               JSR    $E6F8
               STX    $E0
               JSR    $DEBE
               JSR    $E6F8
               STX    $E1
               JSR    $DEBE
               JSR    $E6F8
               STX    $E7
               JSR    $DEBE
               JSR    $E6F8
               STX    $E8
               CMP    #$2C
               BNE    L75F5
               JSR    $DEBE
               JSR    $E6F8
               STX    $E3
               CPX    #$10
               BCC    L75F5
               JMP    L77C2
L75F5          LDA    $E0
               CMP    #$50
               BCC    L75FE
               JMP    L77C2
L75FE          LDA    $E1
               CMP    #$30
               BCC    L7607
               JMP    L77C2
L7607          LDA    $E8
               CMP    #$30
               BCC    L7610
               JMP    L77C2
L7610          LDA    $E7
               CMP    #$50
               BCC    L7619
               JMP    L77C2
L7619          LDA    $E0
               CMP    $E7
               BNE    L762B
               LDA    $E1
               CMP    $E8
               BNE    L762B
               JSR    SUB82EB
               JMP    L77BF
L762B          JSR    SUB8389
               JMP    L77BF
L7631          HEX    9C7B709C7D7020B10020F8E686EC20BE
               HEX    DE20F8E686ED20BEDE20F8E68E7A70C9
               HEX    2CD01220BEDE20F8E686E3E01090034C
               HEX    C277EE7B70C92CD01320BEDE20F8E68E
               HEX    7C70E01090034CC277EE7B70A5ECC950
               HEX    90034CC277A5EDC93090034CC277AD7A
               HEX    70C95090034CC277AD7A70C5EC900280
               HEX    3CC5ED900280361865ECC9509002802D
               HEX    18AD7A7065EDCD8270F0049002801EA9
               HEX    4C8D53808DD682A9918D5480A9808D55
               HEX    80A9EB8DD782A9828DD8828018A9A58D
               HEX    53808DD682A9E08D54808DD782A9EA8D
               HEX    55808DD882AD7B70F013209385AD7C70
               HEX    85E3CE7B70AD7B70D0034CBF77209184
               HEX    4CBF77
L7714          HEX    9C7B7020B10020F8E686E020BEDE20F8
               HEX    E686E1860920BEDE20F8E686E720BEDE
               HEX    20F8E686E8861FC92CD01220BEDE20F8
               HEX    E686E3E01090034CC277EE7B70C92CD0
               HEX    1320BEDE20F8E68E7C70E01090034CC2
               HEX    77EE7B70A5E0C95090034CC277A5E1C9
               HEX    3090034CC277A5E7C95090034CC277A5
               HEX    E8C93090034CC277A5E0C5E7D00CA5E1
               HEX    C5E8D00620EB824CBF77AD7B70F01320
               HEX    B286AD7C7085E3CE7B70AD7B70D0034C
               HEX    BF7720DA7C4CBF7720DDFB
L77BF          JMP    $D995
L77C2          JMP    $E199
SUB77C5        INC    D708E
               INC    D7090
               LDA    D708E
               SEC
               SBC    D708D
               STA    D7088
               LDA    D7090
               SEC
               SBC    D708F
               STA    D7089
               LDA    #$00
               STA    $FE
               LDA    #$95
               STA    $FF
               HEX    640AAD8F708508A50885E1AD8D708509
               HEX    A50985E0207982A5E9A40A91FEE60AE6
               HEX    09A509CD8E7090E8E608A508CD907090
               HEX    D6207D7B60
SUB781C        LDX    #$00
               LDA    #$00
L7820          STA    D8E00,X
               STA    D8F00,X
               INX
               BNE    L7820
               LDA    D708B
               CMP    #$10
               BNE    L7831
               RTS
L7831          LDA    D708B
               ASL
               ASL
               ASL
               ASL
               TAX
               LDY    #$10
L783B          LDA    D8E00,X
               ORA    #$F0
               STA    D8E00,X
               INX
               DEY
               BNE    L783B
               LDA    D708B
               TAX
               LDY    #$10
L784D          LDA    D8E00,X
               ORA    #$0F
               STA    D8E00,X
               TXA
               CLC
               ADC    #$10
               TAX
               DEY
               BNE    L784D
               LDX    D708B
               LDA    D7890,X
               ASL
               ASL
               ASL
               ASL
               TAX
               LDY    #$10
L786A          LDA    D8F00,X
               ORA    #$F0
               STA    D8F00,X
               INX
               DEY
               BNE    L786A
               LDX    D708B
               LDA    D7890,X
               TAX
               LDY    #$10
L787F          LDA    D8F00,X
               ORA    #$0F
               STA    D8F00,X
               TXA
               CLC
               ADC    #$10
               TAX
               DEY
               BNE    L787F
               RTS
D7890          HEX    00080109020A030B040C050D060E070F
SUB78A0        LDA    D7095
               LSR
               STA    D7087
               LDA    D7094
               LSR
               STA    D7086
               JSR    SUB79BF
               LDA    D7094
               AND    #$01
               BNE    L78DD
               LDA    D7095
               AND    #$01
               BNE    L790F
               JSR    SUB7965
               LDY    #$00
               LDA    ($1B),Y
               STA    D7088
               INY
               INY
               INY
               STA    ($1B),Y
               DEY
               DEY
               LDA    ($1B),Y
               STA    D7089
               INY
               INY
               INY
               STA    ($1B),Y
               JMP    L7964
L78DD          LDA    D7095
               AND    #$01
               BNE    L793A
               CLC
               LDA    $E7
               ADC    #$A0
               STA    $E7
               LDA    $E8
               ADC    #$00
               STA    $E8
               JSR    SUB7965
               LDY    #$00
               LDA    ($1B),Y
               HEX    1A8D8870C8C8C8911B8888B11B8D8970
               HEX    C8C8C8911B8055
L790F          CLC
               LDA    $E7
               ADC    #$40
               STA    $E7
               LDA    $E8
               ADC    #$01
               STA    $E8
               JSR    SUB7965
               LDY    #$00
               LDA    ($1B),Y
               STA    D7088
               INY
               INY
               INY
               STA    ($1B),Y
               DEY
               DEY
               LDA    ($1B),Y
               HEX    1A8D8970C8C8C8911B802A
L793A          CLC
               LDA    $E7
               ADC    #$E0
               STA    $E7
               LDA    $E8
               ADC    #$01
               STA    $E8
               JSR    SUB7965
               LDY    #$00
               LDA    ($1B),Y
               HEX    1A8D8870C8C8C8911B8888B11B1A8D89
               HEX    70C8C8C8911B
L7964          RTS
SUB7965        JSR    SUB79D4
               LDA    $E7
               STA    D7A6C
               STA    D7A58
               LDA    $E8
               STA    D7A6D
               STA    D7A59
               JSR    SUB79D4
               LDA    $E7
               STA    D7A98
               STA    D7A7E
               LDA    $E8
               STA    D7A99
               STA    D7A7F
               RTS
SUB798C        JSR    SUB79BF
               LDA    $E7
               ADC    #$F0
               STA    $E7
               LDA    $E8
               ADC    #$02
               STA    $E8
               LDA    $E7
               STA    D7A55
               STA    D7B45
               LDA    $E8
               STA    D7A56
               STA    D7B46
               JSR    SUB79D4
               LDA    $E7
               STA    D7A7B
               STA    D7B4E
               LDA    $E8
               STA    D7A7C
               STA    D7B4F
               RTS
SUB79BF        LDA    D7093
               HEX    3AAABD208B186D927085E8851C64E764
               HEX    1B60
SUB79D4        CLC
               LDA    $E7
               ADC    #$50
               STA    $E7
               LDA    $E8
               ADC    #$00
               STA    $E8
               RTS
SUB79E2        LDA    D7093
               CMP    #$0D
               BCS    L79F1
               LDA    $C083
               LDA    $C083
               HEX    8006
L79F1          LDA    $C08B
               LDA    $C08B
               JSR    SUB798C
               JSR    SUB78A0
               JSR    SUB7A04
               LDA    $C082
               RTS
SUB7A04        LDA    D7087
               STA    $08
               HEX    640AC60AA608E018B00DAD88701A4A18
               HEX    650A850A4CB27AE03090034CB27A8A38
               HEX    E91885EBAABDD2908506BD00
D7A35          HEX    8B8507AD86708509E60AA409C028905F
               HEX    C050B05B9838E92885EAA8B106A40A99
D7A55          HEX    20
D7A56          HEX    92B9
D7A58          HEX    20
D7A59          HEX    92AABD008EA4EA310685FFBD008E49FF
               HEX    A60A3D
D7A6C          HEX    20
D7A6D          HEX    9205FF91068D03C0B1068D02C09D
D7A7B          HEX    20
D7A7C          HEX    92BD
D7A7E          HEX    20
D7A7F          HEX    92AABD008FA4EA8D03C031068D02C085
               HEX    FFBD008F49FFA60A3D
D7A98          HEX    20
D7A99          HEX    9205FF8D05C091068D04C0E609A50938
               HEX    ED86700ACD8870908BE608A50838ED87
               HEX    700ACD8970B0034C0D7A60
SUB7AC4        LDA    D7093
               CMP    #$0D
               BCS    L7AD3
               LDA    $C083
               LDA    $C083
               HEX    8006
L7AD3          LDA    $C08B
               LDA    $C08B
               LDA    D7095
               LSR
               STA    D7087
               LDA    D7094
               LSR
               STA    D7086
               JSR    SUB798C
               LDY    #$03
               LDA    ($1B),Y
               STA    D7088
               INY
               LDA    ($1B),Y
               STA    D7089
               LDA    D7087
               STA    $08
               HEX    640AC60AA608E018B00DAD88701A4A18
               HEX    650A850A4C687BE03090034C687B8A38
               HEX    E91885EBAABDD2908506BD00
D7B28          HEX    8B8507AD86708509E60AA409C0289022
               HEX    C050B01E9838E92885EAA40AB9
D7B45          HEX    20
D7B46          HEX    92A4EA9106A40AB9
D7B4E          HEX    20
D7B4F          HEX    92A4EA8D05C091068D04C0E609A50938
               HEX    ED86700ACD887090C8E608A50838ED87
               HEX    700ACD8970B0034C007B8D82C060
SUB7B7D        LDA    D7093
               CMP    #$0D
               BCS    L7B8C
               LDA    $C083
               LDA    $C083
               HEX    8006
L7B8C          LDA    $C08B
               LDA    $C08B
               LDA    #$03
               STA    $E9
               JSR    SUB7D30
               LDA    #$D0
               STA    D7092
               JSR    SUB79BF
               LDA    #$00
               STA    $FE
               LDA    #$95
               STA    $FF
               LDY    #$00
               LDA    D7088
               STA    ($1B),Y
               INY
               LDA    D7089
               STA    ($1B),Y
               INY
               LDA    D708B
               STA    ($1B),Y
               LDA    #$00
               STA    D7C78
               STA    D7C6F
               JSR    SUB7C5A
               JSR    SUB7C3F
               LDA    D7088
               STA    D7CCD
               LDA    D7089
               STA    D7CD6
               JSR    SUB7C99
               LDA    #$01
               STA    D7C78
               HEX    9C6F7C205A7C203F7CAD88701A8DCD7C
               HEX    AD89708DD67C20997CA9019C787C8D6F
               HEX    7C205A7C203F7CAD88708DCD7CAD8970
               HEX    1A8DD67C20997CA9018D787C8D6F7C20
               HEX    5A7C203F7CAD88701A8DCD7CAD89701A
               HEX    8DD67C20997CA90185E920307D8D82C0
               HEX    60
SUB7C3F        JSR    SUB79D4
               LDA    $E7
               STA    D7CB6
               LDA    $E8
               STA    D7CB7
               JSR    SUB79D4
               LDA    $E7
               STA    D7CC5
               LDA    $E8
               STA    D7CC6
               RTS
SUB7C5A        LDX    D708B
               LDA    D8B50,X
               JSR    SUB897F
               HEX    64096408A900850AA5081869
D7C6F          HEX    0085E16409A5091869
D7C78          HEX    0085E0A40AB1FE85E320EB82E60AE609
               HEX    A509CD8870D0E5E608A508CD8970D0D3
               HEX    60
SUB7C99        HEX    6408640AC60AA608BDD2908506BD00
D7CA8          HEX    8B85076409E60AA409B106A40A99
D7CB6          HEX    20
D7CB7          HEX    92A4098D03C0B1068D02C0A40A99
D7CC5          HEX    20
D7CC6          HEX    92E609A5090AC9
D7CCD          HEX    0190DDE608A5080AC9
D7CD6          HEX    0190C6608D00C0A50985E1A51F85E820
               HEX    9180203B81A5E0A6E785E786E0203B81
               HEX    A51F85E120918060
SUB7CFE        LDA    D7082
               CMP    #$2F
               BEQ    L7D12
               LDA    MIXCLR
               LDA    #$2F
               STA    D7082
               HEX    64224CBF77
L7D12          LDA    MIXSET
               LDA    #$A0
               JSR    SUB9000
               JSR    SUB9029
               LDA    #$27
               STA    D7082
               LDA    #$50
               STA    $21
               LDA    #$14
               STA    $22
               LDA    #$14
               JSR    $FB5B
               RTS
SUB7D30        LDA    $E9
               CMP    #$02
               BCS    L7D3F
               LDA    #$01
               STA    D7068
               LDA    #$8B
               HEX    8014
L7D3F          CMP    #$03
               BEQ    L7D4C
               LDA    #$02
               STA    D7068
               LDA    #$91
               HEX    8007
L7D4C          LDA    #$03
               STA    D7068
               LDA    #$92
               STA    D80C7
               STA    D817B
               STA    D81B8
               STA    D81E7
               STA    D821F
               STA    D8248
               STA    D826D
               STA    D8285+2
               STA    D82F8+2
               STA    D7A35
               STA    D7B28
               STA    D7CA8
               RTS
SUB7D78        STA    KEYBD
               LDA    D7083
               CMP    D7084
               BNE    L7D84
               RTS
L7D84          CMP    #$01
               BNE    L7DAA
               LDX    #$04
               STX    D7EAA
               STX    D7ECD
               LDX    #$05
               STX    D7EB0
               STX    D7ED3
               LDX    #$06
               STX    D7EB6
               STX    D7ED9
               LDX    #$07
               STX    D7EBC
               STX    D7EDF
               HEX    804D
L7DAA          CMP    #$02
               BNE    L7DD0
               LDX    #$08
               STX    D7EAA
               STX    D7ECD
               LDX    #$09
               STX    D7EB0
               STX    D7ED3
               LDX    #$0A
               STX    D7EB6
               STX    D7ED9
               LDX    #$0B
               STX    D7EBC
               STX    D7EDF
               HEX    8027
L7DD0          CMP    #$03
               BNE    L7DF6
               LDX    #$0C
               STX    D7EAA
               STX    D7ECD
               LDX    #$0D
               STX    D7EB0
               STX    D7ED3
               LDX    #$0E
               STX    D7EB6
               STX    D7ED9
               LDX    #$0F
               STX    D7EBC
               STX    D7EDF
               HEX    8001
L7DF6          RTS
               HEX    AD8470C901D022A2048EAD7E8ED07EA2
               HEX    058EB37E8ED67EA2068EB97E8EDC7EA2
               HEX    078EBF7E8EE27E804DC902D022A2088E
               HEX    AD7E8ED07EA2098EB37E8ED67EA20A8E
               HEX    B97E8EDC7EA20B8EBF7E8EE27E8027C9
               HEX    03D022A20C8EAD7E8ED07EA20D8EB37E
               HEX    8ED67EA20E8EB97E8EDC7EA20F8EBF7E
               HEX    8EE27E80016020217F8D05C0ADAA7E8D
               HEX    AA7EADAD7E8DAD7EADB07E8DB07EADB3
               HEX    7E8DB37EADB67E8DB67EADB97E8DB97E
               HEX    ADBC7E8DBC7EADBF7E8DBF7E8D03C0A2
               HEX    00BD00
D7EAA          HEX    049D0010BD00
D7EB0          HEX    059D0011BD00
D7EB6          HEX    069D0012BD00
D7EBC          HEX    079D0013E8D0E58D04C08D02C0A200BD
               HEX    00
D7ECD          HEX    049D000CBD00
D7ED3          HEX    059D000DBD00
D7ED9          HEX    069D000EBD00
D7EDF          HEX    079D000FE8D0E5207C7F60
SUB7EEA        JSR    SUB7F21
               STA    RAMRDON
               STA    RAMWRTON
               LDA    #$A0
               LDX    #$00
L7EF7          STA    $0400,X
               STA    $0500,X
               STA    $0600,X
               STA    $0700,X
               INX
               BNE    L7EF7
               STA    RAMWRTOFF
               STA    RAMRDOFF
               LDX    #$00
L7F0E          STA    $0400,X
               STA    $0500,X
               STA    $0600,X
               STA    $0700,X
               INX
               BNE    L7F0E
               JSR    SUB7F7C
               RTS
SUB7F21        LDA    $0478
               STA    $9220
               LDA    $04F8
               STA    $9221
               LDA    $0578
               STA    $9222
               LDA    $05F8
               STA    $9223
               LDA    $047C
               STA    $9224
               LDA    $04FC
               STA    $9225
               LDA    $057C
               STA    $9226
               LDA    $05FC
               STA    $9227
               LDA    $067C
               STA    $9228
               LDA    $06FC
               STA    $9229
               LDA    $077C
               STA    $922A
               LDA    $0678
               STA    $922B
               LDA    $06F8
               STA    $922C
               LDA    $047E
               STA    $922D
               LDA    $04FE
               STA    $922E
               RTS
SUB7F7C        LDA    $9220
               STA    $0478
               LDA    $9221
               STA    $04F8
               LDA    $9222
               STA    $0578
               LDA    $9223
               STA    $05F8
               LDA    $9224
               STA    $047C
               LDA    $9225
               STA    $04FC
               LDA    $9226
               STA    $057C
               LDA    $9227
               STA    $05FC
               LDA    $9228
               STA    $067C
               LDA    $9229
               STA    $06FC
               LDA    $922A
               STA    $077C
               LDA    $922B
               STA    $0678
               LDA    $922C
               STA    $06F8
               LDA    $922D
               STA    $047E
               LDA    $922E
               STA    $04FE
               RTS
SUB7FD7        CMP    RDVBL
               BPL    SUB7FD7
L7FDC          CMP    RDVBL
               BMI    L7FDC
               STA    KEYBD
               LDA    $E9
               CMP    #$02
               BEQ    L7FEF
               LDA    LOWSCR
               HEX    8003
L7FEF          LDA    HISCR
               RTS
SUB7FF3        STA    KEYBD
               LDA    D7068
               CMP    #$03
               BNE    L8026
               LDX    #$00
               LDA    #$00
L8001          STA    $0C00,X
               STA    $0D00,X
               STA    $0E00,X
               STA    $0F00,X
               INX
               BNE    L8001
               STA    RAMWRTON
L8013          STA    $0C00,X
               STA    $0D00,X
               STA    $0E00,X
               STA    $0F00,X
               INX
               BNE    L8013
               STA    RAMWRTOFF
               RTS
L8026          LDX    $E3
               LDA    D8B50,X
               TAY
               LDA    D7068
               CMP    #$02
               BEQ    L8043
               TYA
               JSR    SUB8865
               LDA    D7082
               CMP    #$27
               BEQ    L8042
               TYA
               JSR    SUB9052
L8042          RTS
L8043          TYA
               JSR    SUB88F2
               LDA    D7082
               CMP    #$27
               BEQ    L8052
               TYA
               JSR    SUB907F
L8052          RTS
               HEX    A5E0EAC5E7900AF034A6E78D81708E80
               HEX    70A5E0100464E08008C9509004A94F85
               HEX    E0A5E7100464E78008C9509004A94F85
               HEX    E7A5E1100160CD8270F003900160
SUB8091        STA    KEYBD
               LDA    $E0
               CMP    $E7
               BCC    L80A9
               BEQ    L80A6
               LDX    $E7
               STA    D7081
               STX    D7080
               HEX    800B
L80A6          JMP    SUB82EB
L80A9          STA    D7080
               LDA    $E7
               STA    D7081
               SEC
               SBC    D7080
               HEX    1A8D6970EE8170A5E14AAABDD2908506
               HEX    BD00
D80C7          HEX    8B8507A5E18901F0034CE780A5E385E4
               HEX    AABD008C85E5A9F08D0E818D2A818015
               HEX    A6E3BD408B85E4AABD008C85E5A90F8D
               HEX    0E818D2A81AD80708901D0224AA88D03
               HEX    C0B1068D02C029F005E58D05C091068D
               HEX    04C0EE8070AD8070CD817090D8604AA8
               HEX    B10629F005E49106EE8070AD8070CD81
               HEX    7090C260
SUB813B        STA    KEYBD
               LDA    $E1
               CMP    $E8
               BCC    L8151
               BEQ    L814E
               LDX    $E8
               STA    $E8
               STX    $E1
               HEX    8003
L814E          JMP    SUB82EB
L8151          LDA    $E8
               SEC
               SBC    $E1
               HEX    1A8D6970A5E08901F0034C07824AA8A5
               HEX    E14A8D6A70A5E18901F036AE6A70BDD2
               HEX    908506BD00
D817B          HEX    8B85078D03C0B1068D02C0AABD008D29
               HEX    0F85E5A6E3BD408B05E5AABD008C8D05
               HEX    C091068D04C0EE6A70CE6970AD6970C9
               HEX    029029AE6A70BDD2908506BD00
D81B8          HEX    8B8507A6E3BD508BAABD008C8D05C091
               HEX    068D04C0CE6970CE6970EE6A7080D0AD
               HEX    6970D00160AE6A70BDD2908506BD00
D81E7          HEX    8B85078D03C0B1068D02C0AABD008D29
               HEX    F005E3AABD008C8D05C091068D04C060
               HEX    4AA8A5E14A8D6A70A5E18901F022AE6A
               HEX    70BDD2908506BD00
D821F          HEX    8B8507B106290F85E5A6E3BD408B05E5
               HEX    9106EE6A70CE6970AD6970C902901FAE
               HEX    6A70BDD2908506BD00
D8248          HEX    8B8507A6E3BD508B9106CE6970CE6970
               HEX    EE6A7080DAAD6970D00160AE6A70BDD2
               HEX    908506BD00
D826D          HEX    8B8507B10629F005E3910660
SUB8279        STA    KEYBD
               LDA    $E1
               LSR
               TAX
               LDA    D90D2,X
               STA    $06
D8285          LDA    D8B00,X
               STA    $07
               LDA    $E0
               HEX    8901D0284AA88D03C0B1068D02C0AABD
               HEX    008D85E9A5E12901F00BA5E929F04A4A
               HEX    4A4A85E960A5E9290F85E9604AA8B106
               HEX    85E9A5E12901F00BA5E929F04A4A4A4A
               HEX    85E960A5E9290F85E9608D00C0A5E0EA
               HEX    C950900160A5E1CD8270F003900160
SUB82EB        LDA    $E3
               STA    $E4
               LDA    $E1
               LSR
               TAX
               LDA    D90D2,X
               STA    $06
D82F8          LDA    D8B00,X
               STA    $07
               LDX    $E3
               LDA    $E0
               HEX    8901D03B4AA88D03C0B1068D02C085E5
               HEX    BD008C85E4A5E12901F011A5E5290F85
               HEX    E5BD408BAABD008C85E48006A5E529F0
               HEX    85E5A5E405E58D05C091068D04C0604A
               HEX    A8B10685E5A5E12901F00DA5E5290F85
               HEX    E5BD408B85E48006A5E529F085E5A5E4
               HEX    05E5910660
SUB8366        LDA    #$00
               STA    D706C
               STA    D706B
               STA    $3C
               LDA    #$70
               STA    $3D
               LDA    #$FF
               STA    $3E
               LDA    #$9F
               STA    $3F
               LDA    #$00
               STA    $42
               LDA    #$70
               STA    $43
               SEC
               JMP    $C311
               HEX    60
SUB8389        STA    KEYBD
               LDA    $E0
               CMP    $E7
               BCC    L83A2
               LDX    $E7
               STA    $E7
               STX    $E0
               LDA    $E1
               LDX    $E8
               STA    $E8
               STX    $E1
               HEX    8014
L83A2          LDA    $E1
               CMP    $E8
               BCC    L83B6
               LDX    $E8
               STA    $E8
               STX    $E1
               LDX    $E7
               LDA    $E0
               STA    $E7
               STX    $E0
L83B6          LDA    $E0
               SEC
               SBC    $E7
               BEQ    L83D5
               BCS    L83DD
               EOR    #$FF
               HEX    1A8D7070A5E08D6D70A5E18D6F7038E5
               HEX    E84CED83
L83D5          JSR    SUB813B
               RTS
L83D9          JSR    SUB8091
               RTS
L83DD          STA    D7070
               LDA    $E7
               STA    D706D
               LDA    $E8
               STA    D706F
               SEC
               SBC    $E1
               BCS    L83FA
               EOR    #$FF
               ADC    #$01
               STA    D7072
               LDA    #$EE
               BNE    L8401
L83FA          BEQ    L83D9
               STA    D7072
               LDA    #$CE
L8401          STA    D8444
               STA    D8479
               LDA    D7070
               CMP    D7072
               BCS    L8412
               JMP    L8449
L8412          HEX    1A85E63A4A8D75704C2584608D7570C6
               HEX    E6F0F8AD6D7085E0AD6F7085E120EB82
               HEX    EE6D70AD757038ED7270B0E06D70708D
               HEX    7570
D8444          HEX    EE6F7080D8
L8449          LDX    $E1
               CPX    D706F
               BNE    L8452
               LDX    $E8
L8452          STX    D8475+1
               LDA    D7072
               LSR
               STA    D7075
               LDX    D706F
               JMP    L8465
L8462          STA    D7075
L8465          LDA    D706D
               STA    $E0
               LDA    D706F
               STA    $E1
               JSR    SUB82EB
               LDA    D706F
D8475          CMP    #$00
               BEQ    L8490
D8479          INC    D706F
               LDA    D7075
               SEC
               SBC    D7070
               BCS    L8462
               ADC    D7072
               STA    D7075
               INC    D706D
               BNE    L8465
L8490          RTS
               HEX    8D00C0AD7A708D797085EE64EF205085
               HEX    A5EFC5EE900160A5EF0A69018D7870E6
               HEX    EFAD787049FF1869016D79708D797010
               HEX    1BA5EE0A49FF1869028D7770C6EEAD77
               HEX    7049FF1869016D79708D7970A5EE49FF
               HEX    18690185EAA5EF49FF18690185EB18A5
               HEX    EC65EE85E018A5ED65EF85E120D68218
               HEX    A5EC65EA85E020D68218A5ED65EB85E1
               HEX    20D68218A5EC65EE85E020D68218A5EC
               HEX    65EF85E018A5ED65EE85E120D68218A5
               HEX    EC65EB85E020D68218A5ED65EA85E120
               HEX    D68218A5EC65EF85E020D6824CA184A5
               HEX    EE49FF18690185EAA5EF49FF18690185
               HEX    EB18A5EC65EE85E0A5ED85E120D68218
               HEX    A5EC65EA85E020D682A5EC85E018A5ED
               HEX    65EE85E120D68218A5ED65EA85E120D6
               HEX    82608D00C0AD7A708D797085EE64EF20
               HEX    6A86A5EFC5EE900160A5EF0A69018D78
               HEX    70E6EFAD787049FF1869016D79708D79
               HEX    70101BA5EE0A49FF1869028D7770C6EE
               HEX    AD777049FF1869016D79708D7970A5EE
               HEX    49FF18690185EAA5EF49FF18690185EB
               HEX    18A5EC65EE85E085E718A5ED65EF85E1
               HEX    20D68218A5EC65EA85E020D682205380
               HEX    A5E085E718A5ED65EB85E120D68218A5
               HEX    EC65EE85E020D68220538018A5EC65EF
               HEX    85E085E718A5ED65EE85E120D68218A5
               HEX    EC65EB85E020D682205380A5E085E718
               HEX    A5ED65EA85E120D68218A5EC65EF85E0
               HEX    20D6822053804CA385A5EE49FF186901
               HEX    85EAA5EF49FF18690185EB18A5EC65EE
               HEX    85E085E7A5ED85E120D68218A5EC65EA
               HEX    85E020D682205380A5EC85E018A5ED65
               HEX    EE85E120D68218A5ED65EA85E120D682
               HEX    608D00C0A5E1A6E8C5E8900685E886E1
               HEX    8000E6E8A5E185E1209180E6E1A5E1C5
               HEX    E890F360
SUB86D5        STA    KEYBD
               STA    RAMWRTON
               LDX    #$00
               TXA
               HEX    64FE18691085FFA900A00091FEC8C050
               HEX    90F9E8E03090E88D04C064FEA94085FF
               HEX    AD7E7085E0AD7F7085E1207982A5E98D
               HEX    7C70A000AD7E708D05C091FEC8AD7F70
               HEX    91FE8D04C018A5FE690285FEA5FF6900
               HEX    85FFA5FED007A5FFC940D0016038A5FE
               HEX    E90285FEA5FFE90085FFA0008D03C0B1
               HEX    FE8D02C0850885E085EAC88D03C0B1FE
               HEX    8D02C0850985E118691085EB8D03C0B2
               HEX    EA8D02C0D0BC20EB82A9028D05C092EA
               HEX    8D04C0A509CD8270B0331A85E1A50885
               HEX    E0207982A5E9CD7C70D022C5E3F01EA0
               HEX    00A5088D05C091FEC8A5E191FE8D04C0
               HEX    18A5FE690285FEA5FF690085FFA509F0
               HEX    333A85E1A50885E0207982A5E9CD7C70
               HEX    D022C5E3F01EA000A5088D05C091FEC8
               HEX    A5E191FE8D04C018A5FE690285FEA5FF
               HEX    690085FFA508C94FB0331A85E0A50985
               HEX    E1207982A5E9CD7C70D022C5E3F01EA0
               HEX    00A5E08D05C091FEC8A50991FE8D04C0
               HEX    18A5FE690285FEA5FF690085FFA508F0
               HEX    333A85E0A50985E1207982A5E9CD7C70
               HEX    D022C5E3F01EA000A5E08D05C091FEC8
               HEX    A50991FE8D04C018A5FE690285FEA5FF
               HEX    690085FF4C3087
SUB8865        LDX    #$28
L8867          DEX
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
               BNE    L8867
               TAX
               LDA    D8C00,X
               LDX    #$28
L88AC          DEX
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
               BNE    L88AC
               RTS
SUB88F2        LDX    #$28
L88F4          DEX
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
               BNE    L88F4
               TAX
               LDA    D8C00,X
               LDX    #$28
L8939          DEX
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
               BNE    L8939
               RTS
SUB897F        LDX    #$28
L8981          DEX
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
               BNE    L8981
               TAX
               LDA    D8C00,X
               LDX    #$28
L89D2          DEX
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
               BNE    L89D2
               RTS
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    000000000000000000000000
D8B00          HEX    04040505060607070404050506060707
               HEX    04040505060607070404050506060707
               HEX    0004080C1014181C2024282C0004080C
               HEX    5054585C6064686C7074787C8084888C
               HEX    00102030405060708090A0B0C0D0E0F0
D8B50          HEX    00112233445566778899AABBCCDDEEFF
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
D8C00          HEX    00080109020A030B040C050D060E070F
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
D8E00          HEX    FFF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
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
D8F00          HEX    FFF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
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
SUB9000        LDX    #$28
L9002          DEX
               STA    $0650,X
               STA    $06D0,X
               STA    $0750,X
               STA    $07D0,X
               BNE    L9002
               LDX    #$28
L9013          DEX
               STA    RAMWRTON
               STA    $0650,X
               STA    $06D0,X
               STA    $0750,X
               STA    $07D0,X
               STA    RAMWRTOFF
               BNE    L9013
               RTS
SUB9029        LDX    #$28
L902B          DEX
               STA    $0A50,X
               STA    $0AD0,X
               STA    $0B50,X
               STA    $0BD0,X
               BNE    L902B
               LDX    #$28
L903C          DEX
               STA    RAMWRTON
               STA    $0A50,X
               STA    $0AD0,X
               STA    $0B50,X
               STA    $0BD0,X
               STA    RAMWRTOFF
               BNE    L903C
               RTS
SUB9052        LDX    #$28
L9054          DEX
               STA    $0650,X
               STA    $06D0,X
               STA    $0750,X
               STA    $07D0,X
               BNE    L9054
               TAX
               LDA    D8C00,X
               LDX    #$28
L9069          DEX
               STA    RAMWRTON
               STA    $0650,X
               STA    $06D0,X
               STA    $0750,X
               STA    $07D0,X
               STA    RAMWRTOFF
               BNE    L9069
               RTS
SUB907F        LDX    #$28
L9081          DEX
               STA    $0A50,X
               STA    $0AD0,X
               STA    $0B50,X
               STA    $0BD0,X
               BNE    L9081
               TAX
               LDA    D8C00,X
               LDX    #$28
L9096          DEX
               STA    RAMWRTON
               STA    $0A50,X
               STA    $0AD0,X
               STA    $0B50,X
               STA    $0BD0,X
               STA    RAMWRTOFF
               BNE    L9096
               RTS
               HEX    A200A9009D000C9D000D9D000E9D000F
               HEX    8D05C09D000C9D000D9D000E9D000F8D
               HEX    04C0E8D0DF60
D90D2          HEX    008000800080008028A828A828A828A8
               HEX    50D050D050D050D078F878F878F878F8
               HEX    00000000000000000000000000000808
               HEX    09090A0A0B0B080809090A0A0B0B0808
               HEX    09090A0A0B0B080809090A0A0B0B0000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000C0C
               HEX    0D0D0E0E0F0F0C0C0D0D0E0E0F0F0C0C
               HEX    0D0D0E0E0F0F0C0C0D0D0E0E0F0F
