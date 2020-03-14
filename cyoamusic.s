
.export _cyoa_music_data
_cyoa_music_data:
	.byte 5
	.word @instruments
	.word @samples-3
	.word @song0ch0,@song0ch1,@song0ch2,@song0ch3,@song0ch4,307,256
	.word @song1ch0,@song1ch1,@song1ch2,@song1ch3,@song1ch4,307,256
	.word @song2ch0,@song2ch1,@song2ch2,@song2ch3,@song2ch4,307,256
	.word @song3ch0,@song3ch1,@song3ch2,@song3ch3,@song3ch4,307,256
	.word @song4ch0,@song4ch1,@song4ch2,@song4ch3,@song4ch4,307,256

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
	.byte $b0 ;instrument $07
	.word @env7,@env0,@env0
	.byte $00
	.byte $b0 ;instrument $08
	.word @env8,@env0,@env0
	.byte $00
	.byte $70 ;instrument $09
	.word @env9,@env0,@env0
	.byte $00
	.byte $b0 ;instrument $0a
	.word @env10,@env0,@env0
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
@env7:
	.byte $c4,$00,$00
@env8:
	.byte $cf,$05,$ce,$ce,$cd,$cc,$cc,$cb,$c9,$c7,$c6,$02,$c6,$00,$0c
@env9:
	.byte $cf,$03,$ce,$ce,$cd,$cb,$c9,$c8,$c6,$c4,$c3,$03,$c3,$00,$0c
@env10:
	.byte $cf,$03,$ce,$06,$cd,$03,$cc,$02,$cb,$cb,$ca,$ca,$c9,$c8,$c7,$c6
	.byte $c4,$c0,$00,$11


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


@song3ch0:
	.byte $fb,$06
@song3ch0loop:
@ref210:
	.byte $84,$42,$85,$3c,$85,$34,$85,$3c,$85,$38,$85,$32,$85,$35,$33,$2e
	.byte $85
@ref211:
	.byte $24,$85,$32,$85,$35,$33,$2e,$85,$32,$85,$38,$85,$35,$33,$2e,$85
@ref212:
	.byte $42,$85,$3c,$85,$34,$85,$3c,$85,$38,$85,$32,$85,$35,$33,$2e,$85
	.byte $ff,$10
	.word @ref211
	.byte $ff,$10
	.word @ref212
	.byte $ff,$10
	.word @ref211
	.byte $fd
	.word @song3ch0loop

@song3ch1:
@song3ch1loop:
@ref216:
	.byte $83,$8c,$42,$85,$3c,$85,$34,$85,$3c,$85,$38,$85,$32,$85,$35,$33
	.byte $2e,$81
@ref217:
	.byte $83,$24,$85,$32,$85,$35,$33,$2e,$85,$32,$85,$38,$85,$35,$33,$2e
	.byte $81
@ref218:
	.byte $83,$42,$85,$3c,$85,$34,$85,$3c,$85,$38,$85,$32,$85,$35,$33,$2e
	.byte $81
	.byte $ff,$11
	.word @ref217
	.byte $ff,$11
	.word @ref218
	.byte $ff,$11
	.word @ref217
	.byte $fd
	.word @song3ch1loop

@song3ch2:
@song3ch2loop:
@ref222:
	.byte $84,$3c,$8d,$34,$8d,$2a,$8d,$38,$8d
@ref223:
	.byte $3c,$8d,$34,$8d,$2a,$8d,$38,$8d
	.byte $ff,$08
	.word @ref223
	.byte $ff,$08
	.word @ref223
@ref226:
	.byte $88,$24,$00,$24,$00,$3d,$24,$00,$1c,$00,$1c,$00,$35,$1c,$00,$2a
	.byte $00,$2a,$00,$43,$2a,$00,$20,$00,$20,$00,$39,$20,$00
