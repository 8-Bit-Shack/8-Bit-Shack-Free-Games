************************************************************
* mad_max - PDL (disassembly)
*
* Disassembled from the original binary (31 bytes, $0378-$0396).
* Reconstructed source: labels are generated, comments are minimal.
* Bytes the disassembler could not prove to be code are emitted as HEX/ASC data.
* Original program by its authors; see ../README.txt for attribution and terms.
* Entry point(s): $0378 (NMOS 6502 opcodes only).
************************************************************

               ORG    $0378

PADDL0         EQU    $C064
PTRIG          EQU    $C070

START          LDX    #$00
L037A          LDA    PADDL0,X
               BPL    L0382
               JMP    L037A
L0382          LDA    PTRIG
               LDY    #$00
               NOP
               NOP
L0389          LDA    PADDL0,X
               BPL    L0392
               INY
               BNE    L0389
               DEY
L0392          STY    D0396
               RTS
D0396          HEX    00
