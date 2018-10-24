; Looks for tmpObject in g_currentRoomNumber on tmpPlanet
;
; Returns in b:
;   0 - Object not in room
;   1 - Object in room
;
; hl - &g_itemList[index].location
;
isItemInRoom:
		ld	a, (tmpObject)
		sub	p_low_item
		ld	e, a
		ld	d, 0
		ld	hl, 0
		add	hl, de
		add	hl, de
		add	hl, de
		add	hl, hl
		ex	de, hl			; de = objectNumber * 6 (sizeof object_t)
		ld	hl, g_itemList.location
		add	hl, de
		ld	a, (tmpPlanet)
		cp	(hl)
		jp	z, loc_20F2

loc_20EF:
		ld	b, 0
		ret
; ---------------------------------------------------------------------------

loc_20F2:
		cp	0
		jp	z, loc_2103
		inc	hl
		ld	a, (g_currentRoomNumber)
		cp	(hl)
		jp	z, loc_2102
		jp	loc_20EF
; ---------------------------------------------------------------------------

loc_2102:
		dec	hl

loc_2103:
		ld	b, 1
		ret
