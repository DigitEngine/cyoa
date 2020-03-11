
.export _cyoa_music_data
_cyoa_music_data:
	.byte 3
	.word @instruments
	.word @samples-3
	.word @song0ch0,@song0ch1,@song0ch2,@song0ch3,@song0ch4,307,256
	.word @song1ch0,@song1ch1,@song1ch2,@song1ch3,@song1ch4,307,256
	.word @song2ch0,@song2ch1,@song2ch2,@song2ch3,@song2ch4,307,256

@instruments:
	.byte $b0 ;instrument $00
	.word @env1,@env0,@env0
	.byte $00
	.byte $b0 ;instrument $01
	.word @env2,@env0,@env0
	.byte $00
	.byte $b0 ;instrument $02
	.word @env3,@env0,@env0
	.byte $00
	.byte $30 ;instrument $03
	.word @env4,@env0,@env0
	.byte $00
	.byte $30 ;instrument $04
	.word @env5,@env0,@env0
	.byte $00
	.byte $30 ;instrument $06
	.word @env6,@env0,@env0
	.byte $00

@samples:
@env0:
	.byte $c0,$00,$00
@env1:
	.byte $cc,$c9,$c7,$c5,$c3,$c2,$c2,$c2,$00,$07
@env2:
	.byte $cd,$03,$cc,$02,$cb,$cb,$ca,$ca,$c9,$c8,$c8,$c7,$c6,$c6,$c4,$c4
	.byte $c3,$c2,$c0,$00,$12
@env3:
	.byte $cf,$00,$00
@env4:
	.byte $cd,$c9,$c4,$c2,$c1,$c0,$00,$05
@env5:
	.byte $cd,$cb,$ca,$c9,$c8,$c7,$c6,$c4,$c4,$c3,$c3,$c2,$c2,$c1,$02,$c0
	.byte $00,$0f
@env6:
	.byte $c7,$05,$c6,$04,$c5,$02,$c4,$c4,$c3,$c3,$c2,$c2,$c1,$c0,$00,$0d


@song0ch0:
	.byte $fb,$04
@song0ch0loop:
@ref0:
	.byte $80,$32,$89,$37,$3a,$85,$3c,$85,$41,$3d,$3b,$37,$32,$85,$28,$85
@ref1:
	.byte $32,$89,$37,$3a,$85,$32,$85,$30,$89,$33,$36,$85,$28,$85
@ref2:
	.byte $32,$89,$37,$3a,$85,$3c,$85,$41,$3d,$3b,$37,$32,$85,$28,$85
@ref3:
	.byte $45,$45,$45,$45,$40,$89,$3d,$3a,$85,$36,$85,$32,$85,$28,$85
	.byte $ff,$0f
	.word @ref2
	.byte $ff,$0e
	.word @ref1
	.byte $ff,$0f
	.word @ref2
	.byte $ff,$0f
	.word @ref3
@ref8:
	.byte $24,$89,$2d,$32,$85,$24,$85,$28,$89,$31,$36,$85,$28,$85
@ref9:
	.byte $2c,$89,$33,$3a,$85,$32,$85,$32,$89,$3b,$40,$85,$3a,$85
	.byte $ff,$0e
	.word @ref8
@ref11:
	.byte $2c,$89,$33,$3a,$85,$32,$85,$2c,$89,$33,$3a,$85,$32,$85
	.byte $ff,$0e
	.word @ref8
	.byte $ff,$0e
	.word @ref9
	.byte $ff,$0e
	.word @ref8
@ref15:
	.byte $32,$89,$3b,$40,$85,$3a,$85,$32,$89,$3b,$40,$85,$3a,$85
@ref16:
	.byte $00,$9d
@ref17:
	.byte $9f
	.byte $fd
	.word @song0ch0loop

@song0ch1:
@song0ch1loop:
@ref18:
	.byte $82,$22,$8d,$28,$8d,$22,$8d,$28,$8d
@ref19:
	.byte $22,$8d,$28,$8d,$1e,$8d,$18,$8d
@ref20:
	.byte $22,$8d,$28,$8d,$22,$8d,$28,$8d
