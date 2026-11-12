************************************************************
* oubliette_2021 - DB5.KORE (disassembly)
*
* Disassembled from the original binary (7750 bytes, $0ED8-$2D1D).
* Reconstructed source: labels are generated, comments are minimal.
* Bytes the disassembler could not prove to be code are emitted as HEX/ASC data.
* Original program by its authors; see ../README.txt for attribution and terms.
* Entry point(s): $0ED8, $10EA, $1103, $1167, $1194, $11F8, $12B1, $1888, $189C, $18B0, $18BA, $2828, $284B, $2904, $291D, $2954, $2A24, $2CB0 (NMOS 6502 opcodes only).
************************************************************

               ORG    $0ED8

KEY            EQU    $C000
STORE80ON      EQU    $C001
COL80ON        EQU    $C00D
SPKR           EQU    $C030
TXTCLR         EQU    $C050
MIXCLR         EQU    $C052
LOWSCR         EQU    $C054
HISCR          EQU    $C055
DHIRESON       EQU    $C05E
LCRAMIN        EQU    $C080
ROMIN          EQU    $C081
LCBANK1        EQU    $C088
PLOT           EQU    $F800
CLRSCR         EQU    $F832
WAIT           EQU    $FCA8
COUT           EQU    $FDED

START          JSR    L0F32
               LDA    $06
               CMP    #$80
               BNE    L0F21
               LDA    COUT
               CMP    #$60
               BEQ    L0EFD
               LDA    $C036
               AND    #$7F
               STA    $C036
               LDA    #$F0
               STA    $C022
               LDA    $C034
               AND    #$F0
               STA    $C034
L0EFD          LDA    #$10
               STA    $3D
               STA    $43
               LDA    #$25
               STA    $3F
               JSR    L1194
               LDX    #$00
L0F0C          LDA    L0F18,X
               STA    $0117,X
               INX
               CPX    #$09
               BNE    L0F0C
               RTS
L0F18          HEX    8D03C0B1718D02C060
L0F21          LDA    #$04
               STA    $102C
               LDA    #$02
               STA    $1045
               RTS
               HEX    E31760000000
L0F32          PHP
               SEI
               LDA    $E000
               STA    $1A
               LDA    $D000
               STA    $1B
               LDA    $D400
               STA    $1C
               LDA    $D800
               STA    $1D
               LDA    ROMIN
               LDA    ROMIN
               LDA    $FBB3
               CMP    #$06
               HEX    D03A ; BNE $0F8F
               LDA    $C017
               HEX    3032 ; BMI $0F8C
               LDA    $C013
               BMI    L0F86
               LDA    $C016
               BMI    L0F86
               LDY    #$28
L0F66          LDX    L0FD5,Y
               LDA    $0100,Y
               STA    L0FD5,Y
               TXA
               STA    $0100,Y
               DEY
               BPL    L0F66
               JMP    $0100
               HEX    A028B9D50F9900
L0F80          HEX    018810F7B003
L0F86          LDA    #$80
               BIT    $40A9
               BIT    L20A9
               BIT    |$00A9
               STA    $06
               LDA    $E000
               CMP    $1A
               BNE    L0FAF
               LDA    $D000
               CMP    $1B
               BNE    L0FAF
               LDA    $D400
               CMP    $1C
               BNE    L0FAF
               LDA    $D800
               CMP    $1D
               BEQ    L0FD1
L0FAF          LDA    LCBANK1
               LDA    $E000
               CMP    $1A
               BNE    L0FCE
               LDA    $D000
               CMP    $1B
               BNE    L0FCE
               LDA    $D400
               CMP    $1C
               BNE    L0FCE
               LDA    $D800
               CMP    $1D
               BEQ    L0FD1
L0FCE          LDA    LCRAMIN
L0FD1          PLP
               LDA    $06
               RTS
L0FD5          HEX    A9EE8D05C08D03C08D0008AD000CC9EE
               HEX    D00D0E000CAD0008CD000CD002389018
               HEX    8D04C08D02C04C790F00
L0FFF          HEX    00000000000000
L1006          HEX    20
L1007          HEX    20
L1008          HEX    00
L1009          HEX    00
L100A          HEX    00
L100B          HEX    00
L100C          HEX    00
L100D          HEX    000000208A10A9008D0D10
L1018          LDA    $FE1F
               CMP    #$60
               BEQ    L1022
               DEC    L100C
L1022          LDA    #$00
               STA    L1008
               RTS
L1028          LDA    L1009
               STA    $C005
               STA    $1049
               STA    $C004
               CLC
               LDA    L1008
               TAX
               ADC    L1007
               STA    L1008
               BNE    L1044
               INC    L1009
L1044          STA    $C003
               LDA    $8100,X
               STA    $C002
               LDY    #$08
L104F          PHA
               LDA    L100C
               JSR    WAIT
               PLA
               ASL
               NOP
               BCC    L1060
               STA    SPKR
               BCS    L1060
L1060          NOP
               NOP
               NOP
               DEY
               BNE    L104F
               INX
               CPX    L1008
               BNE    L1044
               LDA    L1009
               CMP    L100B
               BCC    L1089
               LDA    L100D
               BEQ    L108A
               LDA    #$00
               STA    L100D
               LDX    #$06
L1080          LDA    L0FFF,X
               STA    L1006,X
               DEX
               BNE    L1080
L1089          RTS
L108A          LDA    L100A
               STA    L1009
               RTS
L1091          LDX    #$06
L1093          LDA    L1006,X
               STA    L0FFF,X
               DEX
               BNE    L1093
               LDA    L1006
               STA    L1007
               JMP    L1022
L10A5          LDA    #$80
               STA    L1007
L10AA          JSR    L1028
               LDA    L100D
               BNE    L10AA
               RTS
L10B3          LDA    #$02
               STA    L100D
               LDA    L1006
               STA    L1007
               LDA    L100A
               STA    L1009
               JMP    L1018
