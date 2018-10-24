; ---------------------------------------------------------------------------
; "unfold paper"
; ---------------------------------------------------------------------------
l_inline_unfoldPaper:
		ld	b, p_unfold
		ld	c, p_paper
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1C04

		ld	hl, item_pieceOfPaper.location
		ld	a, (hl)
		cp	location_inventory
		jp	nz, loc_1778

		dec	hl					; object_t.invenMessageIndex
		ld	a, (hl)
		cp	invenMsg_foldedPaper
		jp	nz, l_pickup_beyondYourPower

		ld	(hl), invenMsg_pieceOfPaper		; object_t.invenMessageIndex
		dec	hl
		ld	(hl), floorMsg_pieceOfPaper		; object_t.floorMessageIndex
		jp	l_printOkayAndLoop