@ref21:
	.byte $14,$8d,$18,$8d,$18,$8d,$22,$8d
	.byte $ff,$08
	.word @ref20
	.byte $ff,$08
	.word @ref19
	.byte $ff,$08
	.word @ref20
	.byte $ff,$08
	.word @ref21
@ref26:
	.byte $bf
@ref27:
	.byte $bf
@ref28:
	.byte $bf
@ref29:
	.byte $bf
@ref30:
	.byte $bf
@ref31:
	.byte $bf
@ref32:
	.byte $bf
@ref33:
	.byte $bf
@ref34:
	.byte $9f
@ref35:
	.byte $9f
	.byte $fd
	.word @song0ch1loop

@song0ch2:
@song0ch2loop:
@ref36:
	.byte $84,$32,$85,$00,$85,$28,$85,$00,$85,$32,$85,$00,$85,$28,$85,$00
	.byte $85
@ref37:
	.byte $32,$85,$00,$85,$28,$85,$00,$85,$30,$85,$00,$85,$28,$85,$00,$85
@ref38:
	.byte $32,$85,$00,$85,$28,$85,$00,$85,$32,$85,$00,$85,$28,$85,$00,$85
@ref39:
	.byte $24,$85,$00,$85,$28,$85,$00,$85,$28,$85,$00,$85,$32,$85,$00,$85
	.byte $ff,$10
	.word @ref38
	.byte $ff,$10
	.word @ref37
	.byte $ff,$10
	.word @ref38
	.byte $ff,$10
	.word @ref39
@ref44:
	.byte $24,$85,$00,$85,$24,$85,$00,$85,$28,$85,$00,$85,$28,$85,$00,$85
@ref45:
	.byte $2c,$85,$00,$85,$2c,$85,$00,$85,$32,$85,$00,$85,$32,$85,$00,$85
	.byte $ff,$10
	.word @ref44
@ref47:
	.byte $2c,$85,$00,$85,$2c,$85,$00,$85,$2c,$85,$00,$85,$2c,$85,$00,$85
	.byte $ff,$10
	.word @ref44
	.byte $ff,$10
	.word @ref45
	.byte $ff,$10
	.word @ref44
@ref51:
	.byte $32,$85,$00,$85,$32,$85,$00,$85,$32,$85,$00,$85,$32,$85,$00,$85
@ref52:
	.byte $9f
@ref53:
	.byte $9f
	.byte $fd
	.word @song0ch2loop

@song0ch3:
@song0ch3loop:
@ref54:
	.byte $86,$16,$85,$18,$85,$16,$85,$18,$85,$16,$85,$18,$85,$88,$14,$85
	.byte $86,$18,$85
@ref55:
	.byte $16,$85,$18,$85,$16,$85,$18,$85,$16,$85,$18,$85,$88,$14,$85,$86
	.byte $18,$85
	.byte $ff,$10
	.word @ref55
	.byte $ff,$10
	.word @ref55
	.byte $ff,$10
	.word @ref55
	.byte $ff,$10
	.word @ref55
	.byte $ff,$10
	.word @ref55
	.byte $ff,$10
	.word @ref55
	.byte $ff,$10
	.word @ref55
	.byte $ff,$10
	.word @ref55
	.byte $ff,$10
	.word @ref55
	.byte $ff,$10
	.word @ref55
	.byte $ff,$10
	.word @ref55
	.byte $ff,$10
	.word @ref55
	.byte $ff,$10
	.word @ref55
	.byte $ff,$10
	.word @ref55
@ref70:
	.byte $16,$85,$19,$17,$19,$17,$19,$16,$81
@ref71:
	.byte $18,$8d,$16,$18,$16,$18,$16,$18,$16,$18
	.byte $fd
	.word @song0ch3loop

@song0ch4:
@song0ch4loop:
@ref72:
	.byte $bf
@ref73:
	.byte $bf
@ref74:
	.byte $bf
@ref75:
	.byte $bf
@ref76:
	.byte $bf
@ref77:
	.byte $bf
@ref78:
	.byte $bf
@ref79:
	.byte $bf
@ref80:
	.byte $bf
@ref81:
	.byte $bf
