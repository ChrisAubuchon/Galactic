; Searches g_itemList for items where:
;	tmpPlanet = g_itemList[c].location &&
;	g_currentRoomNumber == g_itemList[c].roomNumber
;
printFloorItems:
		ld	hl, item_trochObject.location
		ld	de, 6
		ld	b, 6
		ld	c, 2

loc_1CB7:
		ld	a, (hl)
		cp	b
		call	z, sub_1D02
		dec	c
		jp	z, loc_1CC4
		add	hl, de
		jp	loc_1CB7
; ---------------------------------------------------------------------------

loc_1CC4:
		ld	a, (g_currentRoomNumber)
		cp	2
		jp	nc, loc_1CD4
		ld	a, 0
		ld	(tmpPlanet), a
		jp	loc_1CDA
; ---------------------------------------------------------------------------

loc_1CD4:
		ld	a, (g_currentPlanetNumber)
		ld	(tmpPlanet), a

loc_1CDA:
		ld	hl, g_itemList.location		; hl = &g_itemList.location
		ld	de, 6				; de = sizeof(object_t)
		ld	a, (tmpPlanet)
		ld	b, a				; b = current planet
		ld	c, 35				; c = number of items

l_printFloorItemLoop_loop:
		ld	a, (hl)				; a = g_itemList.location
		cp	b
		jp	nz, l_printFloorItemLoop_next

		cp	0
		jp	z, loc_1D35

		push	bc
		inc	hl				; hl = &g_itemList.roomNumber
		ld	b, (hl)
		dec	hl				; hl = &g_itemList.location
		ld	a, (g_currentRoomNumber)
		cp	b
		call	z, sub_1D02
		pop	bc

l_printFloorItemLoop_next:
		dec	c
		ret	z
		add	hl, de
		jp	l_printFloorItemLoop_loop

loc_1D35:
		call	sub_1D02
		jp	l_printFloorItemLoop_next


; =============== S U B	R O U T	I N E =======================================


sub_1D02:
		push	af
		push	hl
		push	de
		push	bc
		dec	hl
		dec	hl
		dec	hl
		dec	hl				; hl = &g_itemList.scoreBonus
		ld	a, (hl)
		cp	0
		jp	z, loc_1D1D
		push	hl
		ld	hl, (g_currentScore)
		call	addByteToHL
		ld	(g_currentScore), hl
		pop	hl
		ld	(hl), 0

loc_1D1D:
		inc	hl				; hl = &g_itemList.field_1
		inc	hl				; hl = &g_itemList.floorMessageIndex
		ld	a, (hl)
		sub	1
		rlca
		ld	e, a
		ld	d, 0
		ld	hl, g_item_floorMessageList
		add	hl, de
		ld	d, (hl)
		inc	hl
		ld	e, (hl)
		call	printFromMSGFile
		pop	bc
		pop	de
		pop	hl
		pop	af
		ret

