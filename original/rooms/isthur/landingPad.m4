; ---------------------------------------------------------------------------
; Actions:
;  - Kill player if not wearing p-suit
;  - Set first_offset of Gamma Entrance to cycle airlock
;  - Change north_exit of Gamma Entrance to room_isthur_nsTunnel_4
;  - Change south_exit of Gamma Entrance to Can't Go
; ---------------------------------------------------------------------------
l_room_isthurLandingPad:
		ifVariableEq(g_wearingSuitFlag, wearingSuit_pSuit, loc_64A)

l_inline_didntWearPSuit:
		printMessage(s_didntWearPSuit)
		jp	l_inline_playerDied

loc_64A:
		ld	a, (g_currentRoomNumber)
		push	af

		setCurrentRoom(room_isthur_gammaEntrance)
		call	getRoomData

		; `addCurrentRoomFlag(roomFlag_first)'
		ld	hl, (g_currentRoomData)
		inc	hl				; room_t.roomFlags
		ld	a, (hl)
		or	roomFlag_first

		; `setCurrentRoomFirstMessage(s_isthur_airlockNorthOpen)'
		ld	(hl), a
		ld	de, 5				; room_t.first_offset
		add	hl, de
		ld	(hl), HI_BYTE(s_isthur_airlockNorthOpen)
		inc	hl
		ld	(hl), LO_BYTE(s_isthur_airlockNorthOpen)

		; `setRoomInDirection(north, room_isthur_nsTunnel_4)'
		ld	de, 3
		add	hl, de				; room_t.north_offset
		ld	(hl), room_isthur_nsTunnel_4

		; `setRoomInDirection(south, room_cantGo)'
		inc	hl				; room_t.south_offset
		ld	(hl), room_cantGo

		pop	af

		ld	(g_currentRoomNumber), a
		call	getRoomData
		jp	l_advanceClock
