* Reconstructed from MADMAX.SYSTEM (disassembled; labels are generated)
         ORG $2000
         MX  %11
         CLD
         LDX #$00
L2003    LDA $00,X
         STA L636E,X
         INX
         BNE L2003
         LDA $C029 ; NEWVIDEO
         STA L2EB1
         LDA $C035 ; SHADOW
         STA L2EB3
         LDA $C036 ; SPEED
         STA L2EB5
         ORA #$80
         STA $C036 ; SPEED
         LDA $C034 ; CLOCKCTL
         STA L2EB7
         AND #$F0
         STA $C034 ; CLOCKCTL
         CLC
         XCE
         REP #$30
         MX  %00
         LDA #$0000
         LDX #$0000
L2037    STA >$E19D00,X
         INX
         INX
         CPX #$0300
         BNE L2037
         SEP #$30
         MX  %11
         SEC
         XCE
         LDA $C029 ; NEWVIDEO
         ORA #$C0
         STA $C029 ; NEWVIDEO
         JSR L33E5
         BCC L2056
         JMP L346D
L2056    LDA #$90
         LDX #$2C
         LDY #$00
         JSR L2F7B
         BCC L2064
         JMP L3473
L2064    CLC
         XCE
         REP #$30
         MX  %00
         LDA #$0000
         LDX L2EA7
         JSR L30B7
         JSR L312A
         INC L2E57
         SEP #$30
         MX  %11
         SEC
         XCE
         LDA $C029 ; NEWVIDEO
         ORA #$C0
         STA $C029 ; NEWVIDEO
         LDA #$9A
         LDX #$2C
         LDY #$01
         JSR L2F7B
         BCC L2091
         JMP L3473
L2091    LDA #$A2
         STA L3690
         LDA #$2C
         STA L3691
         LDA L2EAB
         STA L3692
         STZ L3694
         STZ L3695
         LDA #$C2
         STA L3696
         LDA #$D0
         STA L3697
         STZ L2E03
         JSR L3512
         BCS L2111
         LDA #$A8
         STA L3690
         LDA #$2C
         STA L3691
         LDA L2EAD
         STA L3692
         LDA #$37
         STA L3696
         LDA #$CB
         STA L3697
         JSR L3512
         BCS L2111
         LDA L2EAF
         BEQ L20FF
         LDA #$B3
         STA L3690
         LDA #$2C
         STA L3691
         LDA L2EAF
         STA L3692
         LDA #$FF
         STA L3696
         LDA #$FF
         STA L3697
         JSR L3512
         BCC L20FF
         STZ L2EAF
L20FF    JSR L2114
         SEI
         CLC
         XCE
         REP #$30
         MX  %00
         LDA #$0000
         TCD
         JSR L3255
         JMP L21F2
         MX  %11
L2111    JMP L3473
L2114    LDA #$AE
         STA L3690
         LDA #$2C
         STA L3691
         LDA L2EA9
         STA L3692
         STZ L3694
         STZ L3695
         LDA #$05
         STA L3696
         STZ L3697
         LDA #$01
         STA L2E03
         JSR L3512
         BCS L2174
         LDA L2EA9
         STA $8E
         STZ $8F
         STZ $8C
         STZ $8D
         LDY #$00
L2149    LDA [$8C],Y
         BEQ L2174
         BMI L2174
         CMP #$1B
         BEQ L2174
         INY
         CPY #$04
         BNE L2149
         LDY #$00
L215A    LDA [$8C],Y
         STA L2DDE,Y
         INY
         CPY #$04
         BNE L215A
         LDA L3698
         CMP #$05
         BCC L2174
         LDA [$8C],Y
         CMP #$04
         BCS L2174
         STA L2DE2
L2174    RTS
         MX  %00
L2175    SEP #$30
         MX  %11
         SEC
         XCE
         LDA #$AE
         STA L21D7
         STA L21E3
         STA $84
         LDA #$2C
         STA L21D8
         STA L21E4
         STA $85
         JSR $BF00
         HEX C0D621 ; MLI CREATE
         JSR $BF00
         HEX C8E221 ; MLI OPEN
         BEQ L21BC
         JSR L35CF
         LDA #$4E
         STA L21D7
         STA L21E3
         LDA #$36
         STA L21D8
         STA L21E4
         JSR $BF00
         HEX C0D621 ; MLI CREATE
         JSR $BF00
         HEX C8E221 ; MLI OPEN
         BNE L21D1
L21BC    LDA L21E7
         STA L21E9
         STA L21F1
         JSR $BF00
         HEX CBE821 ; MLI WRITE
         JSR $BF00
         HEX CCF021 ; MLI CLOSE
L21D1    CLC
         XCE
         REP #$30
         MX  %00
         RTS
         HEX 07
L21D7    HEX 00
L21D8    HEX 00C3060000010000000003
L21E3    HEX 00
L21E4    HEX 000008
L21E7    HEX 0004
L21E9    HEX 00DE2D0500000001
L21F1    HEX 00
L21F2    LDA #$0001
         STA L2DE3
         JSR L3270
         LDA L2E57
         BNE L2211
         LDA #$0000
         LDX L2EA7
         JSR L30B7
         JSR L2254
         JSR L312A
         BRA L2214
L2211    JSR L2254
L2214    LDA #$3D95
         JSR L369C
         JSR L321B
L221D    JSR L31D4
         CMP #$000F
         BNE L222A
         JSR L26E5
         BRA L221D
L222A    CMP #$001B
         BEQ L2251
         CMP #$000D
         BEQ L224E
         CMP #$0020
         BEQ L224E
         JSR L23E8
         CMP #$004E
         BEQ L224E
         CMP #$0059
         BNE L221D
         JSR L22CC
         JSR L22BD
         BRA L221D
L224E    JMP L242D
L2251    JMP L33A3
L2254    LDA #$0000
         STA L2E5F
         LDA #$000F
         STA L2E6B
         JSR L2269
         JSR L22BD
         JMP L22AE
L2269    STZ L2E75
         LDX #$2CB9
         JSR L2331
         LDA L2DDE
         AND #$00FF
         JSR L234B
         LDX #$2CBD
         JSR L2331
         LDA L2DDF
         AND #$00FF
         JSR L234B
         LDX #$2CC5
         JSR L2331
         LDA L2DE0
         AND #$00FF
         JSR L234B
         LDX #$2CCD
         JSR L2331
         LDA L2DE1
         AND #$00FF
         JSR L234B
         LDA #$0092
         JMP L23A9
L22AE    STZ L2E75
         LDX #$2CD6
         JSR L2331
         LDA #$00B0
         JMP L23A9
L22BD    STZ L2E75
         LDX #$2CF5
         JSR L2331
         LDA #$00A1
         JMP L23A9
L22CC    STZ L2E77
L22CF    STZ L2E75
         LDX #$2D16
         JSR L2331
         LDA L2E77
         ASL
         TAX
         LDY L2DD6,X
         TYX
         JSR L2331
         LDA #$00A1
         JSR L23A9
L22EA    JSR L31D4
         CMP #$001B
         BEQ L22EA
         CMP #$000F
         BEQ L22EA
         JSR L23E8
         STA L2E79
         LDX #$0000
L2300    CPX L2E77
         BCS L2313
         LDA L2DDE,X
         AND #$00FF
         CMP L2E79
         BEQ L22EA
         INX
         BRA L2300
L2313    LDX L2E77
         LDA L2E79
         SEP #$20
         MX  %10
         STA L2DDE,X
         REP #$20
         MX  %00
         JSR L2269
         INC L2E77
         LDA L2E77
         CMP #$0004
         BNE L22CF
         JMP L2175
L2331    STX $90
L2333    SEP #$20
         MX  %10
         LDA ($90)
         BEQ L2348
         LDY L2E75
         STA L2ED7,Y
         REP #$20
         MX  %00
         INC $90
         INC L2E75
         BRA L2333
         MX  %10
L2348    REP #$20
         MX  %00
         RTS
L234B    LDX #$2D74
         CMP #$0008
         BEQ L23A6
         LDX #$2D77
         CMP #$0015
         BEQ L23A6
         LDX #$2D72
         CMP #$000A
         BEQ L23A6
         LDX #$2D70
         CMP #$000B
         BEQ L23A6
         LDX #$2D7A
         CMP #$000D
         BEQ L23A6
         LDX #$2D7E
         CMP #$0009
         BEQ L23A6
         LDX #$2D82
         CMP #$0020
         BEQ L23A6
         LDX #$2D86
         CMP #$007F
         BEQ L23A6
         CMP #$0021
         BCC L23A3
         CMP #$007F
         BCS L23A3
         LDY L2E75
         SEP #$20
         MX  %10
         STA L2ED7,Y
         REP #$20
         MX  %00
         INC L2E75
         RTS
L23A3    LDX #$2D8A
L23A6    JMP L2331
L23A9    STA L2E69
         LDY L2E75
         SEP #$20
         MX  %10
         LDA #$00
         STA L2ED7,Y
         REP #$20
         MX  %00
         LDA #$0000
         STA L2E3D
         LDA L2E69
         STA L2E3F
         LDA #$00A0
         STA L2E41
         LDA #$000B
         STA L2E43
         LDA L2E6B
         ASL
         ASL
         ASL
         ASL
         ORA L2E6B
         STA L2E73
         JSR L2AB6
         LDA #$2ED7
         STA $90
         JMP L2AFE
L23E8    CMP #$0061
         BCC L23F5
         CMP #$007B
         BCS L23F5
         AND #$00DF
L23F5    RTS
L23F6    JSR L23E8
         SEP #$20
         MX  %10
         CMP L2DDE
         BEQ L2415
         CMP L2DDF
         BEQ L241B
         CMP L2DE0
         BEQ L2421
         CMP L2DE1
         BEQ L2427
         REP #$20
         MX  %00
         LDA #$FFFF
         RTS
         MX  %10
L2415    REP #$20
         MX  %00
         LDA #$0000
         RTS
         MX  %10
L241B    REP #$20
         MX  %00
         LDA #$0001
         RTS
         MX  %10
L2421    REP #$20
         MX  %00
         LDA #$0002
         RTS
         MX  %10
L2427    REP #$20
         MX  %00
         LDA #$0003
         RTS
L242D    JSR L26D6
         LDA #$0009
         STA L2DE7
         STZ L2DE5
         LDA L2DFB
         BEQ L2442
         DEC
         STA L2DE5
L2442    LDA L2DFF
         BNE L244D
         LDA L2E07
         ORA #$0001
L244D    STA L2E09
         JMP L2453
L2453    LDA #$0002
         STA L2DE3
         JSR L3270
         JSR L2627
         JSR L294C
         LDA #$0000
         JSR L3295
         JSR L321B
L246B    LDA #$0001
         STA L2DF7
         JSR L31BC
         LDA L2DFD
         BNE L248C
         DEC L2E0B
         BNE L248C
         LDA L2E0D
         STA L2E0B
         JSR L2821
         CMP #$0001
         BEQ L24C3
L248C    JSR L2806
         JSR L31E9
         BEQ L246B
         CMP #$001B
         BNE L24A2
         STZ L2DF7
         JSR L3270
         JMP L21F2
L24A2    CMP #$000F
         BNE L24AF
         STZ L2DF7
         JSR L270E
         BRA L246B