L10C7          LDA    L100D
               BNE    L10CF
               JSR    L1091
L10CF          LDA    L10FD
               STA    L100C
               LDA    L10FE
               STA    L100A
               LDA    L10FF
               STA    L100B
               JMP    L10B3
               HEX    AD0D10F0DE60
L10EA          JSR    L10C7
               JMP    L10A5
               HEX    00000000000000000000000000
L10FD          HEX    00
L10FE          HEX    00
L10FF          HEX    00000000
L1103          LDA    TXTCLR
               STA    STORE80ON
               STA    COL80ON
               LDA    MIXCLR
               LDA    DHIRESON
               LDA    HISCR
               JSR    CLRSCR
               LDA    LOWSCR
               JMP    CLRSCR
               HEX    0000002003112040FB2000C34C601100
               HEX    00008D50C08D52C04C32F800204E114C
               HEX    271100000000204E118D01C08D54C060
               HEX    8D51C08D00C08D0CC08D53C08D5FC020
               HEX    39FB2058FC4CEA0300
L1167          STA    KEY
               STA    LOWSCR
               RTS
               HEX    0000008D00C08D54C08D01C08D54C060
               HEX    00008D00C08D55C06000000000000000
               HEX    000000000000
L1194          SEC
               JMP    L119A
               HEX    0018
L119A          JSR    L11A8
               JSR    $C311
               STA    KEY
               STA    LOWSCR
               RTS
               HEX    00
L11A8          LDX    #$00
               STX    $3C
               STX    $42
               DEX
               STX    $3E
               RTS
               HEX    20B9114C5212008D02C08D05C020DD13
               HEX    8D04C060A908A20BA00C4CD61100A90C
               HEX    A20FA0108527853D8543863F8CF111A9
               HEX    008526A89126E626D0FAE627A627E000
               HEX    90F24C941100
L11F8          STA    $C002
               STA    $C004
               STA    STORE80ON
               STA    LOWSCR
               JSR    L1217
               STA    STORE80ON
               STA    HISCR
               STA    $C005
               JSR    L1217
               STA    $C004
               RTS
L1217          LDX    #$00
L1219          LDA    $0400,X
               STA    $0800,X
               LDA    $0480,X
               STA    $0880,X
               LDA    $0500,X
               STA    $0900,X
               LDA    $0580,X
               STA    $0980,X
               LDA    $0600,X
               STA    $0A00,X
               LDA    $0680,X
               STA    $0A80,X
               LDA    $0700,X
               STA    $0B00,X
               LDA    $0780,X
               STA    $0B80,X
               INX
               CPX    #$78
               BNE    L1219
               RTS
               HEX    0000008D02C08D04C08D01C08D54C020
               HEX    77128D03C08D05C08D01C08D55C02077
               HEX    128D02C08D04C060A200BD00089D0004
               HEX    BD80089D8004BD00099D0005BD80099D
               HEX    8005BD000A9D0006BD800A9D8006BD00
               HEX    0B9D0007BD800B9D8007E8E078D0CB60
               HEX    0000
L12B1          STA    $C002
               STA    $C004
               STA    STORE80ON
               STA    LOWSCR
               JSR    L12D6
               STA    $C002
               STA    $C005
               STA    STORE80ON
               STA    HISCR
               JSR    L12D6
               STA    $C002
               STA    $C004
               RTS
L12D6          LDX    #$00
L12D8          LDA    $0400,X
               STA    $0C00,X
               LDA    $0480,X
               STA    $0C80,X
               LDA    $0500,X
               STA    $0D00,X
               LDA    $0580,X
               STA    $0D80,X
               LDA    $0600,X
               STA    $0E00,X
               LDA    $0680,X
               STA    $0E80,X
               LDA    $0700,X
               STA    $0F00,X
               LDA    $0780,X
               STA    L0F80,X
               INX
               CPX    #$78
               BNE    L12D8
               RTS
               HEX    00008D02C08D04C08D01C08D54C02035
               HEX    138D03C08D05C08D01C08D55C0203513
               HEX    8D02C08D04C060A200BD000C9D0004BD
               HEX    800C9D8004BD000D9D0005BD800D9D80
               HEX    05BD000E9D0006BD800E9D8006BD000F
               HEX    9D0007BD800F9D8007E8E078D0CB6000
               HEX    008D02C08D04C02088138D03C08D05C0
               HEX    2088138D02C08D04C060A200BD00089D
               HEX    000CBD80089D800CBD00099D000DBD80
               HEX    099D800DBD000A9D000EBD800A9D800E
               HEX    BD000B9D000FBD800B9D800FE8E078D0
               HEX    CB60000000008D02C08D04C020DD138D
               HEX    03C08D05C020DD138D02C08D04C060A2
               HEX    00BD000C9D0008BD800C9D8008BD000D
               HEX    9D0009BD800D9D8009BD000E9D000ABD
               HEX    800E9D800ABD000F9D000BBD800F9D80
               HEX    0BE8E078D0CB600000000000
L141A          HEX    00
L141B          HEX    000000
L141E          HEX    0088119922AA33BB44CC55DD66EE77FF
L142E          HEX    00112233445566778899AABBCCDDEEFF
               HEX    00020406080A0C0E01030507090B0D0F
L144E          HEX    00
L144F          HEX    00A200
L1452          LDA    L141E,X
               STA    L144E
               LDA    L142E,X
               STA    L144F
               RTS
               HEX    A900A200
L1463          LSR
               TAY
               TXA
               NOP
               NOP
               NOP
               BCC    L1476
               LDX    L144F
               STX    $30
               LDX    LOWSCR
               JMP    PLOT
L1476          LDX    L144E
               STX    $30
               LDX    HISCR
               JMP    PLOT
               HEX    00A900A200A000
L1488          INX
               STA    L141A
               STX    L141B
               STY    $149B
L1492          LDA    L141A
               CMP    L141B
               BCS    L14A4
               LDX    #$00
               JSR    L1463
               INC    L141A
               BNE    L1492
