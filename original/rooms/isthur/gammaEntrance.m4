; ---------------------------------------------------------------------------
; Actions:
;   - Kill the player if the south door is open
; ---------------------------------------------------------------------------
l_room_isthurGammaEntrance:
		; `ifRoomInDirectionNe(room_isthur_landingPad, south, l_advanceClock)'
		ld	hl, (g_currentRoomData)
		ld	de, 0Bh
		add	hl, de				; room_t.south_room
		ld	a, (hl)
		cp	room_isthur_landingPad
		jp	nz, l_advanceClock

		ifVariableNe(g_wearingSuitFlag, wearingSuit_pSuit, l_inline_didntWearPSuit)
		jp	l_advanceClock