@ref227:
	.byte $24,$00,$24,$00,$3d,$24,$00,$1c,$00,$1c,$00,$35,$1c,$00,$2a,$00
	.byte $2a,$00,$43,$2a,$00,$20,$00,$20,$00,$39,$20,$00
	.byte $fd
	.word @song3ch2loop

@song3ch3:
@song3ch3loop:
@ref228:
	.byte $bf
@ref229:
	.byte $bf
@ref230:
	.byte $86,$16,$85,$16,$85,$16,$85,$17,$17,$16,$85,$16,$85,$16,$85,$17
	.byte $16,$81
@ref231:
	.byte $16,$85,$16,$85,$16,$85,$17,$17,$16,$85,$16,$85,$16,$85,$17,$16
	.byte $81
@ref232:
	.byte $bf
@ref233:
	.byte $bf
	.byte $fd
	.word @song3ch3loop

@song3ch4:
@song3ch4loop:
@ref234:
	.byte $bf
@ref235:
	.byte $bf
@ref236:
	.byte $32,$85,$32,$85,$32,$85,$32,$85,$32,$85,$32,$85,$32,$85,$32,$85
	.byte $ff,$10
	.word @ref236
@ref238:
	.byte $bf
@ref239:
	.byte $bf
	.byte $fd
	.word @song3ch4loop


@song4ch0:
	.byte $fb,$05
@song4ch0loop:
@ref240:
	.byte $8e,$33,$35,$33,$35,$37,$39,$37,$39,$33,$35,$33,$35,$37,$39,$37
	.byte $38,$00
@ref241:
	.byte $39,$3b,$39,$3b,$3d,$3f,$3d,$3f,$39,$3b,$39,$3b,$3d,$3f,$3d,$3e
	.byte $00
@ref242:
	.byte $33,$35,$33,$35,$37,$39,$37,$39,$33,$35,$33,$35,$37,$39,$37,$38
	.byte $00
	.byte $ff,$11
	.word @ref241
	.byte $ff,$11
	.word @ref242
	.byte $ff,$11
	.word @ref241
	.byte $ff,$11
	.word @ref242
	.byte $ff,$11
	.word @ref241
	.byte $ff,$11
	.word @ref242
	.byte $ff,$11
	.word @ref241
	.byte $ff,$11
	.word @ref242
	.byte $ff,$11
	.word @ref241
	.byte $ff,$11
	.word @ref242
	.byte $ff,$11
	.word @ref241
	.byte $ff,$11
	.word @ref242
	.byte $ff,$11
	.word @ref241
	.byte $fd
	.word @song4ch0loop

@song4ch1:
@song4ch1loop:
@ref256:
	.byte $90,$1a,$85,$1a,$85,$1c,$85,$1c,$85,$1a,$85,$1a,$85,$1c,$85,$1c
	.byte $85
@ref257:
	.byte $20,$85,$20,$85,$22,$85,$22,$85,$20,$85,$20,$85,$22,$85,$22,$85
@ref258:
	.byte $1a,$85,$1a,$85,$1c,$85,$1c,$85,$1a,$85,$1a,$85,$1c,$85,$1c,$85
	.byte $ff,$10
	.word @ref257
	.byte $ff,$10
	.word @ref258
	.byte $ff,$10
	.word @ref257
	.byte $ff,$10
	.word @ref258
	.byte $ff,$10
	.word @ref257
@ref264:
	.byte $92,$62,$60,$5e,$5c,$5a,$58,$56,$54,$52,$54,$56,$58,$5a,$5c,$5e
	.byte $60,$62,$60,$5e,$5c,$5a,$58,$56,$54,$52,$54,$56,$58,$5a,$5c,$5e
	.byte $60
