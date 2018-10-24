; ---------------------------------------------------------------------------
; Input:
;   g_currentRoomNumber
;   g_currentPlanetNumber
;
; Output:
;   g_currentRoomData
;
; Preserves all registers
; ---------------------------------------------------------------------------
getRoomData:
		call	saveAllRegisters

		; This section calculates (g_currentRoomNumber * 26) which happens
		; to be the size of the room_t structure.
		;
		ld	a, (g_currentRoomNumber)
		ld	l, a
		ld	h, 0
		ld	d, h
		ld	e, l
		add	hl, de
		add	hl, de
		add	hl, hl
		add	hl, hl
		add	hl, de
		add	hl, hl
		ex	de, hl				; de contains the offset of the
							; current room.

		ld	a, (g_currentPlanetNumber)		; a = base planet data offset
		cp	location_earth
		jp	nz, l_getRoomData_isthur
		ld	hl, g_earthRoomData
		jp	l_getRoomData_getRoom

l_getRoomData_isthur:
		cp	location_isthur
		jp	nz, l_getRoomData_gcs
		ld	hl, g_isthurRoomData
		jp	l_getRoomData_getRoom
; ---------------------------------------------------------------------------

l_getRoomData_gcs:
		cp	location_gcs
		jp	nz, l_getRoomData_navier
		ld	hl, g_gcsRoomData
		jp	l_getRoomData_getRoom
; ---------------------------------------------------------------------------

l_getRoomData_navier:
		cp	location_navier
		jp	nz, l_getRoomData_solomaw
		ld	hl, g_navierRoomData
		jp	l_getRoomData_getRoom
; ---------------------------------------------------------------------------

l_getRoomData_solomaw:
		ld	hl, g_solomawRoomData

l_getRoomData_getRoom:
		add	hl, de
		ld	(g_currentRoomData), hl
		pop	af
		pop	bc
		pop	de
		pop	hl
		ret
; End of function getRoomData