L24AF    JSR L23F6
         BMI L246B
         JSR L272E
         CMP #$0001
         BEQ L24C3
         CMP #$0002
         BEQ L24C9
         BRA L246B
L24C3    STZ L2DF7
         JMP L24F4
L24C9    STZ L2DF7
         JMP L24CF
L24CF    LDA #$0004
         JSR L3295
L24D5    LDA #$0001
         JSR L319F
         LDA L2E49
         BNE L24D5
         JSR L321B
         INC L2DE5
         LDA L2DE5
         CMP #$000E
         BCS L24F1
         JMP L2453
L24F1    JMP L25A3
L24F4    LDA #$0002
         JSR L3295
         LDA L2DE9
         STA L2E2F
         LDA L2DEB
         STA L2E31
         LDX #$0000
L2509    LDA L2EB9,X
         CMP L2DE9
         BNE L2519
         LDA L2EBF,X
         CMP L2DEB
         BEQ L2523
L2519    INX
         INX
         CPX L2DF5
         BCC L2509
         LDX #$0000
L2523    LDA L2ECB,X
         CLC
         ADC #$000A
         STA L2E35
         LDA #$0006
         STA L2E37
L2533    LDA L2E37
         AND #$0001
         BEQ L2540
         LDA #$0004
         BRA L2543
L2540    LDA #$0002
L2543    CLC
         ADC L2E35
         JSR L3021
         LDA #$0007
         JSR L319F
         DEC L2E37
         BNE L2533
L2555    LDA #$0001
         JSR L319F
         LDA L2E49
         BNE L2555
         DEC L2DE7
         BEQ L2585
         LDA L2DE7
         CLC
         ADC #$0030
         SEP #$20
         MX  %10
         STA L2D41
         REP #$20
         MX  %00
         LDX #$2D29
         LDY #$2D35
         JSR L29FC
         LDA #$0064
         JSR L319F
         JMP L2453
L2585    JMP L2588
L2588    LDA #$0003
         STA L2DE3
         LDA #$0003
         JSR L3295
         LDX #$2D43
         LDY #$2D4D
         JSR L29FC
         JSR L321B
         JMP L25E6
L25A3    LDA #$0004
         STA L2DE3
         LDA #$8000
         LDX L2EA7
         JSR L30B7
         LDA #$44D9
         JSR L369C
         JSR L312A
L25BB    LDA #$0001
         JSR L319F
         JSR L320B
         BNE L25CB
         LDA L2E4B
         BNE L25BB
L25CB    JSR L3270
         LDA #$0008
         STA L2E63
         LDA #$002C
         STA L2E65
         LDX #$2D4D
         LDY #$2D5D
         JSR L29FC
         JSR L321B
L25E6    JSR L31D4
         CMP #$000D
         BEQ L2606
         CMP #$001B
         BEQ L2600
         JSR L23E8
         CMP #$0059
         BEQ L2606
         CMP #$004E
         BNE L25E6
L2600    JSR L260C
         JMP L21F2
L2606    STZ L2DFB
         JMP L242D
L260C    LDA #$0008
         STA L2E63
         LDA #$002C
         STA L2E65
         LDX #$2D5E
         LDY #$2D5D
         JSR L29FC
         LDA #$0064
         JMP L319F
L2627    LDA L2DE5
         ASL
         TAX
         LDA L379F,X
         STA $80
         LDY #$0000
         SEP #$20
         MX  %10
L2636    LDA ($80),Y
         STA L2F17,Y
         INY
         CPY #$0063
         BNE L2636
         REP #$20
         MX  %00
         LDY #$0063
         JSR L26A4
         STA L2DF1
         INY
         JSR L26A4
         STA L2DF3
         ASL
         STA L2DF5
         LDX #$0000
         LDY #$0065
L265D    JSR L26A4
         STA L2EB9,X
         INY
         JSR L26A4
         STA L2EBF,X
         INY
         LDA #$0003
         STA L2EC5,X
         LDA #$0001
         STA L2ECB,X
         STZ L2ED1,X
         INX
         INX
         CPX #$0006
         BNE L265D
         LDA #$0001
         STA L2DE9
         STA L2DEB
         STA L2DED
         STZ L2DEF
         LDA L2E0D
         STA L2E0B
         LDA L2DE5
         AND #$0003
         CLC
         ADC #$0005
         STA L2E33
         RTS
L26A4    SEP #$20
         MX  %10
         LDA ($80),Y
         REP #$20
         MX  %00
         AND #$00FF
         RTS
L26AE    LDA L2E31
         ASL
         ASL
         ASL
         CLC
         ADC L2E31
         ADC L2E31
         ADC L2E31
         ADC L2E2F
         TAX
         LDA L2F17,X
         AND #$00FF
         RTS
L26C9    PHA
         JSR L26AE
         PLA
         SEP #$20
         MX  %10
         STA L2F17,X
         REP #$20
         MX  %00
         RTS
L26D6    LDA L2DE2
         AND #$00FF
         ASL
         TAX
         LDA L2C21,X
         STA L2E0D
         RTS
L26E5    LDA L2DE2
         AND #$00FF
         INC
         CMP #$0004
         BCC L26F4
         LDA #$0000
L26F4    SEP #$20
         MX  %10
         STA L2DE2
         REP #$20
         MX  %00
         JSR L26D6
         JMP L2175
L2701    LDA L2DE2
         AND #$00FF
         ASL
         TAX
         LDY L2DCE,X
         TYX
         RTS
L270E    JSR L26E5
         JSR L2701
         TXY
         LDX #$2DA7
         JSR L29FC
         LDA #$0032
         JSR L319F
         JSR L2979
         JSR L321B
         LDA L2E0D
         STA L2E0B
         RTS
L272E    STA L2E25
         ASL
         TAX
         LDA L2DE9
         CLC
         ADC L2C11,X
         STA L2E27
         LDA L2DEB
         CLC
         ADC L2C19,X
         STA L2E29
         LDA L2E27
         STA L2E2F
         LDA L2E29
         STA L2E31
         JSR L26AE
         CMP #$0001
         BNE L275F
         LDA #$0000
         RTS
L275F    LDA L2E25
         CMP #$0002
         BNE L276C
         STZ L2DED
         BRA L2777
L276C    CMP #$0003
         BNE L2777
         LDA #$0001
         STA L2DED
L2777    LDA L2DE9
         STA L2E2B
         LDA L2DEB
         STA L2E2D
         LDA L2E27
         STA L2DE9
         LDA L2E29
         STA L2DEB
         LDA L2E2B
         STA L2E2F
         LDA L2E2D
         STA L2E31
         JSR L2999
         LDA L2DE9
         STA L2E2F
         LDA L2DEB
         STA L2E31
         JSR L26AE
         CMP #$0002
         BNE L27C7
         LDA #$0000
         JSR L26C9
         DEC L2DF1
         LDA #$0012
         STA L2DEF
         LDA #$0001
         JSR L3295
L27C7    JSR L2999
         LDA L2DF1
         BNE L27D3
         LDA #$0002
         RTS
L27D3    JMP L27D6
L27D6    LDA L2DFD
         CMP #$0002
         BNE L27E2
         LDA #$0000
         RTS
L27E2    LDX #$0000
L27E5    CPX L2DF5
         BCS L2802
         LDA L2EB9,X
         CMP L2DE9
         BNE L27FE
         LDA L2EBF,X
         CMP L2DEB
         BNE L27FE
         LDA #$0001
         RTS
L27FE    INX
         INX
         BRA L27E5
L2802    LDA #$0000
         RTS
L2806    LDA L2DEF
         BEQ L2820
         DEC
         STA L2DEF
         BNE L2820
         LDA L2DE9
         STA L2E2F
         LDA L2DEB
         STA L2E31
         JMP L2999
L2820    RTS
L2821    LDX #$0000
L2824    CPX L2DF5
         BCC L282C
         JMP L27D6
L282C    STX L2E23
         JSR L2926
         AND #$0001
         BNE L2851
         LDA L2EBF,X
         CMP L2DEB
         BEQ L2869
         BCC L2849
         LDA #$0001
         STA L2EC5,X
         BRA L2869
L2849    LDA #$0003
         STA L2EC5,X
         BRA L2869
L2851    LDA L2EB9,X
         CMP L2DE9
         BEQ L2869
         BCC L2863
         LDA #$0004
         STA L2EC5,X
         BRA L2869
L2863    LDA #$0002
         STA L2EC5,X
L2869    LDA #$0004
         STA L2E21
L286F    JSR L28D7
         BCS L288A
         LDX L2E23
         LDA L2EC5,X
         DEC
         BNE L2880
         LDA #$0004
L2880    STA L2EC5,X
         DEC L2E21
         BNE L286F
         BRA L28CF
L288A    LDX L2E23
         LDA L2EC5,X
         CMP #$0002
         BNE L289D
         LDA #$0001
         STA L2ECB,X
         BRA L28A5
L289D    CMP #$0004
         BNE L28A5
         STZ L2ECB,X
L28A5    LDA L2ED1,X
         EOR #$0001
         STA L2ED1,X
         LDA L2E2B
         STA L2E2F
         LDA L2E2D
         STA L2E31
         JSR L2999
         LDX L2E23
         LDA L2EB9,X
         STA L2E2F
         LDA L2EBF,X
         STA L2E31
         JSR L2999
L28CF    LDX L2E23
         INX
         INX
         JMP L2824
L28D7    LDX L2E23
         LDA L2EC5,X
         ASL
         TAY
         LDA L2EB9,X
         CLC
         ADC L2C29,Y
         STA L2E27
         LDA L2EBF,X
         CLC
         ADC L2C33,Y
         STA L2E29
         LDA L2E27
         STA L2E2F
         LDA L2E29
         STA L2E31
         JSR L26AE
         CMP #$0001
         BEQ L2924
         LDX L2E23
         LDA L2EB9,X
         STA L2E2B
         LDA L2EBF,X
         STA L2E2D
         LDA L2E27
         STA L2EB9,X
         LDA L2E29
         STA L2EBF,X
         SEC
         RTS
L2924    CLC
         RTS
L2926    LDA L2E09
         ASL
         ASL
         ASL
         ASL
         ASL
         ASL
         ASL
         EOR L2E09
         STA L2E09
         XBA
         AND #$00FF
         LSR
         EOR L2E09
         STA L2E09
         XBA
         AND #$FF00
         EOR L2E09
         STA L2E09
         RTS
L294C    STZ L2E57
         JSR L30EB
         LDA #$0000
         LDX #$0000
L2958    STA >$E12000,X
         INX
         INX
         CPX #$7E00
         BNE L2958
         JSR L2979
         LDX #$0000
L2969    LDA L4BF9,X
         STA L2E83,X
         INX
         INX
         CPX #$0020
         BNE L2969
         JMP L312A
L2979    STZ L2E31
L297C    STZ L2E2F
L297F    JSR L2999
         INC L2E2F
         LDA L2E2F
         CMP #$000B
         BNE L297F
         INC L2E31
         LDA L2E31
         CMP #$0009
         BNE L297C
         RTS
