; Perform a binary search on the vocabulary list
;
searchVocabulary:
		ld	hl, 11Ch		; Index of last vocabulary word 
		ld	(g_searchVocab_high), hl
		ld	hl, 0			; Index of first vocabulary word
		ld	(g_searchVocab_low), hl

loc_1E1D:
		ld	hl, (g_searchVocab_high)
		ex	de, hl
		ld	hl, (g_searchVocab_low)

		add	hl, de
		ld	a, h
		rra
		ld	h, a
		ld	a, l
		rra
		ld	l, a
		ld	(g_searchVocab_current), hl		; g_searchVocab_current = (high+low) / 2
		ld	de, 0FFFFh
		add	hl, de
		ex	de, hl
		ld	hl, 0
		add	hl, de
		add	hl, hl
		add	hl, hl
		add	hl, de
		add	hl, de
		ex	de, hl			; g_searchVocab_current * 10 (sizeof input_t)
		ld	hl, g_vocabulary
		add	hl, de
		ex	de, hl
		ld	hl, g_tmpAbbreviationBuffer
		call	vocabularyCmp
		ld	a, b
		cp	0
		jp	nz, loc_1E52

		; We have a match
		ld	a, (de)
		ld	(playerCommand), a
		ret
; ---------------------------------------------------------------------------

loc_1E52:
		ld	hl, (g_searchVocab_high)
		ex	de, hl
		ld	hl, (g_searchVocab_low)
		ld	a, e
		sub	l
		ld	e, a
		ld	a, d
		sbc	a, h
		cp	0
		jp	nz, loc_1E6F
		ld	a, e
		cp	2
		jp	nc, loc_1E6F
		ld	a, p_invalid
		ld	(playerCommand), a
		ret
; ---------------------------------------------------------------------------

loc_1E6F:
		ld	a, b
		cp	1
		jp	z, loc_1E7E

		; Set the upper bound to the current index
		ld	hl, (g_searchVocab_current)
		ld	(g_searchVocab_high), hl
		jp	loc_1E1D

loc_1E7E:
		; Set the lower bound to the current index
		ld	hl, (g_searchVocab_current)
		ld	(g_searchVocab_low), hl
		jp	loc_1E1D
; End of function searchVocabulary

                        db 0
                        db 0
g_searchVocab_low:      dw 0
g_searchVocab_current:  dw 0
g_searchVocab_high:     dw 0
