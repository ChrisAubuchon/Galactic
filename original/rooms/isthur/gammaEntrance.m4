; ---------------------------------------------------------------------------
; Actions:
;   - Kill the player if the south door is open
; ---------------------------------------------------------------------------
l_room_isthurGammaEntrance:
		ld	hl, (g_currentRoomData)
		ld	de, 0Bh
		add	hl, de				; room_t.south_room
		ld	a, (hl)
		cp	room_isthur_landingPad
		jp	nz, l_advanceClock

		ld	a, (g_wearingSuitFlag)
		cp	wearingSuit_pSuit
		jp	nz, l_inline_didntWearPSuit

		jp	l_advanceClock
