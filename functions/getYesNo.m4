getYesNo:
		call	readString
		call	tokenizeString
		ld	a, b
		cp	1
		jp	z, loc_1F0D

loc_1F03:
		printMessage(s_pleaseAnswer)
		jp	getYesNo
; ---------------------------------------------------------------------------

loc_1F0D:
		ld	de, g_firstWord
		ld	hl, g_tmpAbbreviationBuffer
		ld	bc, 5
		call	abbreviateWord
		call	searchVocabulary
		ld	a, (playerCommand)
		cp	p_yes
		jp	z, loc_1F2C
		cp	p_no
		jp	z, loc_1F2F
		jp	loc_1F03
; ---------------------------------------------------------------------------

loc_1F2C:
		ld	a, 1
		ret
; ---------------------------------------------------------------------------

loc_1F2F:
		ld	a, 0
		ret
; End of function getYesNo