L2999    LDX #$0000
L299C    CPX L2DF5
         BCS L29C4
         LDA L2EB9,X
         CMP L2E2F
         BNE L29C0
         LDA L2EBF,X
         CMP L2E31
         BNE L29C0
         LDA L2ED1,X
         ASL
         CLC
         ADC L2ECB,X
         CLC
         ADC #$000A
         JMP L3021
L29C0    INX
         INX
         BRA L299C
L29C4    LDA L2E2F
         CMP L2DE9
         BNE L29E7
         LDA L2E31
         CMP L2DEB
         BNE L29E7
         LDA L2DED
         CLC
         ADC #$0001
         LDX L2DEF
         BEQ L29E4
         CLC
         ADC #$0002
L29E4    JMP L3021
L29E7    JSR L26AE
         TAX
         LDA L2C3D,X
         AND #$00FF
         CMP #$00FF
         BNE L29F9
         LDA L2E33
L29F9    JMP L3021
L29FC    STX L2E7B
         STY L2E7D
         LDA L2E63
         STA L2E3D
         LDA L2E65
         STA L2E3F
         LDA #$003C
         STA L2E41
         LDA #$002A
         STA L2E43
         LDA #$00FF
         STA L2E73
         JSR L2AB6
         INC L2E3D
         LDA L2E3F
         CLC
         ADC #$0002
         STA L2E3F
         LDA #$003A
         STA L2E41
         LDA #$0026
         STA L2E43
         LDA #$0000
         STA L2E73
         JSR L2AB6
         LDA #$000F
         STA L2E5F
         LDA #$0000
         STA L2E6B
         LDA L2E63
         CLC
         ADC #$001E
         STA L2E61
         LDA L2E7D
         STA $90
         SEP #$20
         MX  %10
         LDA ($90)
         REP #$20
         MX  %00
         AND #$00FF
         STA L2E47
         LDA L2E7B
         STA $90
         LDA L2E65
         CLC
         ADC #$0008
         LDX L2E47
         BNE L2A84
         LDA L2E65
         CLC
         ADC #$000F
L2A84    STA L2E69
         JSR L2AFE
         LDA L2E7D
         STA $90
         LDA ($90)
         AND #$00FF
         BEQ L2AA3
         LDA L2E65
         CLC
         ADC #$0017
         STA L2E69
         JSR L2AFE
L2AA3    LDA #$0050
         STA L2E61
         LDA #$0032
         STA L2E63
         LDA #$004F
         STA L2E65
         RTS
L2AB6    JSR L2ADF
         LDA L2E43
         STA L2E45
L2ABF    SEP #$20
         MX  %10
         LDY #$0000
         LDA L2E73
L2AC7    STA [$88],Y
         INY
         CPY L2E41
         BNE L2AC7
         REP #$20
         MX  %00
         LDA $88
         CLC
         ADC #$00A0
         STA $88
         DEC L2E45
         BNE L2ABF
         RTS
L2ADF    LDA L2E3F
         ASL
         ASL
         ASL
         ASL
         ASL
         STA L2E47
         ASL
         ASL
         CLC
         ADC L2E47
         ADC #$2000
         ADC L2E3D
         STA $88
         LDA #$00E1
         STA $8A
         RTS
L2AFE    LDY #$0000
         SEP #$20
         MX  %10
L2B03    LDA ($90),Y
         BEQ L2B0A
         INY
         BRA L2B03
L2B0A    REP #$20
         MX  %00
         TYA
         STA L2E47
         ASL
         CLC
         ADC L2E47
         LSR
         STA L2E47
         LDA L2E61
         SEC
         SBC L2E47
         STA L2E67
         JSR L2B43
L2B26    SEP #$20
         MX  %10
         LDA ($90)
         REP #$20
         MX  %00
         AND #$00FF
         BEQ L2B42
         JSR L2B80
         INC $90
         LDA L2E67
         CLC
         ADC #$0003
         STA L2E67
         BRA L2B26
L2B42    RTS
L2B43    SEP #$20
         MX  %10
         LDA L2E6B
         ASL
         ASL
         ASL
         ASL
         STA L2E6D
         LDA L2E5F
         ASL
         ASL
         ASL
         ASL
         STA L2E6F
         LDA L2E6D
         ORA L2E6B
         STA L2E7F
         LDA L2E6D
         ORA L2E5F
         STA L2E80
         LDA L2E6F
         ORA L2E6B
         STA L2E81
         LDA L2E6F
         ORA L2E5F
         STA L2E82
         REP #$20
         MX  %00
         RTS
L2B80    SEC
         SBC #$0020
         CMP #$005F
         BCC L2B8C
         LDA #$001F
L2B8C    STA L2E47
         ASL
         ASL
         ASL
         STA $92
         LDA L2E47
         ASL
         CLC
         ADC $92
         ADC L2E47
         CLC
         ADC #$5F59
         STA $92
         LDA L2E69
         ASL
         ASL
         ASL
         ASL
         ASL
         STA L2E47
         ASL
         ASL
         CLC
         ADC L2E47
         ADC #$2000
         ADC L2E67
         STA $88
         LDA #$00E1
         STA $8A
         LDA #$000B
         STA L2E45
L2BC8    LDA #$0000
         SEP #$20
         MX  %10
         LDA ($92)
         STA L2E71
         LSR
         LSR
         LSR
         LSR
         AND #$03
         TAX
         LDA L2E7F,X
         LDY #$0000
         STA [$88],Y
         LDA L2E71
         LSR
         LSR
         AND #$03
         TAX
         LDA L2E7F,X
         LDY #$0001
         STA [$88],Y
         LDA L2E71
         AND #$03
         TAX
         LDA L2E7F,X
         LDY #$0002
         STA [$88],Y
         REP #$20
         MX  %00
         INC $92
         LDA $88
         CLC
         ADC #$00A0
         STA $88
         DEC L2E45
         BNE L2BC8
         RTS
L2C11    HEX 00000000FFFF0100
L2C19    HEX FFFF010000000000
L2C21    HEX 12000C0008000500
L2C29    HEX 0000000001000000FFFF
L2C33    HEX 0000FFFF000001000000
L2C3D    HEX 00FF09
L2C40    HEX 0000
L2C42    HEX 0000
L2C44    HEX 5F2D
L2C46    HEX D60000005F2DAD08D60000000C368133
         HEX D60000008D693567D60001000000B240
         HEX D6000100B240858AD600