L14A4          RTS
               HEX    A900A200A000E88D1A148E1B148CBE14
               HEX    AE1A14EC1B14B00AA900206314EE1A14
               HEX    D0EE60A900A0008CD2144AA8A900EAEA
               HEX    EA900AAE54C02071F88D1D1460AE55C0
               HEX    2071F8AABD3E148D1D1460A9EAA8AA8D
               HEX    66148E67148C68146000A94CA212A015
               HEX    4CF41400A94CA23FA0154CF4149006AE
               HEX    4F144C2D15AE4E148E03C08E05C0202D
               HEX    158E02C08E04C06086304A082047F8E6
               HEX    27E627E627E6274C05F89006AE4F144C
               HEX    5615AE4E148E03C08E05C02056154C26
               HEX    1586304A082047F8E627E627E627E627
               HEX    4C3415A9EAA8AA8DD3148ED4148CD514
               HEX    6000A94CA28AA0154C6C1500A94CA2B4
               HEX    A0154C6C15900720A4158D1D14608E03
               HEX    C020A4158E02C0AABD3E148D1D14604A
               HEX    082047F8E627E627E627E6274C76F890
               HEX    0720CE158D1D14608E03C020CE158E02
               HEX    C0AABD3E148D1D14604A082047F8E627
               HEX    E627E627E6274CA9150000EE1814AD15
               HEX    14AE1714AC1614208814EE1614AD1614
               HEX    CD181490E960000000A5F9F004A930D0
               HEX    02A9278D1814A94F8D1714A9008D1514
               HEX    8D16144CE31500A5F9F004A930D002A9
               HEX    288D1814A9008D15148D1614AD1514C9
               HEX    50F020AC161420CC14CDC213D00FAEC3
               HEX    13205214AD1514AE1614206314EE1514
               HEX    4C3116A9008D1514EE1614AD1614CD18
               HEX    1490C960000000
L166C          HEX    04
L166D          HEX    04050506060707
L1674          HEX    04
L1675          HEX    04050506060707
L167C          HEX    04
L167D          HEX    0405050606070700
L1685          HEX    008000800080008028A828A828A828A8
               HEX    50D050D050D050D000000000
L16A1          HEX    00
L16A2          HEX    00
L16A3          HEX    00
L16A4          HEX    00
L16A5          HEX    00
L16A6          HEX    0000
L16A8          LDY    #$04
               TYA
               PHA
               CLC
               ADC    #$04
               STA    $16CC
               PLA
               LDX    #$00
L16B5          TYA
               STA    L166C,X
               STA    L166D,X
               STA    L1674,X
               STA    L1675,X
               STA    L167C,X
               STA    L167D,X
               INX
               INX
               INY
               CPY    #$08
               BCC    L16B5
               RTS
               HEX    A0084CAA16A00C4CAA16A200
L16DC          JSR    L1836
               STA    $C002
               LDA    $0200,X
               STA    $C002
               INX
               STA    L16A3
               BNE    L16F1
               JSR    L1834
L16F1          STA    $C002
               LDA    $0200,X
               STA    $C002
               INX
               STA    L16A4
               BNE    L1703
               JSR    L1834
L1703          CLC
               LDA    $FA
               CMP    #$50
               BCC    L1714
               ADC    L16A3
               ADC    #$02
               CMP    #$50
               BCC    L1714
               RTS
L1714          CLC
               LDA    $FA
               STA    L16A1
               ADC    L16A3
               STA    L16A5
               CLC
               LDA    $FB
               CMP    #$30
               BCC    L172F
               ADC    L16A4
               CMP    #$30
               BCC    L172F
               RTS
L172F          CLC
               LDA    $FB
               STA    L16A2
               ADC    L16A4
               CMP    #$30
               BCC    L173E
               LDA    #$30
L173E          STA    L16A6
L1741          LDA    L16A2
               BPL    L1763
               LDY    L16A3
L1749          CPY    #$00
               BEQ    L1757
               DEY
               INX
               BNE    L1749
               JSR    L1834
               JMP    L1749
L1757          INC    L16A2
               INC    L16A2
               JMP    L1741
L1760          LDA    L16A2
L1763          CMP    L16A6
               BCC    L1769
               RTS
L1769          LSR
               TAY
               LDA    L166C,Y
               STA    $27
               LDA    $FA
               STA    L16A1
               BPL    L1779
               LDA    #$00
L1779          LSR
               CLC
               ADC    L1685,Y
               STA    $26
               LDY    #$00
L1782          LDA    L16A1
               BPL    L179C
               INX
               BNE    L178D
               JSR    L1834
L178D          INX
               BNE    L1793
               JSR    L1834
L1793          INC    L16A1
               INC    L16A1
               JMP    L1782
L179C          LDA    L16A1
               CMP    L16A5
               BCS    L17BD
               CMP    #$50
               BCC    L17C6
               INX
               BNE    L17AE
               JSR    L1834
L17AE          INX
               BNE    L17B4
               JSR    L1834
L17B4          INC    L16A1
               INC    L16A1
               JMP    L179C
L17BD          INC    L16A2
               INC    L16A2
               JMP    L1760
L17C6          STA    $C002
               LDA    $0200,X
               STA    $C002
L17CF          BEQ    L17E9
L17D1          PHA
               AND    #$F0
               BNE    L17DA
               LDA    ($26),Y
               AND    #$F0
L17DA          STA    $71
               PLA
               AND    #$0F
               BNE    L17E5
               LDA    ($26),Y
               AND    #$0F
L17E5          ORA    $71
               STA    ($26),Y
L17E9          INX
               BNE    L17EF
               JSR    L1834
L17EF          STA    $C002
               LDA    $0200,X
               STA    $C002
L17F8          BEQ    L1824
L17FA          PHA
               AND    #$F0
               BNE    L1809
               STA    $C003
               LDA    ($26),Y
               STA    $C002
               AND    #$F0
