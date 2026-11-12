************************************************************
* planet_invasion - THEME.MUSIC (disassembly)
*
* Disassembled from the original binary (1016 bytes, $7800-$7BF7).
* Reconstructed source: labels are generated, comments are minimal.
* Bytes the disassembler could not prove to be code are emitted as HEX/ASC data.
* Original program by its authors; see ../README.txt for attribution and terms.
* Entry point(s): $7800, $78C3 (NMOS 6502 opcodes only).
************************************************************

               ORG    $7800

KEY            EQU    $C000
SPKR           EQU    $C030

START          LDA    #$01
               STA    $09
               STA    $1D
               PHA
               PHA
               PHA
               BNE    L7820
L780B          INY
               LDA    ($1E),Y
               STA    $09
               INY
               LDA    ($1E),Y
               STA    $1D
L7815          LDA    $1E
               CLC
               ADC    #$03
               STA    $1E
               BCC    L7820
               INC    $1F
L7820          LDY    #$00
               LDA    ($1E),Y
               CMP    #$01
               BEQ    L780B
               BCS    L7837
               PLA
               PLA
               PLA
L782D          LDX    #$49
               INY
               LDA    ($1E),Y
               BNE    L7836
               LDX    #$C9
L7836          RTS
L7837          STA    $08
               JSR    L782D
               STX    L7883
               STA    $06
               LDX    $09
L7843          LSR
               DEX
               BNE    L7843
               STA    $787C
               JSR    L782D
               STX    L78BB
               STA    $07
               LDX    $1D
L7854          LSR
               DEX
               BNE    L7854
               STA    $78B4
               PLA
               TAY
               PLA
               TAX
               PLA
               BNE    L7865
L7862          BIT    SPKR
L7865          CMP    #$00
               BMI    L786C
               NOP
               BPL    L786F
L786C          BIT    SPKR
L786F          STA    $4E
               BIT    KEY
               BMI    L7836
               DEY
               BNE    L787B
               BEQ    L7881
L787B          CPY    #$0F
               BEQ    L7883
               BNE    L7885
L7881          LDY    $06
L7883          EOR    #$40
L7885          BIT    $4E
               BVC    L7890
               BVS    L788B
L788B          BPL    L7896
               NOP
               BMI    L7899
L7890          NOP
               BMI    L7896
               NOP
               BPL    L7899
L7896          CMP    SPKR
L7899          DEC    $4F
               BNE    L78AE
               DEC    $08
               BNE    L78AE
               BVC    L78A6
               BIT    SPKR
L78A6          PHA
               TXA
               PHA
               TYA
               PHA
               JMP    L7815
L78AE          DEX
               BNE    L78B3
               BEQ    L78B9
L78B3          CPX    #$00
               BEQ    L78BB
               BNE    L78BD
L78B9          LDX    $07
L78BB          CMP    #$80
L78BD          BVS    L7862
               NOP
               BVC    L7865
               HEX    00A9 ; BRK
               HEX    D0851EA978851F6000D3C10001020210
               HEX    4800104400103300104000103C00102D
               HEX    00103900103600102800103000102D00
               HEX    102200102B00102800101E0010240010
               HEX    4400103300104000103C00102D001039
               HEX    00103600102800103000102D00102200
               HEX    102B00102800101E0010240010220010
               HEX    1900102000101E0040130020363C2048
               HEX    50205A60106C00606C00106C00106C00
               HEX    10363C10364010364810364810365610
               HEX    3650103648086C6C086C6C103C361040
               HEX    36104836104836105036104836105636
               HEX    08006C08006C10363C10364010364810
               HEX    3648103656103650103648086C00086C
               HEX    00103C36104036104836104836105036
               HEX    104836105636105636010203106CD810
               HEX    6CD8106C90106C90106C6C106C90106C
               HEX    6C106C901048D81048D8104890104890
               HEX    10486C10489010486C1048901036D810
               HEX    36D810369010369010366C1036901036
               HEX    6C1036901036D81036D8103690103690
               HEX    10366C10369018006C085690105AD810
               HEX    5AD8105A90105A90105A6C105A90105A
               HEX    6C105A90105AD8105AD8105A90105A90
               HEX    105A6C105A90105A6C105A90103CD810
               HEX    36D810369010369010366C1800900848
               HEX    90103CD8103CD810369010369010366C
               HEX    10369010366C103690106CD8106CD810
               HEX    6C90106C90106C6C106C90106C6C106C
               HEX    901048D81048D810489010489010486C
               HEX    10489010486C1048901036D81036D810
               HEX    369010369010366C10369010366C1036
               HEX    901036D81036D810369010369010366C
               HEX    10369010366C180090085A901056D810
               HEX    56D81060781060781060781060781060
               HEX    781060781056D81056D8105078105078
               HEX    105078105078105078105078103CD810
               HEX    3CD810369010369010366C1036901048
               HEX    6C104890103CD8103CD8103690103690
               HEX    10366C10369010006C100090106CD810
               HEX    6CD8106C90106C90106C6C106C90106C
               HEX    6C106C901048D81048D8104890104890
               HEX    10486C10489010486C1048901036D810
               HEX    36D810369010369010366C1036901036
               HEX    6C1036901036D81036D8103690103690
               HEX    10366C10369018006C08569040405040
               HEX    40502040502048398040364030442036
               HEX    2B203028802B2420362B203028402B24
               HEX    402028401C24C01B2B80222D801E2820
               HEX    D86C20D81B20D86C20D81B20D86C20D8
               HEX    1B20D86C20D81B20D86C201B1BFFFFFE
               HEX    00020200
