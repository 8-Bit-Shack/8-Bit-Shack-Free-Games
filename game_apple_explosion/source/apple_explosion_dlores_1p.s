************************************************************
* apple_explosion - DLORES.1P (disassembly)
*
* Disassembled from the original binary (1795 bytes, $8EF8-$95FA).
* Reconstructed source: labels are generated, comments are minimal.
* Bytes the disassembler could not prove to be code are emitted as HEX/ASC data.
* Original program by its authors; see ../README.txt for attribution and terms.
* Entry point(s): $8EF8, $927C, $934C, $95D8 (NMOS 6502 opcodes only).
************************************************************

               ORG    $8EF8

STORE80ON      EQU    $C001
COL80ON        EQU    $C00D
TXTCLR         EQU    $C050
MIXCLR         EQU    $C052
LOWSCR         EQU    $C054
HISCR          EQU    $C055
DHIRESON       EQU    $C05E
CLRSCR         EQU    $F832

START          CLC
               LDA    TXTCLR
               LDA    #$00
               STA    STORE80ON
               STA    COL80ON
               LDA    MIXCLR
               LDA    DHIRESON
               LDA    HISCR
               JSR    CLRSCR
               LDA    LOWSCR
               JMP    CLRSCR
               HEX    0088119922AA33BB44CC55DD66EE77FF
               HEX    00000000204CE7BD168F8D5A8FBD3E8F
               HEX    8D5B8F60000000000011223344556677
               HEX    8899AABBCCDDEEFF0000000000000000
               HEX    000000000000204CE78E668F204CE7A9
               HEX    004AA88A900BAE5B8F8630AE54C04C00
               HEX    F8AE5A8F8630AE55C04C00F800000000
               HEX    0000000000000000204CE78EBE8F204C
               HEX    E7E88EBF8F204CE78EA28FA200ADBE8F
               HEX    CDBF8FF00920678FEEBE8F4CA18F6000
               HEX    00000000000000000000204CE78EF08F
               HEX    204CE7E88EF18F204CE78ED48FA900AE
               HEX    F08FECF18FF00920678FEEF08F4CD38F
               HEX    60000000000000000000000000020406
               HEX    080A0C0E01030507090B0D0FA000B911
               HEX    9020EDFDC8C011D0F5F011CEC1D3D0C9
               HEX    D4C5A0CCC1C2D3A0B2B0B1B76060204C ; TE LABS 2017`` L
               HEX    E78E3190204CE78E3590A9004AA8A900
               HEX    900AAE54C02071F88D559060AE55C020
               HEX    71F8AABDF28F8D559060000000000000
               HEX    8E668F98AA4C658F00008DBE8FE88EBF
               HEX    8F8CA28F4CA18F00008DF08FE88EF18F
               HEX    8CD48F4CD38F00008E31908C35904C30
               HEX    9000FFFF0000FFFF0000FFFF0000FFFF
               HEX    0000FFFF0000FFFF0000FFFF0000FFFF
               HEX    0000FFFF0000FFFF0000FFFF0000FFFF
               HEX    0000FFFF0000FFFF0000FFFF0000FFFF
               HEX    0000FFFF0000FFFF0000FFFF0000FFFF
               HEX    0000FFFF0000FFFF0000FFFFAD54C020
               HEX    0A91AD55C0E6D6200A91C6D660000000
               HEX    AD54C0201991AD55C0E6D6201991C6D6
               HEX    60000000A5D60A0A186904A8A904A207
               HEX    4C6091A5D60A0A186904A86903AA98A0
               HEX    044C6F91000000AD55C0A9B88D5F9120
               HEX    5A91AD54C0A9BC8D5F914C5A91000000
               HEX    AD55C0A9B8A2BB206D91AD54C04C6991
               HEX    00000000A904A207A0BC207891384C11
               HEX    C30000A9BCA2BFA004207891184C11C3
               HEX    0000853D863F8443A900853C8542A9FF
               HEX    853E60000000A2C8A0914CB091000000
               HEX    A23AA0934CB091000000A2A7A0944CB0
               HEX    91000000A251A095EAEA8EC0918EC691
               HEX    8CC1918CC791AD55C0200000AD54C04C
               HEX    0000AD000448AD800448AD000548AD80
               HEX    0548AD000648AD800648AD000748AD80
               HEX    0748AD280448ADA80448AD280548ADA8
               HEX    0548AD280648ADA80648AD280748ADA8
               HEX    0748AD500448ADD00448AD500548ADD0
               HEX    0548A5E3C900F010AD500648ADD00648
               HEX    AD500748ADD00748A000
L9230          LDA    $0401,Y
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
               HEX    99
