; ---------------------------------------------------------------------------
; The commandant office code performs different functions based on the high
; byte of the first_offset. The default value (HI_BYTE(s_first_cmdtOffice)
; does nothing.
;
; XXX - Revisit once the other strings are located
; ---------------------------------------------------------------------------

l_room_isthurCmdtOffice:
		ld	hl, (g_currentRoomData)
		ld	de, 6
		add	hl, de					; room_t.first_offset
		ld	a, (hl)
		cp	3Bh ; ';'
		jp	nz, loc_6F7
		ld	a, 1
		ld	(g_landing_gcs.canLandFlag), a
		ld	a, 0
		ld	(g_landing_earth.canLandFlag), a
		ld	(g_landing_isthur.canLandFlag), a
		ld	(g_landing_navier.canLandFlag), a
		ld	(g_landing_solomaw.canLandFlag), a
		ld	a, 1
		ld	(g_shipSuppliedFlag), a
		jp	l_advanceClock
; ---------------------------------------------------------------------------

loc_6F7:
		cp	47h ; 'G'
		jp	nz, loc_73B
		ld	a, 1
		ld	(g_landing_solomaw.canLandFlag), a
		ld	a, 0
		ld	(g_landing_earth.canLandFlag), a
		ld	(g_landing_isthur.canLandFlag), a
		ld	(g_landing_gcs.canLandFlag), a
		ld	(g_landing_navier.canLandFlag), a
		ld	a, 1
		ld	(g_shipSuppliedFlag), a
		ld	a, (g_currentRoomNumber)
		push	af
		ld	a, 1
		ld	(g_currentRoomNumber), a
		call	getRoomData
		ld	hl, (g_currentRoomData)
		inc	hl
		ld	a, (hl)
		or	20h ; ' '
		ld	(hl), a
		ld	de, 5
		add	hl, de
		ld	(hl), 0CAh ; 'Ê'
		inc	hl
		ld	(hl), 0
		pop	af
		ld	(g_currentRoomNumber), a
		call	getRoomData
		jp	l_advanceClock
; ---------------------------------------------------------------------------

loc_73B:
		cp	48h ; 'H'
		jp	nz, l_advanceClock
		ld	a, 1
		ld	(g_landing_earth.canLandFlag), a
		ld	a, 0
		ld	(g_landing_isthur.canLandFlag), a
		ld	(g_landing_gcs.canLandFlag), a
		ld	(g_landing_navier.canLandFlag), a
		ld	(g_landing_solomaw.canLandFlag), a
		ld	a, 1
		ld	(g_shipSuppliedFlag), a
		ld	(gameWonFlagMaybe), a
		ld	a, (g_currentRoomNumber)
		push	af
		ld	a, 1
		ld	(g_currentRoomNumber), a
		call	getRoomData
		ld	hl, (g_currentRoomData)
		inc	hl
		ld	a, (hl)
		or	20h ; ' '
		ld	(hl), a
		ld	de, 5
		add	hl, de
		ld	(hl), 0CAh ; 'Ê'
		inc	hl
		ld	(hl), 0
		ld	a, (g_currentPlanetNumber)
		push	af
		ld	a, location_earth
		ld	(g_currentPlanetNumber), a
		ld	a, 18
		ld	(g_currentRoomNumber), a
		call	getRoomData
		ld	hl, (g_currentRoomData)
		ld	de, 9
		add	hl, de
		ld	(hl), 0F7h	; Change the commander's door to unlocked.
		ld	de, 3
		add	hl, de
		ld	(hl), 13h	; Add the commander's office as an exit
		ld	de, 0Ah
		add	hl, de
		ld	(hl), 13h
		pop	af
		ld	(g_currentPlanetNumber), a
		pop	af
		ld	(g_currentRoomNumber), a
		call	getRoomData
		jp	l_advanceClock