L2C70    HEX 194C4D4D814EB54FE9501D5251538554
         HEX B955ED5621585559895ABD5BF15C255E
         HEX 095449544C452E50414B07454E442E50
         HEX 414B05534E442E4105534E442E42044B
         HEX 455953054D5553494355503A00202044
         HEX 4F574E3A0020204C4546543A00202052
         HEX 494748543A0044616E2048656E646572
         HEX 736F6E20262057616C7465722054656E ; son & Walter Ten
         HEX 676C6572004348414E4745204B455953
         HEX 3F20592F4E20202852455455524E3A20 ; ? Y/N  (RETURN: 
         HEX 504C4159290050524553532054484520
         HEX 4B455920464F52200048412048412048
         HEX 412E2E2E004C49564553204C4546543A
         HEX 20
L2D41    HEX 390047414D45204F56455200504C4159
         HEX 20414741494E3F20592F4E0000484150
         HEX 50592048414C4C4F5745454E2121005E
         HEX 0076003C2D002D3E0052455400544142
         HEX 005350430044454C003F00555000444F
         HEX 574E004C454654005249474854005350
         HEX 4545443A200050554D504B494E205350
         HEX 45454400534C4F57004E4F524D414C00
         HEX 46415354004652414E54494300
L2DCE    HEX B52DBA2DC12DC62D ; 5-:-A-F-
L2DD6    HEX 8C2D8F2D942D992D
L2DDE    HEX 41
L2DDF    HEX 5A
L2DE0    HEX 4E
L2DE1    HEX 4D
L2DE2    HEX 01
L2DE3    HEX 0000
L2DE5    HEX 0000
L2DE7    HEX 0000
L2DE9    HEX 0000
L2DEB    HEX 0000
L2DED    HEX 0000
L2DEF    HEX 0000
L2DF1    HEX 0000
L2DF3    HEX 0000
L2DF5    HEX 0000
L2DF7    HEX 0000
L2DF9    HEX 0000
L2DFB    HEX 0000
L2DFD    HEX 0000
L2DFF    HEX 0000
L2E01    HEX 0000
L2E03    HEX 0000
L2E05    HEX 0000
L2E07    HEX 0000
L2E09    HEX 0100
L2E0B    HEX 0000
L2E0D    HEX 0C00
L2E0F    HEX 0000
L2E11    HEX 0000
L2E13    HEX 0000
L2E15    HEX 0000
L2E17    HEX 0000
L2E19    HEX 00
L2E1A    HEX 00
L2E1B    HEX 0000
L2E1D    HEX 00
L2E1E    HEX 00
L2E1F    HEX 0000
L2E21    HEX 0000
L2E23    HEX 0000
L2E25    HEX 0000
L2E27    HEX 0000
L2E29    HEX 0000
L2E2B    HEX 0000
L2E2D    HEX 0000
L2E2F    HEX 0000
L2E31    HEX 0000
L2E33    HEX 0000
L2E35    HEX 0000
L2E37    HEX 0000
L2E39    HEX 0000
L2E3B    HEX 0000
L2E3D    HEX 0000
L2E3F    HEX 0000
L2E41    HEX 0000
L2E43    HEX 0000
L2E45    HEX 0000
L2E47    HEX 0000
L2E49    HEX 0000
L2E4B    HEX 0000
L2E4D    HEX 0000
L2E4F    HEX 0000
L2E51    HEX 0000
L2E53    HEX 0000
L2E55    HEX 0000
L2E57    HEX 0000
L2E59    HEX 0000
L2E5B    HEX 0000
L2E5D    HEX 0000
L2E5F    HEX 0000
L2E61    HEX 5000
L2E63    HEX 3200
L2E65    HEX 4F00
L2E67    HEX 0000
L2E69    HEX 0000
L2E6B    HEX 0000
L2E6D    HEX 0000
L2E6F    HEX 0000
L2E71    HEX 0000
L2E73    HEX 0000
L2E75    HEX 0000
L2E77    HEX 0000
L2E79    HEX 0000
L2E7B    HEX 0000
L2E7D    HEX 0000
L2E7F    HEX 00
L2E80    HEX 00
L2E81    HEX 00
L2E82    HEX 00
L2E83    HEX 00000000000000000000000000000000
         HEX 00000000000000000000000000000000
L2EA3    HEX 0000
L2EA5    HEX 0000
L2EA7    HEX 0000
L2EA9    HEX 0000
L2EAB    HEX 0000
L2EAD    HEX 0000
L2EAF    HEX 0000
L2EB1    HEX 0000
L2EB3    HEX 0000
L2EB5    HEX 0000
L2EB7    HEX 0000
L2EB9    HEX 000000000000
L2EBF    HEX 000000000000
L2EC5    HEX 000000000000
L2ECB    HEX 000000000000
L2ED1    HEX 000000000000
L2ED7    HEX 00000000000000000000000000000000
         HEX 00000000000000000000000000000000
         HEX 00000000000000000000000000000000
         HEX 00000000000000000000000000000000
L2F17    HEX 00000000000000000000000000000000
         HEX 00000000000000000000000000000000
         HEX 00000000000000000000000000000000
         HEX 00000000000000000000000000000000
         HEX 00000000000000000000000000000000
         HEX 00000000000000000000000000000000
         HEX 00000000
         MX  %11
L2F7B    STA L3690
         STX L3691
         STY L2E05
         LDA L2EA9
         STA L3692
         STZ L3694
         LDA #$80
         STA L3695
         STZ L3696
         LDA #$7F
         STA L3697
         LDA #$01
         STA L2E03
         JSR L3512
         BCC L2FA5
         RTS
L2FA5    CLC
         XCE
         REP #$30
         MX  %00
         LDA #$8000
         STA $84
         LDA L2EA9
         STA $86
         STZ $88
         LDA L2EA7
         LDX L2E05
         BEQ L2FCC
         CPX #$0002
         BEQ L2FC9
         LDX #$8000
         STX $88
         BRA L2FCC
L2FC9    LDA L2EA9
L2FCC    STA $8A
         JSR L2FD7
         SEP #$30
         MX  %11
         SEC
         XCE
         CLC
         RTS
         MX  %00
L2FD7    LDY #$0000
L2FDA    LDA [$84]
         INC $84
         AND #$00FF
         STA L2E47
         AND #$003F
         INC
         STA L2E37
         LDA L2E47
         AND #$0040
         BNE L3007
         SEP #$20
         MX  %10
L2FF5    LDA [$84]
         STA [$88],Y
         INY
         REP #$20
         MX  %00
         INC $84
         SEP #$20
         MX  %10
         DEC L2E37
         BNE L2FF5
         BRA L3019
         MX  %00
L3007    SEP #$20
         MX  %10
         LDA [$84]
         REP #$20
         MX  %00
         INC $84
         SEP #$20
         MX  %10
L3011    STA [$88],Y
         INY
         DEC L2E37
         BNE L3011
L3019    REP #$20
         MX  %00
         CPY #$8000
         BCC L2FDA
         RTS
L3021    ASL
         TAX
         LDA L2C70,X
         STA L2E3B
         LDA L2E2F
         ASL
         STA L2E3D
         ASL
         ASL
         ASL
         SEC
         SBC L2E3D
         CLC
         ADC #$0003
         STA L2E3D
         LDA L2E31
         ASL
         ASL
         ASL
         ASL
         STA L2E47
         LDA L2E31
         ASL
         ASL
         CLC
         ADC L2E47
         STA L2E47
         LDA L2E31
         ASL
         CLC
         ADC L2E47
         ADC #$0001
         STA L2E3F
         LDA #$000E
         STA L2E41
         LDA #$0016
         STA L2E43
         LDA L2E3F
         ASL
         ASL
         ASL
         ASL
         ASL
         STA L2E47
         ASL
         ASL
         CLC
         ADC L2E47
         ADC #$2000
         ADC L2E3D
         STA $88
         LDA #$00E1
         STA $8A
         LDX L2E3B
         LDA L2E43
         STA L2E45
L3095    SEP #$20
         MX  %10
         LDY #$0000
L309A    LDA >$000000,X
         STA [$88],Y
         INX
         INY
         CPY L2E41
         BNE L309A
         REP #$20
         MX  %00
         LDA $88
         CLC
         ADC #$00A0
         STA $88
         DEC L2E45
         BNE L3095
         RTS
L30B7    STA $84
         STX $86
         STZ L2E57
         JSR L30EB
         LDA #$2000
         STA $88
         LDA #$00E1
         STA $8A
         LDY #$0000
L30CE    LDA [$84],Y
         STA [$88],Y
         INY
         INY
         CPY #$7E00
         BNE L30CE
         LDX #$0000
L30DC    LDA [$84],Y
         STA L2E83,X
         INY
         INY
         INX
         INX
         CPX #$0020
         BNE L30DC
         RTS
L30EB    LDX #$0000
         LDA #$0000
L30F1    ORA >$E19E00,X
         STA L2E83,X
         INX
         INX
         CPX #$0020
         BNE L30F1
         CMP #$0000
         BEQ L3129
         LDX #$0000
L3107    LDA >$E19E00,X
         STA L2E83,X
         INX
         INX
         CPX #$0020
         BNE L3107
         LDA #$000F
         STA L2E55
L311B    JSR L3145
         LDA #$0002
         JSR L319F
         DEC L2E55
         BPL L311B
L3129    RTS
L312A    LDA #$0001
         STA L2E55
L3130    JSR L3145
         LDA #$0002
         JSR L319F
         INC L2E55
         LDA L2E55
         CMP #$0011
         BNE L3130
         RTS
L3145    LDX #$0000
L3148    LDA L2E83,X
         STA L2E59
         AND #$000F
         JSR L3188
         STA L2E5B
         LDA L2E59
         LSR
         LSR
         LSR
         LSR
         AND #$000F
         JSR L3188
         ASL
         ASL
         ASL
         ASL
         ORA L2E5B
         STA L2E5B
         LDA L2E59
         XBA
         AND #$000F
         JSR L3188
         XBA
         ORA L2E5B
         STA >$E19E00,X
         INX
         INX
         CPX #$0020
         BNE L3148
         RTS
L3188    STA L2E5D
         LDA #$0000
         LDY L2E55
         BEQ L319A
L3193    CLC
         ADC L2E5D
         DEY
         BNE L3193
L319A    LSR
         LSR
         LSR
         LSR
         RTS
L319F    STA L2E39
L31A2    JSR L31BC
         DEC L2E39
         BNE L31A2
         RTS
         MX  %11
         STA L2E39
L31AE    JSR L31BC
         JSR L320B
         BNE L31BB
         DEC L2E39
         BNE L31AE
L31BB    RTS
         MX  %00
L31BC    SEP #$20
         MX  %10
L31BE    JSR L334E
         LDA $C019 ; RDVBL
         BMI L31BE
L31C6    JSR L334E
         LDA $C019 ; RDVBL
         BPL L31C6
         REP #$20
         MX  %00
         INC L2E07
         RTS
L31D4    LDA #$0001
         STA L2DF7
L31DA    JSR L334E
         JSR L31E9
         BEQ L31DA
         STZ L2DF7
         STA L2E01
         RTS
L31E9    LDA L2DF9
         BEQ L31F5
         STZ L2DF9
         AND #$007F
         RTS
L31F5    SEP #$20
         MX  %10
         LDA $C000 ; KBD
         BPL L3205
         STA $C010 ; KBDSTRB
         REP #$20
         MX  %00
         AND #$007F
         RTS
         MX  %10
L3205    REP #$20
         MX  %00
         LDA #$0000
         RTS
L320B    LDA L2DF9
         BNE L321A
         SEP #$20
         MX  %10
         LDA $C000 ; KBD
         REP #$20
         MX  %00
         AND #$0080
L321A    RTS
L321B    SEP #$20
         MX  %10
         STA $C010 ; KBDSTRB
         REP #$20
         MX  %00
         STZ L2DF9
         RTS
         MX  %11
L3226    PHA
L3227    LDA $C03C ; SOUNDCTL
         BMI L3227
         LDA >$E100CA
         AND #$0F
         STA $C03C ; SOUNDCTL
         STX $C03E ; SOUNDADRL
         PLA
         STA $C03D ; SOUNDDATA
         RTS
L323D    LDA $C03C ; SOUNDCTL
         BMI L323D
         LDA >$E100CA
         AND #$0F
         STA $C03C ; SOUNDCTL
         STX $C03E ; SOUNDADRL
         LDA $C03D ; SOUNDDATA
         LDA $C03D ; SOUNDDATA
         RTS
         MX  %00
L3255    SEP #$30
         MX  %11
         LDX #$A0
L3259    LDA #$01
         JSR L3226
         INX
         CPX #$C0
         BNE L3259
         LDX #$E1
         LDA #$3E
         JSR L3226
         REP #$30
         MX  %00
         STZ L2E49
         RTS
L3270    SEP #$30
         MX  %11
         LDX #$A0
         LDA #$03
         JSR L3226
         LDX #$A1
         LDA #$13
         JSR L3226
         LDX #$A2
L3282    LDA #$03
         JSR L3226
         INX
         CPX #$C0
         BNE L3282
         REP #$30
         MX  %00
         STZ L2E49
         STZ L2E4B
         RTS
L3295    PHA
         JSR L3270
         PLA
         ASL
         ASL
         ASL
         TAX
         LDA L2EAB
         LDY L2C40,X
         BEQ L32A9
         LDA L2EAD
L32A9    STA $86
         LDA L2C42,X
         STA $84
         LDA L2C44,X
         STA L2E51
         CLC
         ADC #$3FFF
         XBA
         AND #$00FF
         LSR
         LSR
         LSR
         LSR
         LSR
         LSR
         STA L2E4F
         LDA L2C46,X
         STA L2E53
         SEP #$20
         MX  %10
L32CF    LDA $C03C ; SOUNDCTL
         BMI L32CF
         LDA >$E100CA
         AND #$0F
         ORA #$60
         STA $C03C ; SOUNDCTL
         LDA #$00
         STA $C03E ; SOUNDADRL
         STA $C03F ; SOUNDADRH
         LDY #$0000
L32EA    LDA $C03C ; SOUNDCTL
         BMI L32EA
         LDA [$84],Y
         STA $C03D ; SOUNDDATA
         INY
         CPY L2E51
         BNE L32EA
         LDA #$00
         STA $C03D ; SOUNDDATA
         SEP #$30
         MX  %11
         LDY #$00
L3303    TYA
         TAX
         LDA L2E53
         JSR L3226
         TYA
         ORA #$20
         TAX
         LDA #$00
         JSR L3226
         TYA
         ORA #$40
         TAX
         LDA #$FF
         JSR L3226
         TYA
         ORA #$80
         TAX
         LDA #$00
         JSR L3226
         TYA
         ORA #$C0
         TAX
         LDA #$36
         JSR L3226
         INY
         CPY #$02
         BNE L3303
         LDX #$A0
         LDA #$02
         JSR L3226
         LDX #$A1
         LDA #$12
         JSR L3226
         REP #$30
         MX  %00
         STZ L2E4D
         LDA #$0001
         STA L2E49
         RTS
L334E    PHP
         REP #$30
         PHX
         PHY
         LDA L2E4B
         BEQ L335B
         JSR L36EA
L335B    LDA L2E49
         BEQ L339D
         SEP #$30
         MX  %11
         LDX #$A0
         JSR L323D
         AND #$01
         BEQ L339D
         REP #$30
         MX  %00
         INC L2E4D
         LDA L2E4D
         CMP L2E4F
         BCS L339A
         SEP #$30
         MX  %11
         ASL
         ASL
         ASL
         ASL
         ASL
         ASL
         LDX #$80
         JSR L3226
         LDX #$81
         JSR L3226
         LDX #$A0
         LDA #$02
         JSR L3226
         LDX #$A1
         LDA #$12
         JSR L3226
         BRA L339D
         MX  %00
L339A    STZ L2E49
         MX  %11
L339D    REP #$30
         MX  %00
         PLY
         PLX
         PLP
         RTS
L33A3    JSR L3270
         JSR L3451
         SEP #$30
         MX  %11
         STA $C010 ; KBDSTRB
         LDA L2EB3
         STA $C035 ; SHADOW
         LDA L2EB1
         STA $C029 ; NEWVIDEO
         LDA L2EB7
         STA $C034 ; CLOCKCTL
         LDA L2EB5
         STA $C036 ; SPEED
         STA $C051 ; TXTSET
         LDX #$00
L33CB    LDA L636E,X
         STA $00,X
         INX
         BNE L33CB
         SEC
         XCE
         CLI
         JSR $BF00
         HEX 65DE33 ; MLI QUIT
L33DC    BRA L33DC
         HEX 04000000000000
L33E5    CLC
         XCE
         REP #$30
         MX  %00
         PHA
         PEA $1000
         LDX #$2003
         JSL $E10000
         PLA
         STA L2EA3
         LDY #$0000
L33FB    STY L2EA5
         PHA
         PHA
         PEA $0001
         PEA $0000
         LDA L2EA3
         PHA
         PEA $C018
         PEA $0000
         PEA $0000
         LDX #$0902
         JSL $E10000
         PLA
         STA $8C
         PLA
         STA $8E
         BCS L343B
         LDY #$0002
         LDA [$8C],Y
         AND #$00FF
         LDY L2EA5
         STA L2EA7,Y
         INY
         INY
         CPY #$000A
         BNE L33FB
         SEC
         XCE
         MX  %11
         CLC
         RTS
         MX  %00
L343B    LDA L2EA5
         CMP #$0008
         BNE L344A
         STZ L2EAF
         SEC
         XCE
         MX  %11
         CLC
         RTS
         MX  %00
L344A    JSR L3451
         SEC
         XCE
         MX  %11
         SEC
         RTS
         MX  %00
L3451    LDA L2EA3
         BEQ L346C
         PHA
         LDX #$1102
         JSL $E10000
         LDA L2EA3
         PHA
         LDX #$2103
         JSL $E10000
         STZ L2EA3
L346C    RTS
         MX  %11
L346D    LDA #$B1
         LDX #$34
         BRA L3477
L3473    LDA #$E5
         LDX #$34
L3477    STA $84
         STX $85
         LDA L2EB1
         STA $C029 ; NEWVIDEO
         STA $C051 ; TXTSET
         JSR $FC58
         LDY #$00
L3489    LDA ($84),Y
         BEQ L3493
         JSR $FDED
         INY
         BRA L3489
L3493    STA $C010 ; KBDSTRB
L3496    LDA $C000 ; KBD
         BPL L3496
         STA $C010 ; KBDSTRB
         CLC
         XCE
         REP #$30
         MX  %00
         JSR L3451
         SEP #$30
         MX  %11
         SEC
         XCE
         JSR $BF00
         HEX 65DE33 ; MLI QUIT
L34AF    BRA L34AF
         HEX CDC1C4A0CDC1D8A0C7D3A0CEC5C5C4D3 ; MAD MAX GS NEEDS
         HEX A0B2B5B6CBA0CFC6A0C6D2C5C5A0CDC5 ;  256K OF FREE ME
         HEX CDCFD2D9AE8D8DD0D2C5D3D3A0C1A0CB
         HEX C5D9AE00CDC1C4A0CDC1D8A0C7D3BAA0
         HEX C1A0C6C9CCC5A0C9D3A0CDC9D3D3C9CE ; A FILE IS MISSIN
         HEX C7AE8D8DD0D2C5D3D3A0C1A0CBC5D9AE
         HEX 00
L3512    LDA L3690
         STA L3629
         STA $84
         LDA L3691
         STA L362A
         STA $85
         JSR $BF00
         HEX C82836 ; MLI OPEN
         BEQ L3537
         JSR L35CF
         JSR $BF00
         HEX C82836 ; MLI OPEN
         BEQ L3537
         SEC
         RTS
L3537    LDA L362D
         STA L362F
         STA L3639
         STZ L3698
         STZ L3699
         STZ L369A
L3549    JSR $BF00
         HEX CA2E36 ; MLI READ
         BEQ L355A
         CMP #$4C
         BEQ L35AB
         INC L369A
         BRA L35AB
L355A    CLC
         XCE
         REP #$30
         MX  %00
         LDA L3698
         CLC
         ADC L3634
         BCS L35A4
         CMP L3696
         BEQ L356E
         BCS L35A4
L356E    LDA L3694
         CLC
         ADC L3698
         STA $88
         LDA L3692
         AND #$00FF
         STA $8A
         SEP #$20
         MX  %10
         LDY #$0000
L3584    CPY L3634
         BCS L3591
         LDA $1000,Y
         STA [$88],Y
         INY
         BRA L3584
L3591    REP #$20
         MX  %00
         LDA L3698
         CLC
         ADC L3634
         STA L3698
         SEP #$30
         MX  %11
         SEC
         XCE
         JMP L3549
         MX  %00
L35A4    SEP #$30
         MX  %11
         SEC
         XCE
         INC L369A
L35AB    JSR $BF00
         HEX CC3836 ; MLI CLOSE
         LDA L369A
         BNE L35CD
         LDA L2E03
         BNE L35CB
         LDA L3698
         CMP L3696
         BNE L35CD
         LDA L3699
         CMP L3697
         BNE L35CD
L35CB    CLC
         RTS
L35CD    SEC
         RTS
L35CF    LDA $BF30
         STA L363B
         JSR $BF00
         HEX C53A36 ; MLI ON_LINE
         BNE L3622
         LDA L363E
         AND #$0F
         BEQ L3622
         STA L368E
         LDX #$00
         LDA #$2F
         JSR L3623
         LDY #$00
L35F0    LDA L363F,Y
         JSR L3623
         INY
         CPY L368E
         BNE L35F0
         LDA #$2F
         JSR L3623
         LDA ($84)
         STA L368E
         LDY #$01
L3608    LDA ($84),Y
         JSR L3623
         CPY L368E
         BEQ L3615
         INY
         BRA L3608
L3615    STX L364E
         LDA #$4E
         STA L3629
         LDA #$36
         STA L362A
L3622    RTS
L3623    STA L364F,X
         INX
         RTS
         HEX 03
L3629    HEX 00
L362A    HEX 000008
L362D    HEX 0004
L362F    HEX 0000100010
L3634    HEX 0000000001
L3639    HEX 0002
L363B    HEX 003E36
L363E    HEX 00
L363F    HEX 000000000000000000000000000000
L364E    HEX 00
L364F    HEX 00000000000000000000000000000000
         HEX 00000000000000000000000000000000
         HEX 00000000000000000000000000000000
         HEX 000000000000000000000000000000
L368E    HEX 0000
L3690    HEX 00
L3691    HEX 00
L3692    HEX 0000
L3694    HEX 00
L3695    HEX 00
L3696    HEX 00
L3697    HEX 00
L3698    HEX 00
L3699    HEX 00
L369A    HEX 0000
         MX  %00
L369C    STA L2E0F
         JSR L3270
         LDA L2EAF
         BEQ L36E9
         STA $86
         STZ $84
         SEP #$20
         MX  %10
L36AD    LDA $C03C ; SOUNDCTL
         BMI L36AD
         LDA >$E100CA
         AND #$0F
         ORA #$60
         STA $C03C ; SOUNDCTL
         LDA #$00
         STA $C03E ; SOUNDADRL
         STA $C03F ; SOUNDADRH
         LDY #$0000
L36C8    LDA $C03C ; SOUNDCTL
         BMI L36C8
         LDA [$84],Y
         STA $C03D ; SOUNDDATA
         INY
         CPY #$FFFF
         BNE L36C8
         REP #$20
         MX  %00
         LDA L2E0F
         STA L2E11
         LDA #$0001
         STA L2E13
         STA L2E4B
L36E9    RTS
L36EA    SEP #$20
         MX  %10
         LDA $C019 ; RDVBL
         AND #$80
         CMP L2E15
         BEQ L374E
         STA L2E15
         CMP #$80
         BNE L374E
         REP #$20
         MX  %00
         DEC L2E13
         BNE L3749
L3704    LDX L2E11
         LDA $00,X
         CMP #$FFFE
         BCS L3737
         STA L2E17
         LDA $02,X
         STA L2E19
         LDA $04,X
         STA L2E1B
         LDA $06,X
         STA L2E1D
         LDA $08,X
         STA L2E1F
         LDA $0A,X
         STA L2E13
         TXA
         CLC
         ADC #$000C
         STA L2E11
         JSR L3751
         BRA L3744
L3737    BEQ L374A
         LDA $0A,X
         STA L2E13
         LDA L2E0F
         STA L2E11
L3744    LDA L2E13
         BEQ L3704
L3749    RTS
L374A    STZ L2E4B
         RTS
         MX  %10
L374E    REP #$20
         MX  %00
         RTS
L3751    SEP #$30
         MX  %11
         LDA L2E17
         ORA #$A0
         TAX
         LDA L2E1F
         ORA #$01
         JSR L3226
         LDX L2E17
         LDA L2E19
         JSR L3226
         TXA
         ORA #$20
         TAX
         LDA L2E1A
         JSR L3226
         TXA
         EOR #$60
         TAX
         LDA L2E1B
         JSR L3226
         TXA
         EOR #$C0
         TAX
         LDA L2E1D
         JSR L3226
         TXA
         ORA #$40
         TAX
         LDA L2E1E
         JSR L3226
         TXA
         EOR #$60
         TAX
         LDA L2E1F
         JSR L3226
         REP #$30
         MX  %00
         RTS
L379F    HEX BB3726389138FC386739D2393D3AA83A
         HEX 133B7E3BE93B543CBF3C2A3D01010101
         HEX 01010101010101010001020000010200
         HEX 00010100010001000000010001010001
         HEX 00010100000100010100000000000001
         HEX 01020101000100000000010000010100
         HEX 01010101000101000101000002000000
         HEX 00020001010101010101010101010105
         HEX 01090100000000010101010101010101
         HEX 01010100000200000002000001010001
         HEX 02000101010100010100010100000102
         HEX 01000101000000000000000000010100
         HEX 01000100000100000101020101010001
         HEX 01010001010002000000000000000101
         HEX 01010101010101010101060109060000
         HEX 00000101010101010101010101010002
         HEX 00000002000002010100010101010001
         HEX 00010101000201000100010000010101
         HEX 00010000000101000101000002000100
         HEX 01020001010001000102000101000101
         HEX 00010001000000000001010101010101
         HEX 01010101010701040300000000010101
         HEX 01010101010101010100020000000002
         HEX 00020101000100010201010100010100
         HEX 01000100000000000101000100010001
         HEX 01000101010001020102010000000101
         HEX 00010101000100000001010002000000
         HEX 01000200010101010101010101010101
         HEX 08010506000000000101010101010101
         HEX 01010101000200010200000002010100
         HEX 01000100010101000101000100010001
         HEX 00000201010001000100010001010101
         HEX 00010001000102000001010001020102
         HEX 01010100010100000002000000000001
         HEX 01010101010101010101010801030500
         HEX 00000001010101010101010101010100
         HEX 00000002000002020101000102010001
         HEX 02010001010001000100010101000101
         HEX 00010200000202000001010001000101
         HEX 01000100010100010000000000010001
         HEX 01000200000000000102010101010101
         HEX 0101010101010A010903000000000101
         HEX 01010101010101010101000200000200
         HEX 00000001010001010100010001010101
         HEX 00010000020100020201010001000101
         HEX 01010102010100010000000100000001
         HEX 01000102010101000101010100000000
         HEX 00000000000101010101010101010101
         HEX 01070203030907000001010101010101
         HEX 01010101010000020000000200020101
         HEX 00010101010001010101010000020000
         HEX 00000000010101010100010101010201
         HEX 01000000000000020100010100010001
         HEX 00010001000101020102010201000000
         HEX 01010101010101010101010109020801
         HEX 09070000010101010101010101010101
         HEX 00010200000102000201010000000100
         HEX 01010100010100010201000000020001
         HEX 01000100010001010100010100010001
         HEX 00010201000101020100000201000200
         HEX 01010000000100000001020101010101
         HEX 010101010101010A0207030906000001
         HEX 01010101010101010101010000000200
         HEX 02000000010100020100000101020001
         HEX 01000100010001000100010100010101
         HEX 00010100000101000100010001020000
         HEX 01010201000100010000000101000002
         HEX 00000000000001010101010101010101
         HEX 01010702050409070000010101010101
         HEX 01010101010100000200000200020001
         HEX 01000101020001000000010102010001
         HEX 00010200020101000101000001000000
         HEX 01010001000002010000000101020102
         HEX 00000101010201010200020002020200
         HEX 00010101010101010101010101100209
         HEX 01090700000101010101010101010101
         HEX 01000000020002000002010102010101
         HEX 00010001000101000100000201020100
         HEX 01010201010100010001000101000102
         HEX 00000100010001010001010100010001
         HEX 02010100020002000000000001010101
         HEX 01010101010101010B02070709070000
         HEX 01010101010101010101010100020000
         HEX 02010201020101000101010001000100
         HEX 01010001000100010001000101000000
         HEX 01000100010001010001000102010001
         HEX 00010102010101000102010201010000
         HEX 00020002000000010101010101010101
         HEX 0101010A030702090203030101010101
         HEX 01010101010101000200000200020000
         HEX 01010001000001000101010101000100
         HEX 00010002000201010001010001000100
         HEX 00010100020002010001000001010001
         HEX 01010100010001010100020000020001
         HEX 00020101010101010101010101010A03
         HEX 0901090508070200D6004600003F0200
         HEX 00000300FE004600003F120000000400
         HEX 41014600003F020000000500D6009600
         HEX 8037020000000600AC01C800C0370200
         HEX 0B00070041017300803712000B000800
         HEX AC0169008037020000000900FD01C800
         HEX C03712000B000A00FD01730080371200
         HEX 0B000B00AC0169008037020000000C00
         HEX 8102C800C03702000B000D0041017300
         HEX 803712000B000E00D600960080371200
         HEX 00000F005803C800C03712000B001000
         HEX 41017300803702000B001100AC016900
         HEX 803712000B0012008102730080370200
         HEX 0B001300FD0169008037120000001400
         HEX 8102C800C03712000B001500AC017300
         HEX 803702000B001600D6004600003F0200
         HEX 00001700FE004600003F120000001800
         HEX 54014600003F020000001900AA009600
         HEX 8037020000001A00A702C800C0370200
         HEX 0B001B00FE007300803712000B001C00
         HEX 54016900803702000B001D00AC017300
         HEX 803712000B001E005401690080370200
         HEX 00001F00FD01C800C03702000B000600
         HEX FE007300803712000B000900AA009600
         HEX 8037120000000C00AC01C800C0371200
         HEX 0B000A00FE007300803702000B000F00
         HEX 540169008037120000000800FD01C800
         HEX C03702000B000400FD01730080370200
         HEX 0B000700AC0169008037120000000B00
         HEX A702C800C03712000B00030054017300
         HEX 803702000B001200D6004600003F0200
         HEX 000014001E014600003F120000000D00
         HEX 54014600003F0200000011008F009600
         HEX 80370200000002003B02C800C0370200
         HEX 0B000500D6007300803712000B001300
         HEX 1E0169008037020000001A00A702C800
         HEX C03712000B0010005401730080371200
         HEX 0B0015001E0169008037020000000E00
         HEX 5803C800C03702000B001800D6007300
         HEX 803712000B001F008F00960080371200
         HEX 00001D00FB02C800C03712000B001C00
         HEX D6007300803702000B0017001E016900
         HEX 8037120000000C00A702C800C0370200
         HEX 0B001E00AC017300803702000B001B00
         HEX 5401690080371200000008003B02C800
         HEX C03712000B000B001E01730080370200
         HEX 0B000400CA004600003F020000001600
         HEX F0004600003F12000000020041014600
         HEX 003F020000000700A000960080370200
         HEX 00000F008102C800C03702000B000600
         HEX F0007300803712000B001A0041016900
         HEX 803702000B000E009401730080371200
         HEX 0B001900410169008037020000000A00
         HEX 9401C800C03702000B000300F0007300
         HEX 803712000B000D00A000960080371200
         HEX 00001D00E001C800C03712000B001400
         HEX F0007300803702000B000C0041016900
         HEX 80371200000010008102C800C0370200
         HEX 0B001300E0017300803702000B000900
         HEX 94016900803712000B00080041017300
         HEX 803702000B001500D6004600003F0200
         HEX 00001200FE004600003F120000001E00
         HEX 41014600003F020000000500D6009600
         HEX 8037020000000F00FD01C800C0370200
         HEX 0B00170041017300803712000B001B00
         HEX AC01690080370200000018008102C800
         HEX C03712000B000200FD01730080371200
         HEX 0B000B00AC0169008037020000001C00
         HEX 5803C800C03702000B000E0041017300
         HEX 803712000B001100D600960080371200
         HEX 00000A00FB02C800C03712000B001A00
         HEX 41017300803702000B001D00AC016900
         HEX 803712000B0010008102730080370200
         HEX 0B001600FD0169008037120000001900
         HEX 8102C800C03712000B000600AC017300
         HEX 803702000B001300D6004600003F0200
         HEX 00000400FE004600003F120000001F00
         HEX 54014600003F020000000900AA009600
         HEX 8037020000000C00A702C800C0370200
         HEX 0B000F00FE007300803712000B001800
         HEX 5401690080370200000003008102C800
         HEX C03712000B001C00AC01730080371200
         HEX 0B001400540169008037020000000700
         HEX FD01C800C03702000B000200FE007300
         HEX 803712000B000800AA00960080371200
         HEX 00001B00AC01C800C03712000B000A00
         HEX FE007300803702000B001E0054016900
         HEX 803712000B001700FD01730080370200
         HEX 0B000B00AC0169008037120000001200
         HEX FD01C800C03712000B00100054017300
         HEX 803702000B001900CA004600003F0200
         HEX 00000D00F0004600003F120000000E00
         HEX 1E014600003F020000001D00A0009600
         HEX 80370200000005003B02C800C0370200
         HEX 0B001500F0007300803712000B001600
         HEX 410169008037020000000C00E001C800
         HEX C03712000B001A009401730080371200
         HEX 0B000600410169008037020000000300
         HEX 9401C800C03702000B001100F0007300
         HEX 803712000B001F00A000960080371200
         HEX 00000700E001C800C03712000B001C00
         HEX F0007300803702000B00180041016900
         HEX 80371200000004003B02C800C0370200
         HEX 0B001B0094017300803702000B001400
         HEX E00169008037120000000F008102C800
         HEX C03712000B0017003B02730080370200
         HEX 0B001300D6004600003F020000001200
         HEX FE004600003F12000000050041014600
         HEX 003F020000000B00D600960080370200
         HEX 00001E005803C800C03702000B000200
         HEX 41017300803712000B000900AC016900
         HEX 803702000B000A00FD01730080371200
         HEX 0B000C00810269008037020000001000
         HEX 8102C800C03702000B001A0058037300
         HEX 803712000B000E00D600960080371200
         HEX 00000300AC01C800C03712000801FFFF
         HEX 0000000000000000B4000200D6004600
         HEX 003F0200000003000E014600003F1200
         HEX 0000040041014600003F020000000500
         HEX D60096008037020000000600AC01C800
         HEX C0370200090007004101730080371200
         HEX 09000800AC0169008037020000000900
         HEX 1B02C800C037120009000A001B027300
         HEX 8037120009000B004101690080370200
         HEX 00000C008102C800C037020009000D00
         HEX AC0173008037120009000E00D6009600
         HEX 8037120000000F005803C800C0371200
         HEX 09001000410173008037020009001100
         HEX AC016900803712000900120081027300
         HEX 80370200090013001B02690080371200
         HEX 000014008102C800C037120009001500
         HEX AC0173008037020009001600D6004600
         HEX 003F0200000017001E014600003F1200
         HEX 0000180068014600003F020000001900
         HEX 8F0096008037020000001A00D002C800
         HEX C037020009001B00D600730080371200
         HEX 09001C001E0169008037020009001D00
         HEX 680173008037120009001E001E016900
         HEX 8037020000001F005803C800C0370200
         HEX 09000900D60073008037120009000600
         HEX 8F0096008037120000000C00C103C800
         HEX C037120009000A00D600730080370200
         HEX 09000F001E0169008037120000000800
         HEX 5803C800C037020009000400AC017300
         HEX 80370200090007006801690080371200
         HEX 00000D00D002C800C037120009001200
         HEX 1E0173008037020009000300CA004600
         HEX 003F020000001400F0004600003F1200
         HEX 00000B0041014600003F020000001300
         HEX A000960080370200000011002803C800
         HEX C037020009001A00F000730080371200
         HEX 09000200410169008037020009000500
         HEX 94017300803712000900100041016900
         HEX 80370200000015008102C800C0370200
         HEX 09001F00F00073008037120009000C00
         HEX A00096008037120000001800E001C800
         HEX C037120009000800F000730080370200
         HEX 09000E00410169008037120009001700
         HEX E00173008037020009001D0094016900
         HEX 8037120000000D009401C800C0371200
         HEX 09001C00410173008037020009001100
         HEX D6004600003F020000001E000E014600
         HEX 003F12000000040041014600003F0200
         HEX 00001600D60096008037020000001B00
         HEX AC01C800C03702000900070041017300
         HEX 8037120009001500AC01690080370200
         HEX 00000F001B02C800C037120009000900
         HEX 1B0273008037120009000B0041016900
         HEX 80370200000005008102C800C0370200
         HEX 09001200AC0173008037120009000A00
         HEX D600960080371200000018005803C800
         HEX C0371200090002004101730080370200
         HEX 09001000AC0169008037120009001400
         HEX 8102730080370200090019001B026900
         HEX 8037120009001700AC01730080370200
         HEX 09001A00D6004600003F020000000D00
         HEX 1E014600003F120000001D0068014600
         HEX 003F0200000003008F00960080370200
         HEX 00000E00D002C800C037020009000F00
         HEX D60073008037120009001B001E016900
         HEX 80370200000005005803C800C0371200
         HEX 09001F00680173008037120009000900
         HEX 1E0169008037020000001800C103C800
         HEX C037020009000600D600730080371200
         HEX 090015008F0096008037120000001C00
         HEX 5803C800C037120009000800D6007300
         HEX 80370200090004001E01690080371200
         HEX 09000700AC0173008037020009001300
         HEX 680169008037120000001200D002C800
         HEX C0371200090014001E01730080370200
         HEX 09001E00D6004600003F020000000B00
         HEX 0E014600003F12000000190041014600
         HEX 003F020000000E00D600960080370200
         HEX 000010008102C800C037020009000500
         HEX 410173008037120009001100AC016900
         HEX 80370200000016001B02C800C0371200
         HEX 090002001B0273008037120009001800
         HEX 410169008037020000000C00AC01C800
         HEX C037020009001700AC01730080371200
         HEX 09001C00D60096008037120000001D00
         HEX 1B02C800C037120009000A0041017300
         HEX 8037020009000D00AC01690080371200
         HEX 09001F00810273008037020009001200
         HEX 1B0269008037120000001B008102C800
         HEX C037120009001000AC01730080370200
         HEX 09000900CA004600003F020000000700
         HEX F0004600003F120000001A0041014600
         HEX 003F020000000F00A000960080370200
         HEX 000013002803C800C037020009001600
         HEX F0007300803712000900020041016900
         HEX 80370200090004009401730080371200
         HEX 09001100410169008037020000000600
         HEX C103C800C037020009001900F0007300
         HEX 8037120009001400A000960080371200
         HEX 00001D005803C800C037120009000C00
         HEX F0007300803702000900050041016900
         HEX 80371200000008002803C800C0370200
         HEX 09001700E00173008037020009001F00
         HEX 940169008037120000000B008102C800
         HEX C037120009001B004101730080370200
         HEX 09001300D6004600003F020000001800
         HEX 0E014600003F12000000030041014600
         HEX 003F020000001200D600960080370200
         HEX 00000D005803C800C037020009000E00
         HEX 410173008037120009001E00AC016900
         HEX 8037020009000A001B02730080371200
         HEX 09000600810269008037020000001000
         HEX 8102C800C037020009001D0058037300
         HEX 8037120009001500D600960080371200
         HEX 000008005803C800C0371200D800FEFF
         HEX 00000000000000000000
L4BF9    HEX 0000770741082C070F008000700F000D
         HEX A90FF00FE000DF04AF0D8F07CC0CFF0F
         HEX 55555555555555555555555555555555 ; UUUUUUUUUUUUUUUU
         HEX 55555555555555555555555555555555 ; UUUUUUUUUUUUUUUU
         HEX 55555555555555555555555555555555 ; UUUUUUUUUUUUUUUU
         HEX 55555555555555555555555555555555 ; UUUUUUUUUUUUUUUU
         HEX 55555555555555555555555555555555 ; UUUUUUUUUUUUUUUU
         HEX 55555555555555555555555555555555 ; UUUUUUUUUUUUUUUU
         HEX 55555555555555555555555555555555 ; UUUUUUUUUUUUUUUU
         HEX 55555555555555555555555555555555 ; UUUUUUUUUUUUUUUU
         HEX 55555555555555555555555555555555 ; UUUUUUUUUUUUUUUU
         HEX 55555555555555555555555555555555 ; UUUUUUUUUUUUUUUU
         HEX 55555555555555555555555555555555 ; UUUUUUUUUUUUUUUU
         HEX 55555555555555555555555555555555 ; UUUUUUUUUUUUUUUU
         HEX 55555555555555555555555555555555 ; UUUUUUUUUUUUUUUU
         HEX 55555555555555555555555555555555 ; UUUUUUUUUUUUUUUU
         HEX 55555555555555555555555555555555 ; UUUUUUUUUUUUUUUU
         HEX 55555555555555555555555555555555 ; UUUUUUUUUUUUUUUU
         HEX 55555555555555555555555555555555 ; UUUUUUUUUUUUUUUU
         HEX 55555555555555555555555555555555 ; UUUUUUUUUUUUUUUU
         HEX 55555555555555555555555555555555 ; UUUUUUUUUUUUUUUU
         HEX 55555555555555000000005555555555
         HEX 5555555500222F222200555555555555
         HEX 55502202222202220555555555555502
         HEX 2022F2222022205555555555550200F2
         HEX 220F2202220555555555550200022200
         HEX 220222055555555555020FFFF2222202
         HEX 22055555555550202F00FFFF2200F220
         HEX 555555555020FF00FFFFF200F2205555
         HEX 555550F0FFF0F0FFF200FF2055555555
         HEX 50050F0F0FFF20000FF0555555555555
         HEX 50FFFF20000000005555555555555500
         HEX 0002220000055555555555555502FFFF
         HEX F222000005555005555555502FFFF222
         HEX 222000550F05555555502FFF2222220F
         HEX F0502F05555555500FF2222020FFF000
         HEX FF0555555550F000F22020FF20002055
         HEX 5555550FF000FF0220F2220005555555
         HEX 50FFFF0FF2000FFF02005555555550F0
         HEX 2F0F0200F02000055555555550000F00
         HEX 00F00000005555555555555555555500
         HEX 000000555555555555555555002222F2
         HEX 22005555555555555550222022222022
         HEX 05555555555555022202222F22022055
         HEX 5555555550222022F0222F0020555555
         HEX 55555022202200222000205555555555
         HEX 50222022222FFFF0205555555555022F
         HEX 0022FFFF00F2020555555555022F002F
         HEX FFFF00FF02055555555502FF002FFF0F
         HEX 0FFF0F05555555550FF00002FFF0F0F0
         HEX 5005555555550000000002FFFF055555
         HEX 55555555500000222000005555555005
         HEX 55500000222FFFFF2055555550F05500
         HEX 0222222FFFF20555555550F2050FF022
         HEX 2222FFF20555555550FF000FFF020222
         HEX 2FF00555555555020002FF02022F000F
         HEX 05555555555000222F0220FF000FF055
         HEX 555555550020FFF0002FF0FFFF055555
         HEX 55555000020F0020F0F20F0555555555
         HEX 550000000F0000F00005555555555500
         HEX 00000055555555555555555500222F22
         HEX 22005555555555555550220222220222
         HEX 05555555555555022022F22220222055
         HEX 55555555550200F2220F220222055555
         HEX 55555502000222002202220555555555
         HEX 55020FFFF22222022205555555555020
         HEX 2F00FFFF2200F220555555555020FF00
         HEX FFFFF200F2205555555550F0FFFFFFFF
         HEX F200FF205555555550050F0880FF2000
         HEX 0FF05555555555555008802000000000
         HEX 55555555555555000002220000055555
         HEX 555555555502FFFFF222000005555005
         HEX 555555502FFFF222222000550F055555
         HEX 55502FFF2222220FF0502F0555555550
         HEX 0FF2222020FFF000FF0555555550F000
         HEX F22020FF200020555555550FF000FF02
         HEX 20F222000555555550FFFF0FF2000FFF
         HEX 02005555555550F02F0F0200F0200005
         HEX 5555555550000F0000F0000000555555
         HEX 55555555555555000000005555555555
         HEX 55555555002222F22200555555555555
         HEX 55502220222220220555555555555502
         HEX 2202222F220220555555555550222022
         HEX F0222F00205555555555502220220022
         HEX 200020555555555550222022222FFFF0
         HEX 205555555555022F0022FFFF00F20205
         HEX 55555555022F002FFFFF00FF02055555
         HEX 555502FF002FFFFFFFFF0F0555555555
         HEX 0FF00002FF0880F05005555555550000
         HEX 00000208800555555555555550000022
         HEX 200000555555500555500000222FFFFF
         HEX 2055555550F055000222222FFFF20555
         HEX 555550F2050FF0222222FFF205555555
         HEX 50FF000FFF0202222FF0055555555502
         HEX 0002FF02022F000F0555555555500022
         HEX 2F0220FF000FF055555555550020FFF0
         HEX 002FF0FFFF05555555555000020F0020
         HEX F0F20F0555555555550000000F0000F0
         HEX 00055555555555555555555555555555
         HEX 55555555555555555055555555555555 ; UUUUUUUUPUUUUUUU
         HEX 55555555555508055555555555555555
         HEX 555550008C8000555555555555555555
         HEX 08C78C87C80555555555555555550CC7
         HEX CCC7CC05555555555555555507787878
         HEX 7705555555555555555088C7F8F7C880
         HEX 5555555555555508CCC88F88CCC80555
         HEX 55555555555088C7F8F7C88055555555
         HEX 55555555077878787705555555555555
         HEX 55550CC7CCC7CC055555555555555555
         HEX 08C78C87C80555555555555555555000
         HEX 8C800055555555555555500555550805
         HEX 55550055555555555090005500055000
         HEX 905555555555550999050A0509990555
         HEX 555555555550AAA00A00AAA055555555
         HEX 5555555500000A000005555555555555
         HEX 555555550A0555555555555555555555
         HEX 55550A05555555555555555555555555
         HEX 0A055555555555555555555555555555
         HEX 55555555555555555555500500000500
         HEX 55555555555555550FB04BFB40BF0555
         HEX 5555555555550BFB4BFB4BFB05555555
         HEX 5555555550BFB4B4BFB0555555555555 ; UUUUP?44?0UUUUUU
         HEX 5555044BBFFFBB440555555555555555
         HEX 0BB4F999F4BB05555555555555550FFB
         HEX F999FBFF05555555555555550BB4F999
         HEX F4BB0555555555555555044BBFFFBB44
         HEX 055555555555555550BFB4B4BFB05555
         HEX 5555555555550BFB4BFB4BFB05555555
         HEX 555555550FB04BFB40BF055555555555
         HEX 55555005000005005555555555555555
         HEX 55555000555555555555555555000055
         HEX 50005550000555555555500AAA0550A0
         HEX 550AAA00555555555550AAA050A050AA
         HEX A0555555555555550AAA00A00AAA0555
         HEX 5555555555550AAAA0A0AAAA05555555
         HEX 555555550AAAA0A0AAAA055555555555
         HEX 5555500000A000005555555555555555
         HEX 55555555555555555555555555555550 ; UUUUUUUUUUUUUUUP
         HEX 00005555555555555555555500033333
         HEX 00055555555555555550360363630630
         HEX 55555555555555506830868038605555
         HEX 55555555555003303630330055555555
         HEX 5555550330060F060033055555555555
         HEX 55036830F8F038630555555555555503
         HEX 366F8F8F663305555555555555036830
         HEX F8F03863055555555555550330060F06
         HEX 00330555555555555550033036303300
         HEX 55555555555555506830868038605555
         HEX 55555555555036036363063055555555
         HEX 55555555000333330005555555555555
         HEX 55555550000055555555555555555555
         HEX 55550A05000555555555555555500005
         HEX 0A005500555555555555550AA0500A00
         HEX 550A05555555555550AAA0500A0550AA
         HEX 05555555555550AAA0550A0550AA0555
         HEX 55555555550005550A05550055555555
         HEX 55555555555555555555555555555555 ; UUUUUUUUUUUUUUUU
         HEX 55555555050555555555555555555555
         HEX 50509090505555555555555555550906
         HEX F9F6090555555555555555509F969996
         HEX 9F905555555555555555099669669905
         HEX 55555555555555506662626266605555 ; UUUUUUUPfbbbf`UU
         HEX 555555555509F966222669F905555555
         HEX 55555550999222229990555555555555
         HEX 5509F966222669F90555555555555550
         HEX 66626262666055555555555555550996
         HEX 6966990555555555555555509F96F9F6
         HEX 9F905555555555555555090699960905
         HEX 55555555555555555050909050555555
         HEX 55555555550005550005555555555555
         HEX 5555550AA0550A055500055555555555
         HEX 550AAA050A0550AA0555555555555550
         HEX AA050A050AAA05555555555555550000
         HEX 0A050AA0555555555555555555550A00
         HEX 0005555555555555555555550A055555
         HEX 55555555555555555555555555555555 ; UUUUUUUUUUUUUUUU
         HEX 55555555555555555555555555555555 ; UUUUUUUUUUUUUUUU
         HEX 55555555555555555555555555555555 ; UUUUUUUUUUUUUUUU
         HEX 55555555555555555555555555555555 ; UUUUUUUUUUUUUUUU
         HEX 55555555555555555555555555555555 ; UUUUUUUUUUUUUUUU
         HEX 55555555555555555555555555555555 ; UUUUUUUUUUUUUUUU
         HEX 55555555555555555000555555555555
         HEX 0005555555550EEE055555555550EEE0
         HEX 555555550111E0000000000E11E05555
         HEX 555550111EEEEEEEEEE110E055555555
         HEX 01011111111111111105555555550111
         HEX 10000000000111105555555501110222
         HEX 22222220111055555555200022255555
         HEX 55220002555555555222255555555552
         HEX 22225555555555555555555555555555 ; ""UUUUUUUUUUUUUU
         HEX 55555555555555555555555555555555 ; UUUUUUUUUUUUUUUU
         HEX 55555555555555555555555555555555 ; UUUUUUUUUUUUUUUU
         HEX 55555555555555555555555555555555 ; UUUUUUUUUUUUUUUU
         HEX 55555555555555555555555555555555 ; UUUUUUUUUUUUUUUU
         HEX 55555555555555555555555555555555 ; UUUUUUUUUUUUUUUU
         HEX 55555555555555555555555050005555
         HEX 55555555555555550000000000055555
         HEX 55555555555077000000007005555555
         HEX 5555500FF70A55505007900555555555
         HEX 06F62200000000660FF055555550FFF0
         HEX 6FFF6F6066F990F605555550F926FF66
         HEX FFF67FF906090555550FF606996FFFF6
         HEX 76990206705555066776909FF9967690
         HEX 0276605550766066002F666666000026
         HEX 66055076606600026600660022206605
         HEX 50766060000020000666666007055006
         HEX 70602222200006666660070550062066
         HEX 66666666666660600705507620660666
         HEX 76766660066022055500202660667776
         HEX 00006720205555507206600007000076
         HEX 67002055555002027600707077762002
         HEX 05555555500222277777722000005555
         HEX 55555500000000000000005555555555
         HEX 55555555555555555555555555555555 ; UUUUUUUUUUUUUUUU
         HEX 55555555555555555555555555555555 ; UUUUUUUUUUUUUUUU
         HEX 00050555555555555555555550000000
         HEX 00005555555555555550070000000077
         HEX 055555555555500970050555A07FF005
         HEX 555555550FF06600000000226F605555
         HEX 55506F099F6606F6FFF60FFF05555550
         HEX 90609FF76FFF66FF629F055555076020
         HEX 99676FFFF699606FF055550667200967
         HEX 699FF909677660555066620000666666
         HEX F2006606670550660222006600662000
         HEX 66066705507006666660000200000606
         HEX 67055070066666600002222206076005
         HEX 50700606666666666666660260055022
         HEX 06600666676766606602670555020276
         HEX 00006777660662020055550200766700
         HEX 00700006602705555550200267770707
         HEX 00672020055555550000022777777222
         HEX 20055555555555000000000000000055
         HEX 55555555555555555555555555555555 ; UUUUUUUUUUUUUUUU
         HEX 55555555555555555555555555555555 ; UUUUUUUUUUUUUUUU
         HEX 55555550500055555555555555555555
         HEX 00000000000555555555555555507700
         HEX 00000070055555555555500FF70A5550
         HEX 500790055555555506F6220000000066
         HEX 0FF055555550FFF06FFF6F6066F990F6
         HEX 05555550F926FF66FFF67FF906090555
         HEX 550FF606996FFFF67699020670555506
         HEX 6776909FF99676900276605550766066
         HEX 002F6666660070266605507660660702
         HEX 66006600022066055076606000002000
         HEX 06666660070550067060222220000666
         HEX 66600705500620666666666666666060
         HEX 07055076206606667600006006602205
         HEX 55002026600000000000672020555550
         HEX 72066000070000766700205555500202
         HEX 77777777777620020555555550022227
         HEX 77777220000055555555550000000000
         HEX 00000055555555555555555555555555
         HEX 55555555555555555555555555555555 ; UUUUUUUUUUUUUUUU
         HEX 55555555555555550005055555555555
         HEX 55555555500000000000555555555555
         HEX 55500700000000770555555555555009
         HEX 70050555A07FF005555555550FF06600
         HEX 000000226F60555555506F099F6606F6
         HEX FFF60FFF0555555090609FF76FFF66FF
         HEX 629F05555507602099676FFFF699606F
         HEX F055550667200967699FF90967766055
         HEX 5066620070666666F200660667055066
         HEX 02220066006620706606670550700666
         HEX 66600002000006066705507006666660
         HEX 00022222060760055070060666666666
         HEX 66666602600550220660066667676000
         HEX 66026705550202760000000000066202
         HEX 00555502007667000000007660270555
         HEX 55502002677777777767202005555555
         HEX 00000227777772222005555555555500
         HEX 00000000000000555555555555555555
         HEX 55555555555555555555555555555555 ; UUUUUUUUUUUUUUUU
         HEX 55555555555555555555555050005555
         HEX 55555555555555550000000000055555
         HEX 55555555555077000000007005555555
         HEX 5555500FF70A55505007900555555555
         HEX 06F62200000000660FF055555550FFF0
         HEX 6FFF6F6066F990F605555550F926FF66
         HEX FFF67FF996090555550FF606996FFFF6
         HEX 76999206705555066776999FF9967699
         HEX 9276605550766066992F666666997026
         HEX 66055076606697926699669992206605
         HEX 50766069999929999666666007055006
         HEX 70692222299996666660070550062066
         HEX 66666666666669600705507620669666
         HEX 76999969966022055500202669999999
         HEX 99996720205555507206699997999976
         HEX 67002055555002027777777777762002
         HEX 05555555500222277777722000005555
         HEX 55555500000000000000005555555555
         HEX 55555555555555555555555555555555 ; UUUUUUUUUUUUUUUU
         HEX 55555555555555555555555555555555 ; UUUUUUUUUUUUUUUU
         HEX 00050555555555555555555550000000
         HEX 00005555555555555550070000000077
         HEX 055555555555500970050555A07FF005
         HEX 555555550FF06600000000226F605555
         HEX 55506F099F6606F6FFF60FFF05555550
         HEX 90699FF76FFF66FF629F055555076029
         HEX 99676FFFF699606FF055550667299967
         HEX 699FF999677660555066629979666666
         HEX F2996606670550660222996699662979
         HEX 66066705507006666669999299999606
         HEX 67055070066666699992222296076005
         HEX 50700606666666666666660260055022
         HEX 06699666676769996602670555020276
         HEX 99999999999662020055550200766799
         HEX 99999976602705555550200267777777
         HEX 77672020055555550000022777777222
         HEX 20055555555555000000000000000055
         HEX 55555555555555555555555555555555 ; UUUUUUUUUUUUUUUU
         HEX 00000000000000000000000008080808
         HEX 08080008000000141414000000000000
         HEX 00000A0A3F0A0A3F14140000081C2A28
         HEX 180C0A2A1C08000011292A140A152522
         HEX 000000182420102825221D0000000404
         HEX 04000000000000000204080810101010
         HEX 08080410080404020202020404080008
         HEX 2A1C1C2A08000000000000000008083E
         HEX 08080000000000000000000C0C040800
         HEX 00000000003E00000000000000000000
         HEX 000C0C00000002020404081010202000
         HEX 001C22262A3222221C00000008182808
         HEX 0808083E0000001C2202040810203E00
         HEX 00001C22020C0202221C000000040C14
         HEX 243E0404040000003E20203C2202023C
         HEX 0000000C10203C2222221C0000003E22
         HEX 0204040808080000001C22221C222222
         HEX 1C0000001C2222221E02041800000000
         HEX 000C0C00000C0C00000000000C0C0000
         HEX 0C0C040800000000030C300C03000000
         HEX 000000003E003E00000000000000300C
         HEX 030C300000001C220204080800080000
         HEX 000C12262A2A26100E00000008080814
         HEX 143E22220000003C22223C2222223C00
         HEX 00001C2220202020221C000000382422
         HEX 22222224380000003E20203C2020203E
         HEX 0000003E20203C202020200000001C22
         HEX 20202622221C0000002222223E222222
         HEX 220000001C0808080808081C0000001E
         HEX 0202020222221C000000222428303028
         HEX 2422000000202020202020203E000000
         HEX 2236362A222222220000002232322A2A
         HEX 2626220000001C2222222222221C0000
         HEX 003C2222223C2020200000001C222222
         HEX 2222221C0403003C2222223C28242200
         HEX 00001C22201C0202221C0000003E0808
         HEX 0808080808000000222222222222221C
         HEX 00000022222222141408080000002222
         HEX 2A2A2A14141400000022221408081422
         HEX 2200000022221414080808080000003E
         HEX 0204080810203E0000000E0808080808
         HEX 08080808001010080804040202000000
         HEX 1C040404040404040404000808141422
         HEX 00000000000000000000000000003E00
         HEX 00000804000000000000000000001E22
         HEX 2222261A00000020202C322222223C00
         HEX 000000001C222020221C00000002021E
         HEX 222222261A00000000001C223E20221C
         HEX 0000000C103C10101010100000000000
         HEX 1E222222261A021C0020202C32222222
         HEX 22000000080018080808080C00000004
         HEX 001C0404040404043800202024283028
         HEX 2422000000080808080808080C000000
         HEX 0000342A2A2A2A2A00000000002C3222
         HEX 22222200000000001C222222221C0000
         HEX 0000002C322222223C20200000001E22
         HEX 2222261A020200000036181010103800
         HEX 000000001C221804221C00000010103C
         HEX 101010120C000000000022222222261A
         HEX 00000000002222141408080000000000
         HEX 22222A2A141400000000002214080814
         HEX 22000000000022221414080810200000
         HEX 003E040810203E000000060808080830
         HEX 08080808080808080808080808080000
         HEX 30080808080608080808000000001926
         HEX 0000000000
L636E    HEX 00000000000000000000000000000000
         HEX 00000000000000000000000000000000
         HEX 00000000000000000000000000000000
         HEX 00000000000000000000000000000000
         HEX 00000000000000000000000000000000
         HEX 00000000000000000000000000000000
         HEX 00000000000000000000000000000000
         HEX 00000000000000000000000000000000
         HEX 00000000000000000000000000000000
         HEX 00000000000000000000000000000000
         HEX 00000000000000000000000000000000
         HEX 00000000000000000000000000000000
         HEX 00000000000000000000000000000000
         HEX 00000000000000000000000000000000
         HEX 00000000000000000000000000000000
         HEX 00000000000000000000000000000000