L927C          PLP
               ASL    $B9
               LDA    #$06
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
               LDA    $E3
               CMP    #$00
               BEQ    L92C6
               LDA    $0651,Y
               STA    $0650,Y
               LDA    $06D1,Y
               STA    $06D0,Y
               LDA    $0751,Y
               STA    $0750,Y
               LDA    $07D1,Y
               STA    $07D0,Y
L92C6          INY
               CPY    #$27
               BEQ    L92CE
               JMP    L9230
L92CE          NOP
               LDA    $E3
               CMP    #$00
               BEQ    L92E5
               PLA
               STA    $07F7
               PLA
               STA    $0777
               PLA
               STA    $06F7
               PLA
               STA    $0677
L92E5          PLA
               STA    $05F7
               PLA
               STA    $0577
               PLA
               STA    $04F7
               PLA
               STA    $0477
               PLA
               STA    $07CF
               PLA
               STA    $074F
               PLA
               STA    $06CF
               PLA
               STA    $064F
               PLA
               STA    $05CF
               PLA
               STA    $054F
               PLA
               STA    $04CF
               PLA
               STA    $044F
               PLA
               STA    $07A7
               PLA
               STA    $0727
               PLA
               STA    $06A7
               PLA
               STA    $0627
               PLA
               STA    $05A7
               PLA
               STA    $0527
               PLA
               STA    $04A7
               PLA
               STA    $0427
               RTS
               HEX    00000000AD270448ADA70448AD270548
               HEX    ADA70548AD27
L934C          ASL    $48
               LDA    $06A7
               PHA
               LDA    $0727
               PHA
               LDA    $07A7
               PHA
               LDA    $044F
               PHA
               LDA    $04CF
               PHA
               LDA    $054F
               PHA
               LDA    $05CF
               PHA
               LDA    $064F
               PHA
               LDA    $06CF
               PHA
               LDA    $074F
               PHA
               LDA    $07CF
               PHA
               LDA    $0477
               PHA
               LDA    $04F7
               PHA
               LDA    $0577
               PHA
               LDA    $05F7
               PHA
               LDA    $E3
               CMP    #$00
               BEQ    L93A0
               LDA    $0677
               PHA
               LDA    $06F7
               PHA
               LDA    $0777
               PHA
               LDA    $07F7
               PHA
L93A0          LDY    #$26
L93A2          LDA    $0400,Y
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
               LDA    $E3
               CMP    #$00
               BEQ    L9438
               LDA    $0650,Y
               STA    $0651,Y
               LDA    $06D0,Y
               STA    $06D1,Y
               LDA    $0750,Y
               STA    $0751,Y
               LDA    $07D0,Y
               STA    $07D1,Y
L9438          DEY
               BMI    L943E
               JMP    L93A2
L943E          LDA    $E3
               CMP    #$00
               BEQ    L9454
               PLA
               STA    $07D0
               PLA
               STA    $0750
               PLA
               STA    $06D0
               PLA
               STA    $0650
L9454          PLA
               STA    $05D0
               PLA
               STA    $0550
               PLA
               STA    $04D0
               PLA
               STA    $0450
               PLA
               STA    $07A8
               PLA
               STA    $0728
               PLA
               STA    $06A8
               PLA
               STA    $0628
               PLA
               STA    $05A8
               PLA
               STA    $0528
               PLA
               STA    $04A8
               PLA
               STA    $0428
               PLA
               STA    $0780
               PLA
               STA    $0700
               PLA
               STA    $0680
               PLA
               STA    $0600
               PLA
               STA    $0580
               PLA
               STA    $0500
               PLA
               STA    $0480
               PLA
               STA    $0400
               RTS
               HEX    0000A000A5E3C900F01FB9D00748B950
               HEX    0799D007B9D006995007B9500699D006
               HEX    B9D0059950064CD294B9D00548B95005
               HEX    99D005B9D004995005B9500499D004B9
               HEX    A807995004B9280799A807B9A8069928
               HEX    07B9280699A806B9A805992806B92805
               HEX    99A805B9A804992805B9280499A804B9
               HEX    8007992804B90007998007B980069900
               HEX    07B90006998006B98005990006B90005
               HEX    998005B98004990005B9000499800468
               HEX    990004C8C028F0034CA99460A000
L9553          LDA    $0400,Y
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
               LDA    $E3
               CMP    #$00
               BNE    L95DC
               PLA
               STA    $05D0,Y
L95D3          INY
               CPY    #$28
               BEQ    L95DB
L95D8          JMP    L9553
L95DB          RTS
L95DC          LDA    $0650,Y
               STA    $05D0,Y
               LDA    $06D0,Y
               STA    $0650,Y
               LDA    $0750,Y
               STA    $06D0,Y
               LDA    $07D0,Y
               STA    $0750,Y
               PLA
               STA    $07D0,Y
               JMP    L95D3