@ref82:
	.byte $bf
@ref83:
	.byte $bf
@ref84:
	.byte $bf
@ref85:
	.byte $bf
@ref86:
	.byte $bf
@ref87:
	.byte $bf
@ref88:
	.byte $9f
@ref89:
	.byte $9f
	.byte $fd
	.word @song0ch4loop


@song1ch0:
	.byte $fb,$05
@song1ch0loop:
@ref90:
	.byte $8a,$33,$3b,$41,$47,$4b,$53,$59,$5f,$63,$5f,$59,$53,$4b,$47,$41
	.byte $3a,$81
@ref91:
	.byte $33,$3b,$41,$47,$4b,$53,$59,$5f,$63,$5f,$59,$53,$4b,$47,$41,$3a
	.byte $81
	.byte $ff,$11
	.word @ref91
@ref93:
	.byte $3c,$00,$3c,$00,$3d,$33,$3c,$00,$3f,$01,$40,$85,$40,$00,$40,$00
	.byte $40,$00,$40,$00,$40,$00,$40,$00,$40,$00
@ref94:
	.byte $32,$00,$40,$00,$32,$00,$40,$00,$4a,$00,$40,$00,$4a,$00,$40,$00
	.byte $32,$00,$40,$00,$32,$00,$40,$00,$2e,$00,$2e,$00,$30,$00,$30,$00
	.byte $ff,$20
	.word @ref94
	.byte $ff,$20
	.word @ref94
	.byte $ff,$20
	.word @ref94
@ref98:
	.byte $84,$46,$8d,$4a,$9b,$00,$4b,$47,$41,$46,$00
@ref99:
	.byte $3f,$40,$83,$00,$37,$40,$83,$00,$37,$46,$83,$00,$37,$40,$83,$00
	.byte $37,$47,$37,$40,$00
@ref100:
	.byte $46,$8d,$4a,$9b,$00,$4b,$47,$41,$46,$00
	.byte $ff,$15
	.word @ref99
@ref102:
	.byte $42,$00,$42,$00,$42,$00,$42,$00,$42,$00,$42,$00,$42,$00,$42,$00
	.byte $46,$00,$46,$00,$46,$00,$46,$00,$46,$00,$46,$00,$46,$00,$46,$00
@ref103:
	.byte $48,$00,$48,$00,$48,$00,$48,$00,$48,$00,$48,$00,$48,$00,$48,$00
	.byte $4a,$00,$4a,$00,$4a,$00,$4a,$00,$4a,$00,$4a,$00,$4a,$00,$4a,$00
	.byte $ff,$20
	.word @ref102
	.byte $ff,$20
	.word @ref103
	.byte $ff,$20
	.word @ref102
	.byte $ff,$20
	.word @ref103
	.byte $ff,$20
	.word @ref102
@ref109:
	.byte $48,$00,$48,$00,$48,$00,$48,$00,$48,$00,$48,$00,$4e,$00,$54,$00
	.byte $58,$00,$58,$00,$58,$00,$58,$00,$58,$00,$58,$00,$58,$00,$58,$00
	.byte $fd
	.word @song1ch0loop

@song1ch1:
@song1ch1loop:
@ref110:
	.byte $84,$46,$8d,$4a,$9b,$00,$4b,$47,$41,$46,$81
@ref111:
	.byte $40,$85,$3d,$3a,$83,$00,$33,$01,$2e,$32,$2f,$29,$2f,$31,$33,$29
	.byte $2f,$30,$00
@ref112:
	.byte $46,$8d,$4a,$9b,$00,$4b,$47,$41,$46,$81
	.byte $ff,$13
	.word @ref111
@ref114:
	.byte $28,$00,$28,$00,$30,$32,$28,$00,$38,$00,$36,$00,$32,$00,$2e,$00
	.byte $28,$00,$28,$00,$30,$32,$28,$00,$24,$00,$28,$00,$24,$00,$28,$00
@ref115:
	.byte $28,$00,$28,$00,$30,$32,$28,$00,$38,$00,$36,$00,$32,$00,$2e,$00
	.byte $3a,$3c,$39,$3d,$3f,$41,$39,$36,$83,$00
	.byte $ff,$20
	.word @ref114
	.byte $ff,$1a
	.word @ref115
