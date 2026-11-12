************************************************************
* oubliette_2021 - SWAP.DISK (disassembly)
*
* Disassembled from the original binary (1662 bytes, $5ECE-$654B).
* Reconstructed source: labels are generated, comments are minimal.
* Bytes the disassembler could not prove to be code are emitted as HEX/ASC data.
* Original program by its authors; see ../README.txt for attribution and terms.
* Entry point(s): $5ECE, $6092, $611B, $61A4, $632B, $64BE (NMOS 6502 opcodes only).
************************************************************

               ORG    $5ECE

PLOT           EQU    $F800

               HEX    1F000100212099BB010013993B006366
               HEX    5555AA66660D00070200170F0C000D02
               HEX    007D04FF0000FFFF0818000F02001265
               HEX    9988B8B8B88880003F65656A8000010F
               HEX    02000A6F04FF0001FFFF23000A0F0200
               HEX    0540F0F9F988010020F9F001007F5050
               HEX    66F6F6F6F60001000F02000A11210001
               HEX    0F23000A0F02000570FFFFFFFFF888F8
               HEX    070060FFFFFF55556608000F80001D4F
               HEX    60FF001480002801020003A10054665F
               HEX    5F5F5F80001FA00100144560FF008D42
               HEX    000F02001B017C000002000F3700010F
               HEX    7F00142FA0028001016F909099999990
               HEX    570001080200013A0000020008150004
               HEX    02000F8000154DFFFF000D42006499BB
               HEX    0BBB0BBBD80264605050A06060590006
               HEX    020030FF00007F022688881300060200
               HEX    0F80001450A0C3FF0000000F80001450
               HEX    A0C3FF0000000000000BC34A1500FFFF
               HEX    0000A9008D5160A9138D52602047F8A5
               HEX    268506A5278507AD51602047F8A027B1
               HEX    06203E6048B126203E60910668912688
               HEX    10EDEE5160CE5260AD5260C909D0CD60
               HEX    AA4A4A4A4A8D50608A0A0A0A0A186D50
               HEX    6060FFFF00A9008D90608D9160A82047
               HEX    F8AC9160B12648A92738ED9160A8B126
               HEX    AA689126AC91608A9126C88C9160C014
               HEX    D0E2A0008C9160EE9060AD9060C914D0
               HEX    CD60FFFF
L6092          LDY    #$00
L6094          LDA    $0400,Y
               STA    $3FFF
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
               LDA    $3FFF
               STA    $05D0,Y
               INY
               CPY    #$28
               BEQ    L611A
               JMP    L6094
L611A          RTS
L611B          LDY    #$00
L611D          LDA    $05D0,Y
               STA    $3FFF
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
               LDA    $3FFF
               STA    $0400,Y
               INY
               CPY    #$28
               BEQ    L61A3
               JMP    L611D
L61A3          RTS
L61A4          LDA    $0400
               STA    L6317
               LDA    $0480
               STA    L6318
               LDA    $0500
               STA    L6319
               LDA    $0580
               STA    L631A
               LDA    $0600
               STA    L631B
               LDA    $0680
               STA    L631C
               LDA    $0700
               STA    L631D
               LDA    $0780
               STA    L631E
               LDA    $0428
               STA    L631F
               LDA    $04A8
               STA    L6320
               LDA    $0528
               STA    L6321
               LDA    $05A8
               STA    L6322
               LDA    $0628
               STA    L6323
               LDA    $06A8
               STA    L6324
               LDA    $0728
               STA    L6325
               LDA    $07A8
               STA    L6326
               LDA    $0450
               STA    L6327
               LDA    $04D0
               STA    L6328
               LDA    $0550
               STA    L6329
               LDA    $05D0
               STA    L632A
               LDY    #$00
L621E          LDA    $0401,Y
               STA    $0400,Y
               LDA    $0481,Y
               STA    $0480,Y
               LDA    $0501,Y
               STA    $0500,Y
               LDA    $0581,Y
               STA    $0580,Y
               LDA    $0601,Y
               STA    $0600,Y
               LDA    $0681,Y
               STA    $0680,Y
               LDA    $0701,Y
               STA    $0700,Y
               LDA    $0781,Y
               STA    $0780,Y
               LDA    $0429,Y
               STA    $0428,Y
               LDA    $04A9,Y
               STA    $04A8,Y
               LDA    $0529,Y
               STA    $0528,Y
               LDA    $05A9,Y
               STA    $05A8,Y
               LDA    $0629,Y
               STA    $0628,Y
               LDA    $06A9,Y
               STA    $06A8,Y
               LDA    $0729,Y
               STA    $0728,Y
               LDA    $07A9,Y
               STA    $07A8,Y
               LDA    $0451,Y
               STA    $0450,Y
               LDA    $04D1,Y
               STA    $04D0,Y
               LDA    $0551,Y
               STA    $0550,Y
               LDA    $05D1,Y
               STA    $05D0,Y
               INY
               CPY    #$27
               BEQ    L629E
               JMP    L621E
L629E          LDA    L6317
               STA    $0427
               LDA    L6318
               STA    $04A7
               LDA    L6319
               STA    $0527
               LDA    L631A
               STA    $05A7
               LDA    L631B
               STA    $0627
               LDA    L631C
               STA    $06A7
               LDA    L631D
               STA    $0727
               LDA    L631E
               STA    $07A7
               LDA    L631F
               STA    $044F
               LDA    L6320
               STA    $04CF
               LDA    L6321
               STA    $054F
               LDA    L6322
               STA    $05CF
               LDA    L6323
               STA    $064F
               LDA    L6324
               STA    $06CF
               LDA    L6325
               STA    $074F
               LDA    L6326
               STA    $07CF
               LDA    L6327
               STA    $0477
               LDA    L6328
               STA    $04F7
               LDA    L6329
               STA    $0577
               LDA    L632A
               STA    $05F7
               RTS