L1809          STA    $71
               PLA
               AND    #$0F
               BNE    L181A
               STA    $C003
               LDA    ($26),Y
               STA    $C002
               AND    #$0F
L181A          ORA    $71
               STA    $C005
               STA    ($26),Y
               STA    $C004
L1824          INX
               BNE    L182A
               JSR    L1834
L182A          INC    L16A1
               INC    L16A1
               INY
               JMP    L179C
L1834          INC    $FC
L1836          LDA    $FC
               STA    $16E4
               STA    $16F6
               STA    $17CB
               STA    $17F4
               STA    $C005
               STA    $16E4
               STA    $16F6
               STA    $17CB
               STA    $17F4
               STA    $C004
               RTS
               HEX    00000000A9F048A91848A94848A9F048
               HEX    A92A48A948 ; )*H)H
L186C          STA    L17FA
               PLA
               STA    $17F9
               PLA
               STA    L17F8
               PLA
               STA    L17D1
               PLA
               STA    $17D0
               PLA
               STA    L17CF
               RTS
               HEX    00000000
L1888          LDA    #$4C
               PHA
               LDA    #$E7
               PHA
               LDA    #$17
               PHA
               LDA    #$4C
               PHA
               LDA    #$1C
               PHA
               LDA    #$18
               JMP    L186C
L189C          LDA    #$02
L189E          STA    $16E0
               STA    $16F2
               STA    $17C7
               STA    $17F0
               STA    $1945
               RTS
               HEX    0000
L18B0          LDA    #$03
               JMP    L189E
               HEX    A6FD4CDC16
L18BA          JSR    L18C9
               LDX    L18D2
               LDA    L18D3
               STA    $FC
               JMP    L16DC
               HEX    00
L18C9          JMP    L18D9
               HEX    000000000000
L18D2          HEX    00
L18D3          HEX    00
L18D4          HEX    00
L18D5          HEX    00
L18D6          HEX    00
L18D7          HEX    0000
L18D9          LDX    #$0D
               LDA    #$00
L18DD          STA    $18CB,X
               DEX
               BNE    L18DD
               LDA    $FC
               STA    L18D3
               INC    L18D2
               BNE    L18F0
               INC    L18D3
L18F0          DEC    $FD
               LDA    $FD
               BNE    L18F7
               RTS
L18F7          JSR    L1938
               STA    L18D4
               STY    L18D5
               JSR    L1938
               STA    L18D6
               STY    L18D7
               LSR    L18D7
               ROR    L18D6
L190F          LDA    L18D6
               BNE    L1917
               JMP    L18F0
L1917          CLC
               LDA    L18D2
               ADC    L18D4
               STA    L18D2
               LDA    L18D3
               ADC    L18D5
               STA    L18D3
               LDA    L18D6
               BNE    L1932
               DEC    L18D7
L1932          DEC    L18D6
               JMP    L190F
L1938          LDX    L18D2
               LDY    L18D3
               STX    $71
               STY    $72
               LDY    #$00
               STA    $C002
               LDA    ($71),Y
               STA    $C002
               INC    L18D2
               BNE    L1954
               INC    L18D3
L1954          RTS
               HEX    FF0000FFFF0000FFFF0000FFFF00008D
               HEX    08C0AD8BC0AD8BC0A900A8853C8542A9
               HEX    FF853EB13C9142E642D002E643C53EA5
               HEX    3DE53FE63CD002E63D90E88D08C0AD8A
               HEX    C06000000000A53DA63FA4438D09C085
               HEX    3D863F84434C67190000A98B8D68198D
               HEX    6B196000A9834CB11900000000000000
               HEX    0000004CEA1900000000000000000000
               HEX    00000000000000000000000000000000
               HEX    0000000000A21FA9009DCA19CAD0FAA5
               HEX    FC8DD419A5FD8DD119ADD119C901D003
               HEX    4C3B1AAED319ACD41920961B8DD5198C
               HEX    D61918ADD31969038DD319ADD4196900
               HEX    8DD419A97FCDD51990034C351A4CFE19
               HEX    CED1194CFE19AED319ACD41920961B8D
               HEX    D7198CD819EED319D003EED419AED319
               HEX    ACD41920961B8DD9198CDA19EED319D0
               HEX    03EED419AED319ACD41920961B8DDB19
               HEX    8CDC19EED319D003EED419ADD719C980
               HEX    90034C8B1A60ADD719C9C090034CB81A
               HEX    A9808DDD1920DB1A20441BADDF198D83
               HEX    14ADE1198D8514ADD1198D8714208214
               HEX    4C3B1AA9C08DDD1920DB1A206D1BADE1
               HEX    198DA614ADD1198DA814ADDF198DAA14
               HEX    20A5144C3B1A38ADD719EDDD198DDF19
               HEX    A9008DE3198DE519A93FCDD91990034C
               HEX    061B38ADD919E9408DD919EEE3194CED
               HEX    1AA93FCDDB1990034C1F1B38ADDB19E9
               HEX    408DDB19EEE5194C061BADD9198DE119
               HEX    ADDB198DD1190EE3190EE31918ADE519
               HEX    6DE3198DE519ADE5198D51144C5014A5
               HEX    FA8DE71918ADE7196DDF198DDF1918AD
               HEX    E7196DE1198DE119A5FB8DE71918ADE7
               HEX    196DD1198DD11960A5FB8DE71918ADE7
               HEX    196DE1198DE11918ADE7196DD1198DD1
               HEX    19A5FA8DE71918ADE7196DDF198DDF19
               HEX    6086718472A000B1716000000000A9B1
               HEX    A271A0608D9C1B8E9D1B8C9E1B60A94C
               HEX    A217A0014CA91BAD000448AD800448AD
               HEX    000548AD800548AD000648AD800648AD
               HEX    000748AD800748AD280448ADA80448AD
               HEX    280548ADA80548AD280648ADA80648AD
               HEX    280748ADA80748AD500448ADD00448AD
               HEX    500548ADD00548A5F9C900F010AD5006
               HEX    48ADD00648AD500748ADD00748A000B9
               HEX    0104990004B98104998004B901059900
               HEX    05B98105998005B90106990006B98106
               HEX    998006B90107990007B98107998007B9
               HEX    2904992804B9A90499A804B929059928
               HEX    05B9A90599A805B92906992806B9A906
               HEX    99A806B92907992807B9A90799A807B9
               HEX    5104995004B9D10499D004B951059950
               HEX    05B9D10599D005A5F9C900F018B95106
               HEX    995006B9D10699D006B95107995007B9
               HEX    D10799D007C8C027F0034C241CEAA5F9
               HEX    C900F010688DF707688D7707688DF706
               HEX    688D7706688DF705688D7705688DF704
               HEX    688D7704688DCF07688D4F07688DCF06
               HEX    688D4F06688DCF05688D4F05688DCF04
               HEX    688D4F04688DA707688D2707688DA706
               HEX    688D2706688DA705688D2705688DA704
               HEX    688D27046000000000AD270448ADA704
               HEX    48AD270548ADA70548AD270648ADA706
               HEX    48AD270748ADA70748AD4F0448ADCF04
               HEX    48AD4F0548ADCF0548AD4F0648ADCF06
               HEX    48AD4F0748ADCF0748AD770448ADF704
               HEX    48AD770548ADF70548A5F9C900F010AD
               HEX    770648ADF70648AD770748ADF70748A0
               HEX    26B90004990104B98004998104B90005
               HEX    990105B98005998105B90006990106B9
               HEX    8006998106B90007990107B980079981
               HEX    07B92804992904B9A80499A904B92805
               HEX    992905B9A80599A905B92806992906B9
               HEX    A80699A906B92807992907B9A80799A9
               HEX    07B95004995104B9D00499D104B95005
               HEX    995105B9D00599D105A5F9C900F018B9
               HEX    5006995106B9D00699D106B950079951
               HEX    07B9D00799D1078830034C961DA5F9C9
               HEX    00F010688DD007688D5007688DD00668
               HEX    8D5006688DD005688D5005688DD00468
               HEX    8D5004688DA807688D2807688DA80668
               HEX    8D2806688DA805688D2805688DA80468
               HEX    8D2804688D8007688D0007688D800668
               HEX    8D0006688D8005688D0005688D800468
               HEX    8D0004600000
