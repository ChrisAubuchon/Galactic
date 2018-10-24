; ---------------------------------------------------------------------------
; Actions:
;  - Move all items in player's inventory to room_earth_campsite
;  - Change verbose description to "Empty Room"
;  - Change enter_room of Hallway 14 to be "Pirates Room" instead of 
;    "Shot by pirate"
; ---------------------------------------------------------------------------
l_room_earthPirate:
		ld	hl, g_itemList.location
		ld	de, 6				; sizeof(object_t)
		ld	c, ITEM_COUNT

l_earthPirate_moveItems:
		ld	a, (hl)
		cp	location_inventory
		call	z, moveItemToCampsite
		add	hl, de
		dec	c
		jp	nz, l_earthPirate_moveItems

		ld	hl, (g_currentRoomData)
		inc	hl
		inc	hl				; room_t.verbose_offset
		ld	(hl), HI_BYTE(s_terse_emptyRoom)
		inc	hl
		ld	(hl), LO_BYTE(s_terse_emptyRoom)
		ld	a, (g_currentRoomNumber)

		push	af
		ld	a, room_earth_hallway_14
		ld	(g_currentRoomNumber), a
		call	getRoomData
		ld	hl, (g_currentRoomData)
		ld	de, 16h				; room_t.enter_room
		add	hl, de
		ld	(hl), room_earth_pirate
		pop	af

		ld	(g_currentRoomNumber), a
		call	getRoomData
		jp	l_advanceClock

moveItemToCampsite:
		ld	(hl), location_earth 
		inc	hl
		ld	(hl), room_earth_campsite
		dec	hl
		ret