@ref265:
	.byte $62,$60,$5e,$5c,$5a,$58,$56,$54,$52,$54,$56,$58,$5a,$5c,$5e,$60
	.byte $62,$60,$5e,$5c,$5a,$58,$56,$54,$52,$54,$56,$58,$5a,$5c,$5e,$60
	.byte $ff,$20
	.word @ref265
	.byte $ff,$20
	.word @ref265
	.byte $ff,$20
	.word @ref265
	.byte $ff,$20
	.word @ref265
	.byte $ff,$20
	.word @ref265
	.byte $ff,$20
	.word @ref265
	.byte $fd
	.word @song4ch1loop

@song4ch2:
@song4ch2loop:
@ref272:
	.byte $84,$1b,$01,$1b,$01,$1d,$01,$1d,$01,$1b,$01,$1b,$01,$1d,$01,$1d
	.byte $00,$81
@ref273:
	.byte $21,$01,$21,$01,$23,$01,$23,$01,$21,$01,$21,$01,$23,$01,$23,$00
	.byte $81
@ref274:
	.byte $1b,$01,$1b,$01,$1d,$01,$1d,$01,$1b,$01,$1b,$01,$1d,$01,$1d,$00
	.byte $81
	.byte $ff,$11
	.word @ref273
	.byte $ff,$11
	.word @ref274
	.byte $ff,$11
	.word @ref273
	.byte $ff,$11
	.word @ref274
	.byte $ff,$11
	.word @ref273
	.byte $ff,$11
	.word @ref274
	.byte $ff,$11
	.word @ref273
	.byte $ff,$11
	.word @ref274
	.byte $ff,$11
	.word @ref273
	.byte $ff,$11
	.word @ref274
	.byte $ff,$11
	.word @ref273
	.byte $ff,$11
	.word @ref274
	.byte $ff,$11
	.word @ref273
	.byte $fd
	.word @song4ch2loop

@song4ch3:
@song4ch3loop:
@ref288:
	.byte $86,$14,$85,$14,$85,$14,$85,$14,$85,$14,$85,$14,$85,$14,$85,$14
	.byte $85
@ref289:
	.byte $14,$85,$14,$85,$14,$85,$14,$85,$14,$85,$14,$85,$14,$85,$14,$85
	.byte $ff,$10
	.word @ref289
	.byte $ff,$10
	.word @ref289
@ref292:
	.byte $15,$88,$15,$86,$15,$88,$15,$86,$15,$88,$15,$86,$15,$88,$15,$86
	.byte $15,$88,$15,$86,$15,$88,$15,$86,$15,$88,$15,$86,$15,$88,$14,$81
@ref293:
	.byte $86,$15,$88,$15,$86,$15,$88,$15,$86,$15,$88,$15,$86,$15,$88,$15
	.byte $86,$15,$88,$15,$86,$15,$88,$15,$86,$15,$88,$15,$86,$15,$88,$14
	.byte $81
	.byte $ff,$11
	.word @ref293
	.byte $ff,$11
	.word @ref293
	.byte $ff,$11
	.word @ref293
	.byte $ff,$11
	.word @ref293
	.byte $ff,$11
	.word @ref293
	.byte $ff,$11
	.word @ref293
	.byte $ff,$11
	.word @ref293
	.byte $ff,$11
	.word @ref293
	.byte $ff,$11
	.word @ref293
	.byte $ff,$11
	.word @ref293
	.byte $fd
	.word @song4ch3loop

@song4ch4:
@song4ch4loop:
@ref304:
	.byte $bf
@ref305:
	.byte $bf
@ref306:
	.byte $bf
@ref307:
	.byte $bf
@ref308:
	.byte $bf
@ref309:
	.byte $bf
@ref310:
	.byte $bf
@ref311:
	.byte $bf
@ref312:
	.byte $bf
@ref313:
	.byte $bf
@ref314:
	.byte $bf
@ref315:
	.byte $bf
@ref316:
	.byte $bf
@ref317:
	.byte $bf
@ref318:
	.byte $bf
@ref319:
	.byte $bf
	.byte $fd
	.word @song4ch4loop