L1E9B          LDA    $07D0,Y
               PHA
               LDA    $0750,Y
               STA    $07D0,Y
               LDA    $06D0,Y
               STA    $0750,Y
               LDA    $0650,Y
               STA    $06D0,Y
               LDA    $05D0,Y
               STA    $0650,Y
               LDA    $0550,Y
               STA    $05D0,Y
               LDA    $04D0,Y
               STA    $0550,Y
               LDA    $0450,Y
               STA    $04D0,Y
               LDA    $07A8,Y
               STA    $0450,Y
               LDA    $0728,Y
               STA    $07A8,Y
               LDA    $06A8,Y
               STA    $0728,Y
               LDA    $0628,Y
               STA    $06A8,Y
               LDA    $05A8,Y
               STA    $0628,Y
               LDA    $0528,Y
               STA    $05A8,Y
               LDA    $04A8,Y
               STA    $0528,Y
               LDA    $0428,Y
               STA    $04A8,Y
               LDA    $0780,Y
               STA    $0428,Y
               LDA    $0700,Y
               STA    $0780,Y
               LDA    $0680,Y
               STA    $0700,Y
               LDA    $0600,Y
               STA    $0680,Y
               LDA    $0580,Y
               STA    $0600,Y
               LDA    $0500,Y
               STA    $0580,Y
               LDA    $0480,Y
               STA    $0500,Y
               LDA    $0400,Y
               STA    $0480,Y
               PLA
               STA    $0400,Y
               RTS
               HEX    000000A000AD54C0209B1EAD55C0209B
               HEX    1EC8C02890EF60
L1F45          LDA    $0400,Y
               PHA
               LDA    $0480,Y
               STA    $0400,Y
               LDA    $0500,Y
               STA    $0480,Y
               LDA    $0580,Y
               STA    $0500,Y
               LDA    $0600,Y
               STA    $0580,Y
               LDA    $0680,Y
               STA    $0600,Y
               LDA    $0700,Y
               STA    $0680,Y
               LDA    $0780,Y
               STA    $0700,Y
               LDA    $0428,Y
               STA    $0780,Y
               LDA    $04A8,Y
               STA    $0428,Y
               LDA    $0528,Y
               STA    $04A8,Y
               LDA    $05A8,Y
               STA    $0528,Y
               LDA    $0628,Y
               STA    $05A8,Y
               LDA    $06A8,Y
               STA    $0628,Y
               LDA    $0728,Y
               STA    $06A8,Y
               LDA    $07A8,Y
               STA    $0728,Y
               LDA    $0450,Y
               STA    $07A8,Y
               LDA    $04D0,Y
               STA    $0450,Y
               LDA    $0550,Y
               STA    $04D0,Y
               LDA    $05D0,Y
               STA    $0550,Y
               LDA    $0650,Y
               STA    $05D0,Y
               LDA    $06D0,Y
               STA    $0650,Y
               LDA    $0750,Y
               STA    $06D0,Y
               LDA    $07D0,Y
               STA    $0750,Y
               PLA
               STA    $07D0,Y
               RTS
               HEX    000000A000AD54C020451FAD55C02045
               HEX    1FC8C02890EF604CFF1F000000000000
               HEX    00000000000000A20DA9009DF11FCAD0
               HEX    FAA9A18DF81FA91E8DF91FA92B8DFA1F
               HEX    A91F8DFB1F203121A94B8DF81FA91F8D
               HEX    F91FA9D58DFA1FA91F8DFB1F203121A2
               HEX    00EE9D1EEE2C1FEE471FEED61FE8E004
               HEX    D0EFA9268DF81FA91C8DF91FA99E8DFA
               HEX    1FA91C8DFB1F203121A9A48DF81FA91C
               HEX    8DF91FA9BC8DFA1FA91C8DFB1F203121
               HEX    A9988DF81FA91D8DF91FA9108DFA1FA9
               HEX    1E8DFB1F203121A9168DF81FA91E8DF9
               HEX    1FA92E8DFA1FA91E8DFB1F203121A9BE
               HEX    8D
