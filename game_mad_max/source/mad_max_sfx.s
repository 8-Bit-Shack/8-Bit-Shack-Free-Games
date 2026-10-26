************************************************************
* mad_max - SFX (disassembly)
*
* Disassembled from the original binary (96 bytes, $80A0-$80FF).
* Reconstructed source: labels are generated, comments are minimal.
* Bytes the disassembler could not prove to be code are emitted as HEX/ASC data.
* Original program by its authors; see ../README.txt for attribution and terms.
* Entry point(s): $80A0 (NMOS 6502 opcodes only).
************************************************************

               ORG    $80A0

SPKR           EQU    $C030

START          LDA    $09
               CMP    #$01
               BEQ    L80BC
               CMP    #$02
               BEQ    L80CA
               CMP    #$03
               BEQ    L80E0
               LDX    $CF
L80B0          BIT    SPKR
               LDY    $CE
L80B5          DEY
               BNE    L80B5
               DEX
               BNE    L80B0
               RTS
L80BC          LDX    $CF
L80BE          LDY    $CE
L80C0          BIT    SPKR
               DEY
               BNE    L80C0
               DEX
               BNE    L80BE
               RTS
L80CA          LDX    $CF
L80CC          BIT    SPKR
               LDY    $CE
L80D1          DEY
               BNE    L80D1
               DEC    $CE
               DEX
               BNE    L80CC
               RTS
               HEX    000000000000
L80E0          LDX    $CF
L80E2          LDA    $F000,X
               LDY    #$08
L80E7          LSR
               BCC    L80ED
               BIT    SPKR
L80ED          STY    $FE
               LDY    $CE
L80F1          DEY
               BNE    L80F1
               LDY    $FE
               DEY
               BNE    L80E7
               DEX
               BNE    L80E2
               RTS
               HEX    000000