@ref118:
	.byte $4e,$8d,$52,$9b,$00,$53,$4f,$47,$4e,$00
@ref119:
	.byte $45,$46,$83,$00,$41,$46,$83,$00,$41,$4e,$83,$00,$41,$46,$83,$00
	.byte $41,$4f,$41,$46,$00
	.byte $ff,$0a
	.word @ref118
	.byte $ff,$15
	.word @ref119
@ref122:
	.byte $bf
@ref123:
	.byte $bf
@ref124:
	.byte $bf
@ref125:
	.byte $bf
@ref126:
	.byte $bf
@ref127:
	.byte $bf
@ref128:
	.byte $bf
@ref129:
	.byte $bf
	.byte $fd
	.word @song1ch1loop

@song1ch2:
@song1ch2loop:
@ref130:
	.byte $84,$4b,$53,$59,$63,$01,$59,$01,$5e,$85,$59,$01,$54,$58,$55,$53
	.byte $4b,$46,$81
@ref131:
	.byte $33,$3b,$41,$4b,$01,$41,$01,$46,$85,$41,$01,$33,$2f,$31,$32,$83
	.byte $00
@ref132:
	.byte $33,$3b,$41,$4b,$01,$41,$01,$46,$85,$41,$01,$41,$4b,$47,$41,$46
	.byte $81
@ref133:
	.byte $25,$01,$25,$01,$25,$27,$01,$28,$83,$00,$28,$00,$28,$00,$28,$00
	.byte $28,$00,$28,$00,$28,$00,$28,$00
@ref134:
	.byte $80,$32,$85,$01,$2e,$00,$2e,$00,$2e,$00,$2e,$00,$2e,$00,$32,$85
	.byte $01,$2e,$00,$28,$00,$28,$00,$2e,$00,$30,$00
@ref135:
	.byte $32,$85,$01,$2e,$00,$2e,$00,$2e,$00,$2e,$00,$2e,$00,$84,$24,$85
	.byte $01,$26,$00,$28,$00,$28,$00,$28,$00,$28,$00
	.byte $ff,$1a
	.word @ref134
	.byte $ff,$1a
	.word @ref135
@ref138:
	.byte $32,$85,$01,$33,$01,$33,$01,$33,$01,$33,$01,$32,$00,$33,$01,$32
	.byte $00,$32,$00
@ref139:
	.byte $28,$85,$01,$29,$01,$29,$01,$29,$01,$29,$01,$28,$00,$29,$01,$28
	.byte $00,$28,$00
	.byte $ff,$13
	.word @ref138
	.byte $ff,$13
	.word @ref139
@ref142:
	.byte $2a,$85,$01,$2b,$01,$2b,$01,$2b,$2e,$85,$01,$2f,$01,$2f,$01,$2e
	.byte $81
@ref143:
	.byte $28,$85,$01,$29,$01,$29,$01,$29,$32,$85,$01,$33,$01,$33,$01,$32
	.byte $81
	.byte $ff,$11
	.word @ref142
	.byte $ff,$11
	.word @ref143
	.byte $ff,$11
	.word @ref142
	.byte $ff,$11
	.word @ref143
	.byte $ff,$11
	.word @ref142
@ref149:
	.byte $28,$85,$01,$29,$01,$29,$01,$29,$40,$85,$01,$29,$01,$41,$01,$28
	.byte $00
	.byte $fd
	.word @song1ch2loop

@song1ch3:
@song1ch3loop:
@ref150:
	.byte $88,$12,$b5,$12,$85
@ref151:
	.byte $12,$a5,$86,$13,$13,$13,$13,$13,$12,$81
	.byte $ff,$04
	.word @ref150
@ref153:
	.byte $12,$99,$12,$85,$86,$13,$13,$13,$13,$88,$13,$13,$12,$81
@ref154:
	.byte $86,$13,$13,$88,$13,$86,$13,$13,$13,$88,$13,$86,$13,$13,$13,$88
	.byte $13,$86,$13,$13,$13,$88,$13,$86,$12,$81