L20A9          HEX    F81FA91B8DF91FA90E8DFA1FA91C8DFB
               HEX    1F208421A9148DF81FA91C8DF91FA924
               HEX    8DFA1FA91C8DFB1F208421A9CC8DF81F
               HEX    A91C8DF91FA92C8DFA1FA91D8DFB1F20
               HEX    8421A9308DF81FA91D8DF91FA9808DFA
               HEX    1FA91D8DFB1F208421A9868DF81FA91D
               HEX    8DF91FA9968DFA1FA91D8DFB1F208421
               HEX    A93B8DF81FA91E8DF91FA99B8DFA1FA9
               HEX    1E8DFB1F20842160AEF81FACF91F8671
               HEX    8472A000B1718DFC1F8CFD1F18A9046D
               HEX    FC1F8DFC1FAEF81FACF91F86718472A0
               HEX    00ADFC1F917118ADF81F69038DF81FAD
               HEX    F91F69008DF91FADF91FCDFB1FD008AD
               HEX    F81FCDFA1FF0034C312160AEF81FACF9
               HEX    1F86718472A000B1718DFC1F8CFD1F18
               HEX    A9046DFC1F8DFC1FAEF81FACF91F8671
               HEX    8472A000ADFC1F917118ADF81F69048D
               HEX    F81FADF91F69008DF91FADF91FCDFB1F
               HEX    D008ADF81FCDFA1FF0034C8421600000
               HEX    4CE92100000000000000000000000000
               HEX    A20DA9009DDB21CAD0FAA9A18DE221A9
               HEX    1E8DE321A92B8DE421A91F8DE521201B
               HEX    23A94B8DE221A91F8DE321A9D58DE421
               HEX    A91F8DE521201B23A200EE9D1EEE2C1F
               HEX    EE471FEED61FE8E004D0EFA9268DE221
               HEX    A91C8DE321A99E8DE421A91C8DE52120
               HEX    1B23A9A48DE221A91C8DE321A9BC8DE4
               HEX    21A91C8DE521201B23A9988DE221A91D
               HEX    8DE321A9108DE421A91E8DE521201B23
               HEX    A9168DE221A91E8DE321A92E8DE421A9
               HEX    1E8DE521201B23A9BE8DE221A91B8DE3
               HEX    21A90E8DE421A91C8DE521206E23A914
               HEX    8DE221A91C8DE321A9248DE421A91C8D
               HEX    E521206E23A9CC8DE221A91C8DE321A9
               HEX    2C8DE421A91D8DE521206E23A9308DE2
               HEX    21A91D8DE321A9808DE421A91D8DE521
               HEX    206E23A9868DE221A91D8DE321A9968D
               HEX    E421A91D8DE521206E23A93B8DE221A9
               HEX    1E8DE321A99B8DE421A91E8DE521206E
               HEX    2360AEE221ACE32186718472A000B171
               HEX    8DE6218CE72138ADE621E9048DE621AE
               HEX    E221ACE32186718472A000ADE6219171
               HEX    18ADE22169038DE221ADE32169008DE3
               HEX    21ADE321CDE521D008ADE221CDE421F0
               HEX    034C1B2360AEE221ACE32186718472A0
               HEX    00B1718DE6218CE72138ADE621E9048D
               HEX    E621AEE221ACE32186718472A000ADE6
               HEX    21917118ADE22169048DE221ADE32169
               HEX    008DE321ADE321CDE521D008ADE221CD
               HEX    E421F0034C6E2360000020D323A91B85
               HEX    3D8543A920853F4C9411ADBE1B4A4A85
               HEX    FBA5FBC901F00820D921C6FB4CDA23C6
               HEX    FAA5FAD0016020EF1F4CE8238D55C08D
               HEX    03C08D05C020BC1B8D54C08D02C08D04
               HEX    C04CBC1B008D55C08D03C08D05C0202E
               HEX    1D8D54C08D02C08D04C04C2E1D008D55
               HEX    C08D03C08D05C0202E1D8D54C08D02C0
               HEX    8D04C04C2E1D00
L2440          LDY    #$00
L2442          STA    HISCR
               STA    $C003
               STA    $C005
               JSR    L1F45
               STA    LOWSCR
               STA    $C002
               STA    $C004
               JSR    L1F45
               INY
               CPY    #$28
               BCC    L2442
               RTS
               HEX    000000
