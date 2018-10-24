; ---------------------------------------------------------------------------
; Condition: (g_wearingSuitFlag != wearingSuit_pSuit)
;   Action: Jump to didnt wear pSuit code
; ---------------------------------------------------------------------------
l_room_navierAirlock:
		ld	a, (g_wearingSuitFlag)
		cp	1
		jp	nz, l_inline_didntWearPSuit
		jp	l_advanceClock
