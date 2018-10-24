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
		ld	a, (g_wearingSuitFlag)
		cp	wearingSuit_pSuit
		jp	z, l_advanceClock

		ld	a, (g_gcsLandingBay_warning)
		cp	FALSE
		jp	nz, loc_920

		ld	a, TRUE
		ld	(g_gcsLandingBay_warning), a

		ld	a, room_gcs_hospital
		ld	(g_currentRoomNumber), a

		printMessage(s_bayDoorsClosed)
		printMessage(s_thawSuccessful)

		ld	b, 30
		call	subtractFromScore

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