@ref155:
	.byte $13,$13,$88,$13,$86,$13,$13,$13,$88,$13,$86,$13,$13,$13,$88,$13
	.byte $86,$13,$13,$13,$88,$13,$86,$12,$81
	.byte $ff,$11
	.word @ref155
	.byte $ff,$11
	.word @ref155
	.byte $ff,$11
	.word @ref155
	.byte $ff,$11
	.word @ref155
	.byte $ff,$11
	.word @ref155
	.byte $ff,$11
	.word @ref155
	.byte $ff,$11
	.word @ref155
	.byte $ff,$11
	.word @ref155
	.byte $ff,$11
	.word @ref155
	.byte $ff,$11
	.word @ref155
	.byte $ff,$11
	.word @ref155
	.byte $ff,$11
	.word @ref155
	.byte $ff,$11
	.word @ref155
	.byte $ff,$11
	.word @ref155
	.byte $fd
	.word @song1ch3loop

@song1ch4:
@song1ch4loop:
@ref170:
	.byte $32,$89,$32,$8d,$33,$32,$89,$33,$32,$89,$32,$81
@ref171:
	.byte $32,$89,$32,$8d,$33,$33,$33,$32,$85,$33,$32,$85,$32,$81
	.byte $ff,$0c
	.word @ref170
	.byte $ff,$0e
	.word @ref171
@ref174:
	.byte $32,$89,$33,$32,$89,$33,$33,$32,$85,$33,$32,$89,$32,$81
@ref175:
	.byte $32,$89,$33,$32,$89,$33,$33,$33,$33,$33,$32,$89,$32,$81
	.byte $ff,$0e
	.word @ref174
	.byte $ff,$0e
	.word @ref175
	.byte $ff,$0e
	.word @ref174
	.byte $ff,$0e
	.word @ref175
	.byte $ff,$0e
	.word @ref174
	.byte $ff,$0e
	.word @ref175
	.byte $ff,$0e
	.word @ref174
	.byte $ff,$0e
	.word @ref175
	.byte $ff,$0e
	.word @ref174
	.byte $ff,$0e
	.word @ref175
	.byte $ff,$0e
	.word @ref174
	.byte $ff,$0e
	.word @ref175
	.byte $ff,$0e
	.word @ref174
	.byte $ff,$0e
	.word @ref175
	.byte $fd
	.word @song1ch4loop


@song2ch0:
	.byte $fb,$05
@song2ch0loop:
@ref190:
	.byte $9f
@ref191:
	.byte $9f
@ref192:
	.byte $9f
@ref193:
	.byte $9f
	.byte $fd
	.word @song2ch0loop

@song2ch1:
@song2ch1loop:
@ref194:
	.byte $9f
@ref195:
	.byte $9f
@ref196:
	.byte $9f
@ref197:
	.byte $9f
	.byte $fd
	.word @song2ch1loop

@song2ch2:
@song2ch2loop:
@ref198:
	.byte $80,$36,$83,$00,$36,$83,$00,$32,$83,$00,$34,$83,$00
@ref199:
	.byte $36,$83,$00,$36,$83,$00,$2c,$83,$00,$28,$83,$00
@ref200:
	.byte $36,$83,$00,$36,$83,$00,$32,$83,$00,$34,$83,$00
@ref201:
	.byte $36,$83,$00,$36,$83,$00,$28,$83,$2c,$28,$83,$24
	.byte $fd
	.word @song2ch2loop

@song2ch3:
@song2ch3loop:
@ref202:
	.byte $82,$16,$85,$86,$16,$83,$16,$82,$16,$85,$86,$16,$83,$16
	.byte $ff,$0a
	.word @ref202
	.byte $ff,$0a
	.word @ref202
	.byte $ff,$0a
	.word @ref202
	.byte $fd
	.word @song2ch3loop

@song2ch4:
@song2ch4loop:
@ref206:
	.byte $32,$8b,$32,$32,$85,$32,$83,$32
	.byte $ff,$08
	.word @ref206
	.byte $ff,$08
	.word @ref206
	.byte $ff,$08
	.word @ref206
	.byte $fd
	.word @song2ch4loop
