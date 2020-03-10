
.export _cyoa_music_data
_cyoa_music_data:
	.byte 1
	.word @instruments
	.word @samples-3
	.word @song0ch0,@song0ch1,@song0ch2,@song0ch3,@song0ch4,307,256

@instruments:
	.byte $70 ;instrument $00
	.word @env1,@env0,@env0
	.byte $00
	.byte $b0 ;instrument $01
	.word @env2,@env0,@env0
	.byte $00
	.byte $30 ;instrument $02
	.word @env3,@env0,@env0
	.byte $00
	.byte $30 ;instrument $03
	.word @env4,@env0,@env0
	.byte $00
	.byte $30 ;instrument $04
	.word @env5,@env0,@env0
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
