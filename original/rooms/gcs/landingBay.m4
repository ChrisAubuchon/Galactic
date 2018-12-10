; ---------------------------------------------------------------------------
; - Condition: (g_wearingSuitFlag == wearingSuit_pSuit)
;   - Condition: (g_gcsLandingBay_warning == FALSE)
;     - Actions:
;	- Set g_gcsLandingBay_warning to TRUE
;	- Move the player to the hospital
;	- Print message about bay doors being closed
;	- Subtract 30 from the score
;	- Advance time 10 ticks
;   - Condition: (g_gcsLandingBay_warning == TRUE)
;     - Print bay doors open message
;     - Kill player
; ---------------------------------------------------------------------------
l_room_gcsLandingBay:
		ifVariableEq(g_wearingSuitFlag, wearingSuit_pSuit, l_advanceClock)
		ifVariableNe(g_gcsLandingBay_warning, FALSE, loc_920)
		setVariable(g_gcsLandingBay_warning, TRUE)
		setCurrentRoom(room_gcs_hospital)
		printMessage(s_bayDoorsClosed)
		printMessage(s_thawSuccessful)
		decreaseScore(30)

		ld	b, 10
loc_916:
		call	advanceClock
		dec	b
		jp	nz, loc_916
		jp	l_mainLoopEntry
; ---------------------------------------------------------------------------

loc_920:
		printMessage(s_bayDoorsOpen)
		jp	l_inline_playerDied