L6317          HEX    00
L6318          HEX    00
L6319          HEX    00
L631A          HEX    00
L631B          HEX    00
L631C          HEX    00
L631D          HEX    00
L631E          HEX    00
L631F          HEX    00
L6320          HEX    00
L6321          HEX    00
L6322          HEX    00
L6323          HEX    00
L6324          HEX    00
L6325          HEX    00
L6326          HEX    00
L6327          HEX    00
L6328          HEX    00
L6329          HEX    00
L632A          HEX    00
L632B          LDA    $0427
               STA    L649C
               LDA    $04A7
               STA    L649D
               LDA    $0527
               STA    L649E
               LDA    $05A7
               STA    L649F
               LDA    $0627
               STA    L64A0
               LDA    $06A7
               STA    L64A1
               LDA    $0727
               STA    L64A2
               LDA    $07A7
               STA    L64A3
               LDA    $044F
               STA    L64A4
               LDA    $04CF
               STA    L64A5
               LDA    $054F
               STA    L64A6
               LDA    $05CF
               STA    L64A7
               LDA    $064F
               STA    L64A8
               LDA    $06CF
               STA    L64A9
               LDA    $074F
               STA    L64AA
               LDA    $07CF
               STA    L64AB
               LDA    $0477
               STA    L64AC
               LDA    $04F7
               STA    L64AD
               LDA    $0577
               STA    L64AE
               LDA    $05F7
               STA    L64AF
               LDY    #$26
L63A5          LDA    $0400,Y
               STA    $0401,Y
               LDA    $0480,Y
               STA    $0481,Y
               LDA    $0500,Y
               STA    $0501,Y
               LDA    $0580,Y
               STA    $0581,Y
               LDA    $0600,Y
               STA    $0601,Y
               LDA    $0680,Y
               STA    $0681,Y
               LDA    $0700,Y
               STA    $0701,Y
               LDA    $0780,Y
               STA    $0781,Y
               LDA    $0428,Y
               STA    $0429,Y
               LDA    $04A8,Y
               STA    $04A9,Y
               LDA    $0528,Y
               STA    $0529,Y
               LDA    $05A8,Y
               STA    $05A9,Y
               LDA    $0628,Y
               STA    $0629,Y
               LDA    $06A8,Y
               STA    $06A9,Y
               LDA    $0728,Y
               STA    $0729,Y
               LDA    $07A8,Y
               STA    $07A9,Y
               LDA    $0450,Y
               STA    $0451,Y
               LDA    $04D0,Y
               STA    $04D1,Y
               LDA    $0550,Y
               STA    $0551,Y
               LDA    $05D0,Y
               STA    $05D1,Y
               DEY
               BMI    L6423
               JMP    L63A5
L6423          LDA    L649C
               STA    $0400
               LDA    L649D
               STA    $0480
               LDA    L649E
               STA    $0500
               LDA    L649F
               STA    $0580
               LDA    L64A0
               STA    $0600
               LDA    L64A1
               STA    $0680
               LDA    L64A2
               STA    $0700
               LDA    L64A3
               STA    $0780
               LDA    L64A4
               STA    $0428
               LDA    L64A5
               STA    $04A8
               LDA    L64A6
               STA    $0528
               LDA    L64A7
               STA    $05A8
               LDA    L64A8
               STA    $0628
               LDA    L64A9
               STA    $06A8
               LDA    L64AA
               STA    $0728
               LDA    L64AB
               STA    $07A8
               LDA    L64AC
               STA    $0450
               LDA    L64AD
               STA    $04D0
               LDA    L64AE
               STA    $0550
               LDA    L64AF
               STA    $05D0
               RTS
L649C          HEX    00
L649D          HEX    00
L649E          HEX    00
L649F          HEX    00
L64A0          HEX    00
L64A1          HEX    00
L64A2          HEX    00
L64A3          HEX    00
L64A4          HEX    00
L64A5          HEX    00
L64A6          HEX    00
L64A7          HEX    00
L64A8          HEX    00
L64A9          HEX    00
L64AA          HEX    00
L64AB          HEX    00
L64AC          HEX    00
L64AD          HEX    00
L64AE          HEX    00
L64AF          HEX    00FFFF0000FFFF0000FFFF0000FFFF
L64BE          JMP    L64D7
               HEX    00000000000000
L64C8          HEX    000000
L64CB          HEX    000000
L64CE          HEX    000000
L64D1          HEX    000000
L64D4          HEX    000000
L64D7          LDX    #$16
               LDA    #$00
L64DB          STA    $64C0,X
               DEX
               BNE    L64DB
               LDA    #$00
               STA    L64C8
L64E6          LDA    #$00
               STA    L64CB
L64EB          LDY    L64CB
               LDA    L64C8
               JSR    $F871
               STA    L64CE
               SEC
               LDA    #$27
               SBC    L64CB
               STA    L64D1
               LDY    L64D1
               LDA    L64C8
               JSR    $F871
               STA    L64D4
               LDA    L64D4
               JSR    $F864
               LDY    L64CB
               LDA    L64C8
               JSR    PLOT
               LDA    L64CE
               JSR    $F864
               LDY    L64D1
               LDA    L64C8
               JSR    PLOT
               LDA    L64CB
               CMP    #$13
               BCC    L6534
               JMP    L653A
L6534          INC    L64CB
               JMP    L64EB
L653A          LDA    L64C8
               CMP    #$27
               BCC    L6544
               JMP    L654A
L6544          INC    L64C8
               JMP    L64E6
L654A          RTS
               HEX    00