L2463          LDY    #$00
L2465          STA    HISCR
               STA    $C003
               STA    $C005
               JSR    L1E9B
               STA    LOWSCR
               STA    $C002
               STA    $C004
               JSR    L1E9B
               INY
               CPY    #$28
               BCC    L2465
               RTS
               HEX    0000004C9E2400000000000000000000
               HEX    0000000000000000000000A215A9009D
               HEX    8824CAD0FAA92F8D8F24A5F9F0034CB9
               HEX    24A9278D8F24A9008D9324A9008D9524
               HEX    AD9524AC932420CC14AD1D148D972438
               HEX    A94FED95248D99248DC914AC932420CC
               HEX    148D9B24AE9B24205214AD9524AE9324
               HEX    206314AE9724205214AD9924AE932420
               HEX    6314AD9524C92790034C1525EE95244C
               HEX    C324AD9324CD8F24900360EAEAEE9324
               HEX    4CBE24A96485F920D516A5FC48A5FD48
               HEX    20C91820381985062038198507ADD218
               HEX    8508ADD3188509208818A90085FA85FB
               HEX    6885FD6885FC20BA18A606CA8ED4248A
               HEX    4A8D0925A607CA8EA924200915208115
               HEX    2086244C7B2500FFA5088DD218A5098D
               HEX    D318A90085FBA9918D4719A5FBC50790
               HEX    15A9B18D4719A94F8DD424A9278D0925
               HEX    A92F8DA924604AA8B96C168527A90085
               HEX    FA7985168526A000B1262038198D03C0
               HEX    B1268D02C0203819E626D002E627E6FA
               HEX    E6FAA5FAC50690DEE6FBE6FB4C8E25FF
               HEX    FF4C0026000000000000000000000000
               HEX    00000000000000000000000000A219A9
               HEX    009DE625CAD0FAA5FC8DEE25A96485F9
               HEX    2019264C5F26A9008DEF2520CB27ADF1
               HEX    25C9FAF0034C2E264C4426A90FCDF125
               HEX    90034C3E2620B8274C2E262076274C19
               HEX    26EEF325A9008DF525ADF325C950F003
               HEX    4C5C26A9028DF725604C192660ADF725
               HEX    C902F0034C6D264C9226A9018DFD25AD
               HEX    FD25C951F0034C7F264C922620CB27AD
               HEX    F125C9FAF0034C8F26EEFD254C7226A9
               HEX    028DF72520F523A94E8DF325A9008DF5
               HEX    25204A2720CB27A94F8DF325A9008DF5
               HEX    25204A2720CB274C5F26ADF725C901F0
               HEX    034CCA264CF426A9018DFD25ADFD25C9
               HEX    51F0034CDC264CF42620E827ADF125C9
               HEX    FAF0034CF126EEFD25D003EEFE254CCF
               HEX    26A9018DF725200E24A9008DF325A901
               HEX    8DFD25ADFD25C905F0034C13274C2B27
               HEX    20E827ADF125C9FAF0034C2827EEFD25
               HEX    D003EEFE254C0627A9008DF325203E27
               HEX    A9018DF325203E274C5F26A9008DF525
               HEX    20CB27204A2760A9008DEF2520CB27AD
               HEX    F125C9FAF0034C602720EE2760A90FCD
               HEX    F12590034C702720B8274C6027207627
               HEX    4C4A2718ADEF256DF5258DF925A92FCD
               HEX    F92590034C8F27A92F8DF925ADF1258D
               HEX    5114205014ADF5258DA614ADF9258DA8
               HEX    14ADF3258DAA1420A51418ADEF256DF5
               HEX    258DF5256038ADF125E9108DF125EEEF
               HEX    2560A9008DF52560AEED25ACEE258671
               HEX    8472A000B1718DF1258CF225EEED25D0
               HEX    03EEEE256020EE2720CB27ADED25D003
               HEX    CEEE25CEED2560FF2017018DF1258CF2
               HEX    254CDF27000000A9B1A271A08D8DD727
               HEX    8ED8278CD9276000000000A94CA29DA0
               HEX    264C102800
L2828          JSR    L294E
               LDA    #$00
               JSR    L286C
L2830          STA    STORE80ON
               STA    LOWSCR
               JSR    L28D0
               STA    HISCR
               JSR    L28D0
               LDA    #$C8
               JSR    WAIT
               DEC    $71
               BNE    L2830
               RTS
               HEX    0000
L284B          JSR    L294E
               LDA    #$28
               JSR    L286C
L2853          STA    STORE80ON
               STA    LOWSCR
               JSR    L289F
               STA    HISCR
               JSR    L289F
               LDA    #$C8
               JSR    WAIT
               DEC    $71
               BNE    L2853
               RTS
L286C          PHA
               LDA    #$26
               STA    $FC
               LDA    $72
               CMP    #$20
               BEQ    L2892
               CMP    #$3A
               BCC    L2896
               SEC
               SBC    #$40
L287E          STA    $FD
               LDA    #$4A
               STA    $FA
               PLA
               STA    $FB
               JSR    L1167
               JSR    L18BA
L288D          LDA    #$04
               STA    $71
               RTS
L2892          PLA
               JMP    L288D
L2896          SEC
               SBC    #$30
               CLC
               ADC    #$1B
               JMP    L287E
L289F          LDY    #$00
L28A1          LDA    $0651,Y
               STA    $0650,Y
               LDA    $06D1,Y
               STA    $06D0,Y
               LDA    $0751,Y
               STA    $0750,Y
               LDA    $07D1,Y
               STA    $07D0,Y
               INY
               CPY    #$27
               BEQ    L28C1
               JMP    L28A1
L28C1          LDA    #$00
               STA    $07F7
               STA    $0777
               STA    $06F7
               STA    $0677
               RTS
L28D0          LDY    #$00
L28D2          LDA    $0401,Y
               STA    $0400,Y
               LDA    $0481,Y
               STA    $0480,Y
               LDA    $0501,Y
               STA    $0500,Y
               LDA    $0581,Y
               STA    $0580,Y
               INY
               CPY    #$27
               BEQ    L28F2
               JMP    L28D2
L28F2          LDA    #$00
               STA    $0427
               STA    $04A7
               STA    $0527
               STA    $05A7
L2900          RTS
               HEX    000000
L2904          JSR    L12B1
               LDA    #$04
               STA    $71
L290B          LDA    $71
               BEQ    L2900
               JSR    L2440
               LDY    #$2E
               JSR    L2933
               JMP    L290B
               HEX    000000
L291D          JSR    L12B1
               LDA    #$04
               STA    $71
L2924          LDA    $71
               BEQ    L2900
               JSR    L2463
               LDY    #$00
               JSR    L2933
               JMP    L2924
L2933          TYA
               PHA
               LDX    #$00
               JSR    L1452
               LDA    #$00
               LDX    #$4F
               JSR    L1488
               PLA
               TAY
               INY
               LDA    #$00
               LDX    #$4F
               JSR    L1488
               DEC    $71
               RTS
