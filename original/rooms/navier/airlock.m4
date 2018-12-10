; ---------------------------------------------------------------------------
; Condition: (g_wearingSuitFlag != wearingSuit_pSuit)
;   Action: Jump to didnt wear pSuit code
; ---------------------------------------------------------------------------
l_room_navierAirlock:
		ifVariableNe(g_wearingSuitFlag, wearingSuit_pSuit, l_inline_didntWearPSuit)
		jp	l_advanceClock
