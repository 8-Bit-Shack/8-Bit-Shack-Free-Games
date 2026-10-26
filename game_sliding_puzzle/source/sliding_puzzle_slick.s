************************************************************
* sliding_puzzle - SLICK (disassembly)
*
* Disassembled from the original binary (384 bytes, $7E80-$7FFF).
* Reconstructed source: labels are generated, comments are minimal.
* Bytes the disassembler could not prove to be code are emitted as HEX/ASC data.
* Original program by its authors; see ../README.txt for attribution and terms.
* Entry point(s): $7E80, $7E8B (NMOS 6502 opcodes only).
************************************************************

               ORG    $7E80

START          LDA    #$8B
               STA    $03F6
               LDA    #$7E
               STA    $03F7
               RTS
D7E8B          LDY    #$0A
L7E8D          CMP    D7EAA,Y
               BEQ    L7E96
               DEY
               BPL    L7E8D
               RTS
L7E96          TYA
               ASL
               TAY
               LDA    D7EB5,Y
               STA    $CE
               INY
               LDA    D7EB5,Y
               STA    $CF
               JSR:   $B1
               JMP:   ($CE)
D7EAA          HEX    BAA8C5BEBDA0A7C7D7AE94
D7EB5          HEX    F07F527F3F7F007F887F4A7F507FC87F
               HEX    B07FD37ED07E0000000000A9012CA902
               HEX    850620F8E6EC80849005F0034C99E186
               HEX    07C9C5D00920F5E68608C92CF0034CC9
               HEX    DE20F5E686094C00800000A50A4820F8
               HEX    E68607204CE78608C9C1D0E220F5E6E8
               HEX    8A38E5078509204CE748E88A38E50885
               HEX    0A68C9C5D00620B100203F7FA9038506
               HEX    20008068850A600000002067DD2052E7
               HEX    840B850C6020F8E6860A60182438A901
               HEX    85060820F8E628A900B0068607850890
               HEX    0485078608207B7FB0034C99E14C0082
               HEX    20B10020F8E6E020B003E00160E0FFF0
               HEX    011860D00FA630A90085078608A90285
               HEX    064C008220F8E6C92CD0EC20787F90CA
               HEX    860720F5E6B0E44CC9DE0020F8E6C929
               HEX    D0F58A30039D54C0297FF002A90C85D7
               HEX    4CB10020787F90A28607498EC902B0D7
               HEX    4A6A0903850620F5E68608C9C1D0C820
               HEX    757F908686094C0082000048A52945D7
               HEX    8529684CD5DA0000000000