L294E          JSR    L16A8
               JMP    L18B0
L2954          JSR    L2C92
               LDA    $D0
               BNE    L295C
               RTS
L295C          LDA    $D3
               STA    $2A05
               STA    $2A08
               STA    $2A0B
               STA    $2A0E
               STA    $2A13
               STA    $2A18
               STA    $2A1B
               STA    $2A20
               STA    L2BAC
               STA    $2BC4
               STA    $2BC7
               STA    $2BCA
               STA    $2BCD
               STA    L2BE0
               STA    L2BE3
               STA    L2BE8
               STA    L2BEB
               STA    L2BF0
               STA    L2BF3
               STA    L2BF9
               STA    L2BFF
               STA    L2C04
               STA    L2C07
               STA    L2C0C
               STA    L2C0F
               STA    $2C1C
               STA    $2C1F
               STA    $2C22
               STA    $2C25
               NOP
               NOP
               NOP
               JMP    L29DC
               HEX    0000000000000000
L29C3          HEX    00
L29C4          HEX    00
L29C5          HEX    00000000000000000000000000000000
               HEX    00000000000000
L29DC          LDX    #$21
               LDA    #$00
L29E0          STA    $29BA,X
               DEX
               BNE    L29E0
               LDA    #$97
               STA    L29C3
               LDA    #$3A
               STA    L29C4
               LDA    #$09
               STA    L29C5
               LDA    #$9A
               STA    $03FE
               LDA    #$2B
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
               LDA    #$25
               STA    $C405
               JSR    L2BB1
L2A24          CLI
               RTS
               HEX    20832B8DC729C9FFD0034CB829C9F8B0
               HEX    034C432A38E9F88DC7294CA62AADCB29
               HEX    D0068D312C4C512ACECB29ADCD29D006
               HEX    8D452C4C5F2ACECD29ADCF29D0068D32
               HEX    2C4C6D2ACECF29ADD129D0068D462C4C
               HEX    7B2ACED129ADC129D0068D332C4C892A
               HEX    CEC129ADD329D0068D472C4C972ACED3
               HEX    2920DC2BADC729F004CEC729604C262A
               HEX    20832B8DD52920832B8DD72920832B8D
               HEX    D929ADC729C901D0034CE12AC902D003
               HEX    4CFC2AC903D0034C172BC904D0034C32
               HEX    2BC905D0034C4D2B4C682BADD5298D29
               HEX    2CADD7298D2A2CADD9298DCB29ADC529
               HEX    8D312C4C262AADD5298D3D2CADD7298D
               HEX    3E2CADD9298DCD29ADC5298D452C4C26
               HEX    2AADD5298D2B2CADD7298D2C2CADD929
               HEX    8DCF29ADC5298D322C4C262AADD5298D
               HEX    3F2CADD7298D402CADD9298DD129ADC5
               HEX    298D462C4C262AADD5298D2D2CADD729
               HEX    8D2E2CADD9298DC129ADC5298D332C4C
               HEX    262AADD5298D412CADD7298D422CADD9
               HEX    298DD329ADC5298D472C4C262AEEC329
               HEX    D003EEC429AEC329ACC42986D284D3A0
               HEX    004C0E01A5454898488A4820432A68AA
               HEX    68A8A97F8D0D
L2BAC          HEX    C468400000
L2BB1          LDX    #$02
               LDA    #$00
L2BB5          STA    L2C31,X
               STA    L2C47,X
               DEX
               CPX    #$FF
               BNE    L2BB5
               LDA    #$07
               STX    $C403
               STX    $C483
               STA    $C402
               STA    $C482
               RTS
               HEX    0000000000000000000020162CA0008C
               HEX    01
L2BE0          HEX    C48C81
L2BE3          HEX    C4A9078D00
L2BE8          HEX    C48D80
L2BEB          HEX    C4A9048D00
L2BF0          HEX    C48D80
L2BF3          HEX    C4B9292C8D01
L2BF9          HEX    C4B93D2C8D81
L2BFF          HEX    C4A9068D00
L2C04          HEX    C48D80
L2C07          HEX    C4A9048D00
L2C0C          HEX    C48D80
L2C0F          HEX    C4C8C01090C960
L2C16          LDA    #$00
               LDX    #$04
               STA    $C400
               STX    $C400
               STA    $C480
               STX    $C480
               RTS
               HEX    00000000000000000038
L2C31          HEX    00000000000000000000000000000000
               HEX    000000380000
L2C47          HEX    00000000000000000000
L2C51          LDA    #$00
               STA    $D0
               STA    $D2
               LDA    #$C1
               STA    $D3
               LDY    #$04
L2C5D          LDA    ($D2),Y
               PHA
               LDA    ($D2),Y
               STA    $D1
               PLA
               SEC
               SBC    $D1
               CMP    #$08
               BNE    L2C82
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
               BNE    L2C82
               INC    $D0
               RTS
L2C82          LDA    #$00
               STA    $D2
               INC    $D3
               LDA    $D3
               CMP    #$C8
               BNE    L2C5D
               RTS
               HEX    000000
L2C92          JSR    L2C51
               LDX    #$00
L2C97          LDA    L2CA4,X
               STA    $010E,X
               INX
               CPX    #$09
               BNE    L2C97
               RTS
               HEX    00
L2CA4          HEX    8D02C0B1D28D02C060000000
L2CB0          SEI
               JMP    L2C16
               HEX    000000000000A940A27FA02C20142D4C
               HEX    941100000020AF19A940A26FA0D02014
               HEX    2D209B1920B919A970A27FA0D020142D
               HEX    209B19A92CA26BA04020142D4C991100
               HEX    000020AF19A9D0A2FEA04020142D209B
               HEX    1920B919A9D0A2DFA07020142D4C9B19
               HEX    853D863F844360000000
